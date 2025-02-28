---@meta
---@diagnostic disable

---@alias CETEventHandler fun(): void | fun(delta: number): void
---@alias CETHotkeyHandler fun(): void
---@alias CETInputHandler fun(isDown: boolean): void

---@param event string | '"onInit"' | '"onUpdate"' | '"onShutdown"' | '"onDraw"' | '"onOverlayOpen"' | '"onOverlayClose"'
---@param callback CETEventHandler | "function() end" | "function(delta) end"
function registerForEvent(event, callback) end

---@param id string
---@param description string
---@param callback CETHotkeyHandler | "function() end"
function registerHotkey(id, description, callback) end

---@param id string
---@param description string
---@param callback CETInputHandler | "function(isDown) end"
function registerInput(id, description, callback) end

---@param id string
---@return boolean
function IsBound(id) end

---@param id string
---@return string
function GetBind(id) end

---@param typeName string
---@param funcName string
---@param callback fun(): void
---@return string
function Observe(typeName, funcName, callback) end

---@param typeName string
---@param funcName string
---@param callback fun(): void
---@return string
function ObserveBefore(typeName, funcName, callback) end

---@param typeName string
---@param funcName string
---@param callback fun(): void
---@return string
function ObserveAfter(typeName, funcName, callback) end

---@param typeName string
---@param funcName string
---@param callback fun(): any
---@return string
function Override(typeName, funcName, callback) end

---@generic T
---@param typeName `T`
---@return T
function NewObject(typeName) end

---@generic T
---@param typeName `T`
---@return T
function GetSingleton(typeName) end

---@param name string
---@return any
function GetMod(name) end

---@return string
function GetVersion() end

---@return number, number
function GetDisplayResolution() end

---@param object userdata
---@return any
function GameDump(object) end

---@param object userdata
---@param detailed boolean
---@return any
function Dump(object, detailed) end

---@param name string
---@param detailed boolean
---@return any
function DumpType(name, detailed) end

function DumpAllTypeNames() end

-- Filesystem --

---@param path string
---@return table
function dir(path) end

---@param name string
---@return boolean
function ModArchiveExists(name) end

-- Logging --

spdlog = {}

---@param message string
function spdlog.trace(message) end

---@param message string
function spdlog.debug(message) end

---@param message string
function spdlog.info(message) end

---@param message string
function spdlog.warning(message) end

---@param message string
function spdlog.error(message) end

---@param message string
function spdlog.critical(message) end

-- TweakDB --

TweakDB = {}

---@param recordType string
---@return table
function TweakDB:GetRecords(recordType) end

---@param recordPath string
---@return userdata
function TweakDB:GetRecord(recordPath) end

---@param recordID TweakDBID
---@return userdata
function TweakDB:GetRecord(recordID) end

---@param queryPath string
---@return userdata
function TweakDB:Query(queryPath) end

---@param queryID TweakDBID
---@return userdata
function TweakDB:Query(queryID) end

---@param flatPath string
---@return boolean
function TweakDB:GetFlat(flatPath) end

---@param flatID TweakDBID
---@return boolean
function TweakDB:GetFlat(flatID) end

---@param flatPath string
---@param flatData userdata
---@return boolean
function TweakDB:SetFlat(flatPath, flatData) end

---@param flatID TweakDBID
---@param flatData userdata
---@return boolean
function TweakDB:SetFlat(flatID, flatData) end

---@param flatPath string
---@param flatData userdata
---@return boolean
function TweakDB:SetFlatNoUpdate(flatPath, flatData) end

---@param flatID TweakDBID
---@param flatData userdata
---@return boolean
function TweakDB:SetFlatNoUpdate(flatID, flatData) end

---@param recordPath string
---@return boolean
function TweakDB:Update(recordPath) end

---@param recordID TweakDBID
---@return boolean
function TweakDB:Update(recordID) end

---@param record userdata
---@return boolean
function TweakDB:Update(record) end

---@param recordID TweakDBID
---@param recordData table
---@return boolean
function TweakDB:SetFlats(recordID, recordData) end

---@param recordPath string
---@param recordData table
---@return boolean
function TweakDB:SetFlats(recordPath, recordData) end

---@param recordPath string
---@param recordType string
---@return boolean
function TweakDB:CreateRecord(recordPath, recordType) end

---@param recordPath string
---@param clonedPath string
---@return boolean
function TweakDB:CloneRecord(recordPath, clonedPath) end

---@param recordPath string
---@param clonedID TweakDBID
---@return boolean
function TweakDB:CloneRecord(recordPath, clonedID) end

---@param recordPath string
---@return boolean
function TweakDB:DeleteRecord(recordPath) end

-- GameOptions --

GameOptions = {}

---@param category string
---@param name string
function GameOptions.Print(category, name) end

---@param category string
---@param name string
---@return string
function GameOptions.Get(category, name) end

---@param category string
---@param name string
---@return boolean
function GameOptions.GetBool(category, name) end

---@param category string
---@param name string
---@return number
function GameOptions.GetInt(category, name) end

---@param category string
---@param name string
---@return number
function GameOptions.GetFloat(category, name) end

---@param category string
---@param name string
---@param value string
function GameOptions.Set(category, name, value) end

---@param category string
---@param name string
---@param value boolean
function GameOptions.SetBool(category, name, value) end

---@param category string
---@param name string
---@param value number
function GameOptions.SetInt(category, name, value) end

---@param category string
---@param name string
---@param value number
function GameOptions.SetFloat(category, name, value) end

---@param category string
---@param name string
function GameOptions.Toggle(category, name) end

function GameOptions.List(category) end

function GameOptions.Dump() end

-- exEntitySpawner --

exEntitySpawner = {}

---@param recordID TweakDBID|String
---@param transform WorldTransform
---@return entEntityID
function exEntitySpawner.SpawnRecord(recordID, transform) return end

---@param recordID TweakDBID|String
---@param transform WorldTransform
---@param appearance CName
---@return entEntityID
function exEntitySpawner.SpawnRecord(recordID, transform, appearance) return end

---@param entityPath string
---@param transform WorldTransform
---@return entEntityID
function exEntitySpawner.Spawn(entityPath, transform) return end

---@param entityPath string
---@param transform WorldTransform
---@param appearance CName
---@return entEntityID
function exEntitySpawner.Spawn(entityPath, transform, appearance) return end

---@param entityPath string
---@param transform WorldTransform
---@param appearance CName
---@param recordID TweakDBID|String
---@return entEntityID
function exEntitySpawner.Spawn(entityPath, transform, appearance, recordID) return end

---@param entity entEntity
function exEntitySpawner.Despawn(entity) return end
