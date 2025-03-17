EffectModule = require("effect")

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

    if ImGui.Begin('Chaos Mod', ImGuiWindowFlags.AlwaysAutoResize) then
        if not redscript or system == nil then
            ImGui.TextColored(255, 0, 0, 255, GetLocalizedTextByKey("ChaosMod-UI-Missing-Redscript"))
            ImGui.End()
            return
        end

        local config = system:GetConfig()

        -- MARK: State
        local enabled, pressed = ImGui.Checkbox(GetLocalizedTextByKey("ChaosMod-UI-Enable"), system:IsEnabled())
        if pressed then
            system:Toggle(enabled)
        end

        ImGui.Separator()

        -- MARK: Config
        -- timer duration
        local timerDuration, pressed =
            ImGui.DragFloat(GetLocalizedTextByKey("ChaosMod-UI-Timer-Duration"), config["timerDuration"], 0.01, 5, 3600,
                "%.2f")
        if ImGui.IsItemHovered() then
            ImGui.SetTooltip(GetLocalizedTextByKey("ChaosMod-UI-Timer-Duration-Desc"))
        end
        if pressed and timerDuration > 0.0 then
            config:SetTimerDuration(timerDuration)
        end
    end

    ImGui.End()
end)

---@class ChaosMod
ChaosMod = {
    RegisterEffect = EffectModule.RegisterEffect,
    ChaosTimedType = EffectModule.ChaosTimedType,
}

return ChaosMod
