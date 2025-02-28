Config = require('config')

local redscript = false
local system = nil
local isOverlayVisible = false

local configPath = "config.json"
local config = {
  timerDuration = 30
}

registerForEvent("onInit", function()
  config = Config.loadFile(configPath, config)
end)

-- onOverlayOpen
registerForEvent('onOverlayOpen', function()
  redscript = ChaosMod_IsPresent ~= nil
  if redscript then
    system = GameInstance.GetScriptableSystemsContainer():Get('ChaosMod.ChaosModSystem')
  end
  isOverlayVisible = true
end)

-- onOverlayClose
registerForEvent('onOverlayClose', function()
  isOverlayVisible = false
end)


registerForEvent('onDraw', function()
  -- bail if redscript part is available but not system
  if not isOverlayVisible or (redscript and system == nil) then
    return
  end

  if ImGui.Begin('ChaosMod', ImGuiWindowFlags.AlwaysAutoResize) then
    if not redscript or system == nil then
      ImGui.TextColored(255, 0, 0, 255, "Missing RedScript part of ChaosMod, reinstall the mod!")
      ImGui.End()
      return
    end

    local enabled = system:IsEnabled();
    local newEnabled = ImGui.Checkbox("Enable Chaos Mod", enabled)

    if newEnabled ~= enabled then
      system:Toggle(newEnabled)
    end
  end

  ImGui.End()
end)
