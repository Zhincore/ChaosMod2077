-- Stolen from https://github.com/justarandomguyintheinternet/CP77_entSpawner/blob/main/modules/utils/config.lua

Config = {}


function Config.loadFile(path, default)
  local file = io.open(path, "r")
  if file == nil then
    return default
  end

  local config = {}
  local success = pcall(function()
    config = json.decode(file:read("*a"))
  end)
  if not success then
    print("Failed to load file: " .. path .. ", restoring empty state")
  end
  file:close()
  return config
end

function Config.saveFile(path, data)
  local file = io.open(path, "w")
  local jconfig = json.encode(data)
  file:write(jconfig)
  file:close()
end

return Config
