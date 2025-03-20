-- Lua side of LuaSupportService
---@diagnostic disable: undefined-global

function RegisterSupport()
    local callbacks = {
        -- MARK: ImmersiveFirstPerson helpers
        DisableIFP = {
            args = {},
            callback = DisableIFP
        },
        EnableIFP = {
            args = {},
            callback = EnableIFP
        },
    }
    local listener = NewProxy(callbacks)

    for key, _ in pairs(callbacks) do
        CName.add(key)
        ChaosMod_LuaSupport_GetLuaSupportService():RegisterCallback(key, listener:Target(), listener:Function(key))
    end
end

-- MARK: ImmersiveFirstPerson helpers defs
function DisableIFP()
    local ifp = GetMod("ImmersiveFirstPerson")
    if ifp == nil then
        return
    end

    ifp.api.Disable();
end

function EnableIFP()
    local ifp = GetMod("ImmersiveFirstPerson")
    if ifp == nil then
        return
    end

    ifp.api.Enable();
end

return { RegisterSupport = RegisterSupport }
