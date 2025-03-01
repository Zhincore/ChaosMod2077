local redscript = false
local system = nil
local isOverlayVisible = false

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

-- onDraw
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

    local config = system:GetConfig();

    -- MARK: State
    local enabled, pressed = ImGui.Checkbox("Enable Chaos Mod", system:IsEnabled())
    if pressed then
      system:Toggle(enabled)
    end

    ImGui.Separator()

    -- MARK: Config
    -- timer duration
    local timerDuration, pressed =
        ImGui.DragFloat("Timer duration (seconds)", config["timerDuration"], 0.01, 5, 3600, "%.2f")
    if ImGui.IsItemHovered() then
      ImGui.SetTooltip("How many seconds between effects.")
    end
    if pressed and timerDuration > 0.0 then
      config:SetTimerDuration(timerDuration)
    end
  end

  ImGui.End()
end)
