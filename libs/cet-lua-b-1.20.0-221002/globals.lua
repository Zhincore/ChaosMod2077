---@meta
---@diagnostic disable

---@class Game : ScriptGameInstance
Game = {}

function Game.AIInstantiateObject() return end
AIInstantiateObject = Game.AIInstantiateObject

function Game.AIInstantiatePrototype() return end
AIInstantiatePrototype = Game.AIInstantiatePrototype

function Game.AIReleaseObject() return end
AIReleaseObject = Game.AIReleaseObject

---@param widget inkWidget
---@param atid String
function Game.AT_AddATID(widget, atid) return end
AT_AddATID = Game.AT_AddATID

---@param a Int32
---@return Int32
function Game.Abs(a) return end
Abs = Game.Abs

---@param a Float
---@return Float
function Game.AbsF(a) return end
AbsF = Game.AbsF

---@param a Float
---@return Float
function Game.AcosF(a) return end
AcosF = Game.AcosF

---@param entityID entEntityID
---@param componentName CName|string
---@param activate Bool
function Game.ActivateTickForTransformAnimator(entityID, componentName, activate) return end
ActivateTickForTransformAnimator = Game.ActivateTickForTransformAnimator

---@param target Float
---@param cur Float
---@param step Float
---@return Float
function Game.AngleApproach(target, cur, step) return end
AngleApproach = Game.AngleApproach

---@param target Float
---@param current Float
---@return Float
function Game.AngleDistance(target, current) return end
AngleDistance = Game.AngleDistance

---@param a Float
---@return Float
function Game.AngleNormalize(a) return end
AngleNormalize = Game.AngleNormalize

---@param a Float
---@return Float
function Game.AngleNormalize180(a) return end
AngleNormalize180 = Game.AngleNormalize180

---@return Bool
function Game.AreDebugContextsEnabled() return end
AreDebugContextsEnabled = Game.AreDebugContextsEnabled

---@param itemID ItemID
---@param QuickslotID Int32
function Game.ArmouryEquipWeapon(itemID, QuickslotID) return end
ArmouryEquipWeapon = Game.ArmouryEquipWeapon

function Game.ArraySortFloats() return end
ArraySortFloats = Game.ArraySortFloats

function Game.ArraySortInts() return end
ArraySortInts = Game.ArraySortInts

function Game.ArraySortStrings() return end
ArraySortStrings = Game.ArraySortStrings

---@param a Float
---@return Float
function Game.AsinF(a) return end
AsinF = Game.AsinF

---@param a Float
---@param b Float
---@return Float
function Game.AtanF(a, b) return end
AtanF = Game.AtanF

---@param value Bool
---@return String
function Game.BoolToString(value) return end
BoolToString = Game.BoolToString

---@param names CName[]|string[]
---@return inkWidgetPath
function Game.BuildWidgetPath(names) return end
BuildWidgetPath = Game.BuildWidgetPath

---@param object IScriptable
---@return Int32
function Game.CalcSeed(object) return end
CalcSeed = Game.CalcSeed

---@param id gamebbScriptID_Bool
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_EntityPtr
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_EntityID
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_EulerAngles
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Float
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Int32
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_CName
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Quaternion
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_String
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Uint32
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Variant
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Vector2
---@return gamebbScriptID
function Game.Cast(id) return end

---@param id gamebbScriptID_Vector4
---@return gamebbScriptID
function Game.Cast(id) return end

---@param a Double
---@return Bool
function Game.Cast(a) return end

---@param a Double
---@return Float
function Game.Cast(a) return end

---@param a Double
---@return Int16
function Game.Cast(a) return end

---@param a Double
---@return Int32
function Game.Cast(a) return end

---@param a Double
---@return Int64
function Game.Cast(a) return end

---@param a Double
---@return Int8
function Game.Cast(a) return end

---@param a Double
---@return Uint16
function Game.Cast(a) return end

---@param a Double
---@return Uint32
function Game.Cast(a) return end

---@param a Double
---@return Uint64
function Game.Cast(a) return end

---@param a Double
---@return Uint8
function Game.Cast(a) return end

---@param a entEntityID
---@return gamePersistentID
function Game.Cast(a) return end

---@param a entEntityID
---@return gameStatsObjectID
function Game.Cast(a) return end

---@param a Float
---@return Bool
function Game.Cast(a) return end

---@param a Float
---@return Double
function Game.Cast(a) return end

---@param a Float
---@return Int16
function Game.Cast(a) return end

---@param a Float
---@return Int32
function Game.Cast(a) return end

---@param a Float
---@return Int64
function Game.Cast(a) return end

---@param a Float
---@return Int8
function Game.Cast(a) return end

---@param a Float
---@return Uint16
function Game.Cast(a) return end

---@param a Float
---@return Uint32
function Game.Cast(a) return end

---@param a Float
---@return Uint64
function Game.Cast(a) return end

---@param a Float
---@return Uint8
function Game.Cast(a) return end

---@param a worldGlobalNodeID
---@return entEntityID
function Game.Cast(a) return end

---@param a worldGlobalNodeID
---@return worldGlobalNodeRef
function Game.Cast(a) return end

---@param a worldGlobalNodeID
---@return gamePersistentID
function Game.Cast(a) return end

---@param a worldGlobalNodeRef
---@return entEntityID
function Game.Cast(a) return end

---@param a worldGlobalNodeRef
---@return gamePersistentID
function Game.Cast(a) return end

---@param a Int16
---@return Bool
function Game.Cast(a) return end

---@param a Int16
---@return Double
function Game.Cast(a) return end

---@param a Int16
---@return Float
function Game.Cast(a) return end

---@param a Int16
---@return Int32
function Game.Cast(a) return end

---@param a Int16
---@return Int64
function Game.Cast(a) return end

---@param a Int16
---@return Int8
function Game.Cast(a) return end

---@param a Int16
---@return Uint16
function Game.Cast(a) return end

---@param a Int16
---@return Uint32
function Game.Cast(a) return end

---@param a Int16
---@return Uint64
function Game.Cast(a) return end

---@param a Int16
---@return Uint8
function Game.Cast(a) return end

---@param a Int32
---@return Bool
function Game.Cast(a) return end

---@param a Int32
---@return Double
function Game.Cast(a) return end

---@param a Int32
---@return Float
function Game.Cast(a) return end

---@param a Int32
---@return Int16
function Game.Cast(a) return end

---@param a Int32
---@return Int64
function Game.Cast(a) return end

---@param a Int32
---@return Int8
function Game.Cast(a) return end

---@param a Int32
---@return Uint16
function Game.Cast(a) return end

---@param a Int32
---@return Uint32
function Game.Cast(a) return end

---@param a Int32
---@return Uint64
function Game.Cast(a) return end

---@param a Int32
---@return Uint8
function Game.Cast(a) return end

---@param a Int64
---@return Bool
function Game.Cast(a) return end

---@param a Int64
---@return Double
function Game.Cast(a) return end

---@param a Int64
---@return Float
function Game.Cast(a) return end

---@param a Int64
---@return Int16
function Game.Cast(a) return end

---@param a Int64
---@return Int32
function Game.Cast(a) return end

---@param a Int64
---@return Int8
function Game.Cast(a) return end

---@param a Int64
---@return Uint16
function Game.Cast(a) return end

---@param a Int64
---@return Uint32
function Game.Cast(a) return end

---@param a Int64
---@return Uint64
function Game.Cast(a) return end

---@param a Int64
---@return Uint8
function Game.Cast(a) return end

---@param a Int8
---@return Bool
function Game.Cast(a) return end

---@param a Int8
---@return Double
function Game.Cast(a) return end

---@param a Int8
---@return Float
function Game.Cast(a) return end

---@param a Int8
---@return Int16
function Game.Cast(a) return end

---@param a Int8
---@return Int32
function Game.Cast(a) return end

---@param a Int8
---@return Int64
function Game.Cast(a) return end

---@param a Int8
---@return Uint16
function Game.Cast(a) return end

---@param a Int8
---@return Uint32
function Game.Cast(a) return end

---@param a Int8
---@return Uint64
function Game.Cast(a) return end

---@param a Int8
---@return Uint8
function Game.Cast(a) return end

---@param a ItemID
---@return gameStatsObjectID
function Game.Cast(a) return end

---@param a TweakDBID|string
---@return vehicleGarageVehicleID
function Game.Cast(a) return end

---@param a Uint16
---@return Bool
function Game.Cast(a) return end

---@param a Uint16
---@return Double
function Game.Cast(a) return end

---@param a Uint16
---@return Float
function Game.Cast(a) return end

---@param a Uint16
---@return Int16
function Game.Cast(a) return end

---@param a Uint16
---@return Int32
function Game.Cast(a) return end

---@param a Uint16
---@return Int64
function Game.Cast(a) return end

---@param a Uint16
---@return Int8
function Game.Cast(a) return end

---@param a Uint16
---@return Uint32
function Game.Cast(a) return end

---@param a Uint16
---@return Uint64
function Game.Cast(a) return end

---@param a Uint16
---@return Uint8
function Game.Cast(a) return end

---@param a Uint32
---@return Bool
function Game.Cast(a) return end

---@param a Uint32
---@return Double
function Game.Cast(a) return end

---@param a Uint32
---@return Float
function Game.Cast(a) return end

---@param a Uint32
---@return Int16
function Game.Cast(a) return end

---@param a Uint32
---@return Int32
function Game.Cast(a) return end

---@param a Uint32
---@return Int64
function Game.Cast(a) return end

---@param a Uint32
---@return Int8
function Game.Cast(a) return end

---@param a Uint32
---@return Uint16
function Game.Cast(a) return end

---@param a Uint32
---@return Uint64
function Game.Cast(a) return end

---@param a Uint32
---@return Uint8
function Game.Cast(a) return end

---@param a Uint64
---@return Bool
function Game.Cast(a) return end

---@param a Uint64
---@return Double
function Game.Cast(a) return end

---@param a Uint64
---@return Float
function Game.Cast(a) return end

---@param a Uint64
---@return Int16
function Game.Cast(a) return end

---@param a Uint64
---@return Int32
function Game.Cast(a) return end

---@param a Uint64
---@return Int64
function Game.Cast(a) return end

---@param a Uint64
---@return Int8
function Game.Cast(a) return end

---@param a Uint64
---@return Uint16
function Game.Cast(a) return end

---@param a Uint64
---@return Uint32
function Game.Cast(a) return end

---@param a Uint64
---@return Uint8
function Game.Cast(a) return end

---@param a Uint8
---@return Bool
function Game.Cast(a) return end

---@param a Uint8
---@return Double
function Game.Cast(a) return end

---@param a Uint8
---@return Float
function Game.Cast(a) return end

---@param a Uint8
---@return Int16
function Game.Cast(a) return end

---@param a Uint8
---@return Int32
function Game.Cast(a) return end

---@param a Uint8
---@return Int64
function Game.Cast(a) return end

---@param a Uint8
---@return Int8
function Game.Cast(a) return end

---@param a Uint8
---@return Uint16
function Game.Cast(a) return end

---@param a Uint8
---@return Uint32
function Game.Cast(a) return end

---@param a Uint8
---@return Uint64
function Game.Cast(a) return end

---@param a Vector3
---@return Vector4
function Game.Cast(a) return end

---@param a Vector4
---@return Vector3
function Game.Cast(a) return end

---@param a Float
---@return Int32
function Game.CeilF(a) return end
CeilF = Game.CeilF

---@param v Int32
---@param min Int32
---@param max Int32
---@return Int32
function Game.Clamp(v, min, max) return end
Clamp = Game.Clamp

---@param v Float
---@param min Float
---@param max Float
---@return Float
function Game.ClampF(v, min, max) return end
ClampF = Game.ClampF

---@param arr1 CName[]|string[]
---@param arr2 CName[]|string[]
---@return Bool
function Game.CompareArrayNameContents(arr1, arr2) return end
CompareArrayNameContents = Game.CompareArrayNameContents

---@param a Float
---@return Float
function Game.CosF(a) return end
CosF = Game.CosF

---@param nodeRefString String
---@param communityEntryNames CName[]|string[]
---@return gameEntityReference
function Game.CreateEntityReference(nodeRefString, communityEntryNames) return end
CreateEntityReference = Game.CreateEntityReference

---@param entityID entEntityID
---@param componentName CName|string
---@return gamePersistentID
function Game.CreatePersistentID(entityID, componentName) return end
CreatePersistentID = Game.CreatePersistentID

function Game.DebugBreak() return end
DebugBreak = Game.DebugBreak

---@param deg Float
---@return Float
function Game.Deg2Rad(deg) return end
Deg2Rad = Game.Deg2Rad

---@param baseClass CName|string
---@return Bool
function Game.DumpClassHierarchy(baseClass) return end
DumpClassHierarchy = Game.DumpClassHierarchy

---@param message String
---@return Bool
function Game.EnsureFailure(message) return end
EnsureFailure = Game.EnsureFailure

---@param type CName|string
---@return Int64
function Game.EnumGetMax(type) return end
EnumGetMax = Game.EnumGetMax

---@param type CName|string
---@return Int64
function Game.EnumGetMin(type) return end
EnumGetMin = Game.EnumGetMin

---@param enumName CName|string
---@param enumValue CName|string
---@return Int64
function Game.EnumValueFromName(enumName, enumValue) return end
EnumValueFromName = Game.EnumValueFromName

---@param enumStr String
---@param enumValue String
---@return Int64
function Game.EnumValueFromString(enumStr, enumValue) return end
EnumValueFromString = Game.EnumValueFromString

---@param enumName CName|string
---@param enumValue Int64
---@return CName
function Game.EnumValueToName(enumName, enumValue) return end
EnumValueToName = Game.EnumValueToName

---@param enumStr String
---@param enumValue Int64
---@return String
function Game.EnumValueToString(enumStr, enumValue) return end
EnumValueToString = Game.EnumValueToString

---@param itemID ItemID
---@param quickSlotID Int32
function Game.EquipPickableItemOnClient(itemID, quickSlotID) return end
EquipPickableItemOnClient = Game.EquipPickableItemOnClient

---@param a Float
---@return Float
function Game.ExpF(a) return end
ExpF = Game.ExpF

---@param value String
function Game.FTLog(value) return end
FTLog = Game.FTLog

---@param value String
function Game.FTLogError(value) return end
FTLogError = Game.FTLogError

---@param value String
function Game.FTLogWarning(value) return end
FTLogWarning = Game.FTLogWarning

---@param value Float
---@return String
function Game.FloatToString(value) return end
FloatToString = Game.FloatToString

---@param value Float
---@param precision Int32
---@return String
function Game.FloatToStringPrec(value, precision) return end
FloatToStringPrec = Game.FloatToStringPrec

---@param a Float
---@return Int32
function Game.FloorF(a) return end
FloorF = Game.FloorF

---@param error gameOnlineSystemErrors
---@return String
function Game.GOGRewardSystemErrorToDisplayString(error) return end
GOGRewardSystemErrorToDisplayString = Game.GOGRewardSystemErrorToDisplayString

function Game.GameTimeIntervalContainsTime() return end
GameTimeIntervalContainsTime = Game.GameTimeIntervalContainsTime

---@return gamebbAllScriptDefinitions
function Game.GetAllBlackboardDefs() return end
GetAllBlackboardDefs = Game.GetAllBlackboardDefs

---@param puppetRef gameEntityReference
---@return entEntityID[]
function Game.GetFixedEntityIdsFromEntityReference(puppetRef) return end
GetFixedEntityIdsFromEntityReference = Game.GetFixedEntityIdsFromEntityReference

---@param entityID entEntityID
---@param communityEntryNames CName[]|string[]
---@return entEntityID[]
function Game.GetFixedEntityIdsFromSpawnerEntityID(entityID, communityEntryNames) return end
GetFixedEntityIdsFromSpawnerEntityID = Game.GetFixedEntityIdsFromSpawnerEntityID

---@return ScriptGameInstance
function Game.GetGameInstance() return end
GetGameInstance = Game.GetGameInstance

---@param entityID entEntityID
---@param communityEntryNames CName[]|string[]
---@return gameObject[]
function Game.GetGameObjectsFromSpawnerEntityID(entityID, communityEntryNames) return end
GetGameObjectsFromSpawnerEntityID = Game.GetGameObjectsFromSpawnerEntityID

---@param hashKey CName|string
---@return String
function Game.GetLocalizedItemNameByCName(hashKey) return end
GetLocalizedItemNameByCName = Game.GetLocalizedItemNameByCName

---@param hashKey CName|string
---@return String
function Game.GetLocalizedItemNameByString(hashKey) return end
GetLocalizedItemNameByString = Game.GetLocalizedItemNameByString

---@param textKey String
---@return String
function Game.GetLocalizedText(textKey) return end
GetLocalizedText = Game.GetLocalizedText

---@param hashKey CName|string
---@return String
function Game.GetLocalizedTextByKey(hashKey) return end
GetLocalizedTextByKey = Game.GetLocalizedTextByKey

---@param textKey String
---@param variantIsFemale Bool
---@return String
function Game.GetLocalizedTextGanderDepened(textKey, variantIsFemale) return end
GetLocalizedTextGanderDepened = Game.GetLocalizedTextGanderDepened

---@param hashKey CName|string
---@param variantIsFemale Bool
---@return String
function Game.GetLocalizedTextGanderDepenedByKey(hashKey, variantIsFemale) return end
GetLocalizedTextGanderDepenedByKey = Game.GetLocalizedTextGanderDepenedByKey

---@param limitType animLookAtLimitDegreesType
---@return Float
function Game.GetLookAtLimitDegreesValue(limitType) return end
GetLookAtLimitDegreesValue = Game.GetLookAtLimitDegreesValue

---@param limitType animLookAtLimitDistanceType
---@return Float
function Game.GetLookAtLimitDistanceValue(limitType) return end
GetLookAtLimitDistanceValue = Game.GetLookAtLimitDistanceValue

---@param softLimitDegreesType animLookAtLimitDegreesType
---@param hardLimitDegreesType animLookAtLimitDegreesType
---@param hardLimitDistanceType animLookAtLimitDistanceType
---@param backLimitDegreesType animLookAtLimitDegreesType
---@return animLookAtLimits
function Game.GetLookAtLimits(softLimitDegreesType, hardLimitDegreesType, hardLimitDistanceType, backLimitDegreesType) return end
GetLookAtLimits = Game.GetLookAtLimits

---@param status animLookAtStatus
---@param currentStatus Float
---@return Bool
function Game.GetLookAtStatus(status, currentStatus) return end
GetLookAtStatus = Game.GetLookAtStatus

---@param style animLookAtStyle
---@return Float
function Game.GetLookAtTransitionSpeed(style) return end
GetLookAtTransitionSpeed = Game.GetLookAtTransitionSpeed

---@return String
function Game.GetPlatformShortName() return end
GetPlatformShortName = Game.GetPlatformShortName

function Game.GetQueryMask() return end
GetQueryMask = Game.GetQueryMask

function Game.GetQueryMaskAll() return end
GetQueryMaskAll = Game.GetQueryMaskAll

function Game.GetQueryMaskNONE() return end
GetQueryMaskNONE = Game.GetQueryMaskNONE

---@param widget inkWidget
---@return RectF
function Game.GetScreenPosition(widget) return end
GetScreenPosition = Game.GetScreenPosition

function Game.Int8ToInt() return end
Int8ToInt = Game.Int8ToInt

function Game.IntToInt8() return end
IntToInt8 = Game.IntToInt8

---@param value Int32
---@return String
function Game.IntToString(value) return end
IntToString = Game.IntToString

function Game.IntToUint64() return end
IntToUint64 = Game.IntToUint64

---@return Bool
function Game.IsClient() return end
IsClient = Game.IsClient

---@param entity entEntity
---@return Bool
function Game.IsEntityInInteriorArea(entity) return end
IsEntityInInteriorArea = Game.IsEntityInInteriorArea

---@return Bool
function Game.IsFinal() return end
IsFinal = Game.IsFinal

---@return Bool
function Game.IsHost() return end
IsHost = Game.IsHost

---@param language CName|string
---@return Bool
function Game.IsLanguageVoicePackInstalled(language) return end
IsLanguageVoicePackInstalled = Game.IsLanguageVoicePackInstalled

---@return Bool
function Game.IsMultiplayer() return end
IsMultiplayer = Game.IsMultiplayer

---@param n CName|string
---@return Bool
function Game.IsNameValid(n) return end
IsNameValid = Game.IsNameValid

---@return Bool
function Game.IsNoInputIconsModeEnabled() return end
IsNoInputIconsModeEnabled = Game.IsNoInputIconsModeEnabled

---@param id NodeRef
---@return Bool
function Game.IsNodeRefDefined(id) return end
IsNodeRefDefined = Game.IsNodeRefDefined

---@return Bool
function Game.IsServer() return end
IsServer = Game.IsServer

---@return Bool
function Game.IsSingleplayer() return end
IsSingleplayer = Game.IsSingleplayer

---@param value String
---@return Bool
function Game.IsStringNumber(value) return end
IsStringNumber = Game.IsStringNumber

---@param n String
---@return Bool
function Game.IsStringValid(n) return end
IsStringValid = Game.IsStringValid

---@param alpha Float
---@param a Float
---@param b Float
---@param clamp Bool
---@return Float
function Game.LerpF(alpha, a, b, clamp) return end
LerpF = Game.LerpF

function Game.LoadResource() return end
LoadResource = Game.LoadResource

function Game.LoadResourceAsync() return end
LoadResourceAsync = Game.LoadResourceAsync

---@param hashKey CName|string
---@return String
function Game.LocKeyToString(hashKey) return end
LocKeyToString = Game.LocKeyToString

---@param text String
function Game.Log(text) return end
Log = Game.Log

---@param channel CName|string
---@param text String
function Game.LogChannel(channel, text) return end
LogChannel = Game.LogChannel

---@param channel CName|string
---@param text String
function Game.LogChannelError(channel, text) return end
LogChannelError = Game.LogChannelError

---@param channel CName|string
---@param text String
function Game.LogChannelWarning(channel, text) return end
LogChannelWarning = Game.LogChannelWarning

---@param text String
function Game.LogError(text) return end
LogError = Game.LogError

---@param a Float
---@return Float
function Game.LogF(a) return end
LogF = Game.LogF

---@param text String
function Game.LogWarning(text) return end
LogWarning = Game.LogWarning

---@param message String
---@param senderID netPeerID
function Game.MP(message, senderID) return end
MP.AddChat = Game.MP.AddChat

---@param killerID netPeerID
---@param victimID netPeerID
function Game.MP(killerID, victimID) return end
MP.Deathmatch.DebugMessageKill = Game.MP.Deathmatch.DebugMessageKill

---@param oldName String
---@param newName String
function Game.MP(oldName, newName) return end
MP.Deathmatch.DebugMessageNameChanged = Game.MP.Deathmatch.DebugMessageNameChanged

---@param oldName String
---@param newName String
function Game.MP(oldName, newName) return end
MP.Heist.DebugMessageNameChanged = Game.MP.Heist.DebugMessageNameChanged

---@param peerID netPeerID
function Game.MP(peerID) return end
MP.Heist.MessagePlayerReady = Game.MP.Heist.MessagePlayerReady

---@param peerID netPeerID
---@param characterRecordID TweakDBID|string
function Game.MP(peerID, characterRecordID) return end
MP.Heist.SetPlayerCharacterClass = Game.MP.Heist.SetPlayerCharacterClass

---@param message String
function Game.MP(message) return end
MP.SendChat = Game.MP.SendChat

---@param data gamePopupData
---@param settings gamePopupSettings
---@param visible Bool
function Game.MPChangeMessageBoxValues(data, settings, visible) return end
MPChangeMessageBoxValues = Game.MPChangeMessageBoxValues

---@param text String
---@param duration Float
---@param color Color
function Game.MPDisplayNarrationEventEntry(text, duration, color) return end
MPDisplayNarrationEventEntry = Game.MPDisplayNarrationEventEntry

---@param duration Float
---@param message String
---@param display Bool
function Game.MPDisplayOnscreenMessage(duration, message, display) return end
MPDisplayOnscreenMessage = Game.MPDisplayOnscreenMessage

---@param duration Float
---@param message String
---@param display Bool
function Game.MPDisplayWarningMessage(duration, message, display) return end
MPDisplayWarningMessage = Game.MPDisplayWarningMessage

---@param itemID ItemID
---@param QuickslotID Int32
function Game.MPEquipWeapon(itemID, QuickslotID) return end
MPEquipWeapon = Game.MPEquipWeapon

---@param position Vector4
---@param instigator gameObject
function Game.MPReplicateComboAttack(position, instigator) return end
MPReplicateComboAttack = Game.MPReplicateComboAttack

---@param a Int32
---@param b Int32
---@return Int32
function Game.Max(a, b) return end
Max = Game.Max

---@param a Float
---@param b Float
---@return Float
function Game.MaxF(a, b) return end
MaxF = Game.MaxF

---@param a Int32
---@param b Int32
---@return Int32
function Game.Min(a, b) return end
Min = Game.Min

---@param a Float
---@param b Float
---@return Float
function Game.MinF(a, b) return end
MinF = Game.MinF

---@param n CName|string
---@return String
function Game.NameToString(n) return end
NameToString = Game.NameToString

---@param a Bool
---@param b String
---@return String
function Game.OperatorAdd(a, b) return end

---@param a CName|string
---@param b CName|string
---@return CName
function Game.OperatorAdd(a, b) return end

---@param a Double
---@param b Double
---@return Double
function Game.OperatorAdd(a, b) return end

function Game.OperatorAdd() return end

---@param a EngineTime
---@param b EngineTime
---@return EngineTime
function Game.OperatorAdd(a, b) return end

---@param a EngineTime
---@param b Float
---@return EngineTime
function Game.OperatorAdd(a, b) return end

---@param a Float
---@param b Float
---@return Float
function Game.OperatorAdd(a, b) return end

---@param a Float
---@param b String
---@return String
function Game.OperatorAdd(a, b) return end

---@param a GameTime
---@param b GameTime
---@return GameTime
function Game.OperatorAdd(a, b) return end

---@param a GameTime
---@param b Int32
---@return GameTime
function Game.OperatorAdd(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorAdd(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorAdd(a, b) return end

---@param a Int32
---@param b String
---@return String
function Game.OperatorAdd(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorAdd(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorAdd(a, b) return end

---@param a Quaternion
---@param b Quaternion
---@return Quaternion
function Game.OperatorAdd(a, b) return end

---@param a String
---@param b Bool
---@return String
function Game.OperatorAdd(a, b) return end

function Game.OperatorAdd() return end

---@param a String
---@param b Float
---@return String
function Game.OperatorAdd(a, b) return end

---@param a String
---@param b Int32
---@return String
function Game.OperatorAdd(a, b) return end

---@param a String
---@param b String
---@return String
function Game.OperatorAdd(a, b) return end

function Game.OperatorAdd() return end

---@param a TweakDBID|string
---@param b TweakDBID|string
---@return TweakDBID
function Game.OperatorAdd(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorAdd(a, b) return end

function Game.OperatorAdd() return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorAdd(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorAdd(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorAdd(a, b) return end

---@param a Vector4
---@param b Float
---@return Vector4
function Game.OperatorAdd(a, b) return end

---@param a Vector4
---@param b Vector4
---@return Vector4
function Game.OperatorAdd(a, b) return end

---@param a WorldPosition
---@param b Vector4
---@return WorldPosition
function Game.OperatorAdd(a, b) return end

---@param a WorldPosition
---@param b WorldPosition
---@return WorldPosition
function Game.OperatorAdd(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorAnd(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorAnd(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorAnd(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorAnd(a, b) return end

---@param a gametargetingSystemSearchFilterMaskValue
---@param b gametargetingSystemSearchFilterMaskValue
---@return gametargetingSystemSearchFilterMaskValue
function Game.OperatorAnd(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorAnd(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorAnd(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorAnd(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorAnd(a, b) return end

---@param b Float
---@return gameDamage, gameDamage
function Game.OperatorAssignAdd(b) return end

---@param b Double
---@return Double, Double
function Game.OperatorAssignAdd(b) return end

---@param b EngineTime
---@return EngineTime, EngineTime
function Game.OperatorAssignAdd(b) return end

---@param b Float
---@return EngineTime, EngineTime
function Game.OperatorAssignAdd(b) return end

---@param b Float
---@return Float, Float
function Game.OperatorAssignAdd(b) return end

---@param b GameTime
---@return GameTime, GameTime
function Game.OperatorAssignAdd(b) return end

---@param b Int32
---@return GameTime, GameTime
function Game.OperatorAssignAdd(b) return end

---@param b Int16
---@return Int16, Int16
function Game.OperatorAssignAdd(b) return end

---@param b Int32
---@return Int32, Int32
function Game.OperatorAssignAdd(b) return end

---@param b Int64
---@return Int64, Int64
function Game.OperatorAssignAdd(b) return end

---@param b Int8
---@return Int8, Int8
function Game.OperatorAssignAdd(b) return end

---@param b Quaternion
---@return Quaternion, Quaternion
function Game.OperatorAssignAdd(b) return end

---@param b TweakDBID|string
---@return TweakDBID, TweakDBID
function Game.OperatorAssignAdd(b) return end

---@param b Uint16
---@return Uint16, Uint16
function Game.OperatorAssignAdd(b) return end

---@param b Uint32
---@return Uint32, Uint32
function Game.OperatorAssignAdd(b) return end

---@param b Uint64
---@return Uint64, Uint64
function Game.OperatorAssignAdd(b) return end

---@param b Uint8
---@return Uint8, Uint8
function Game.OperatorAssignAdd(b) return end

---@param b Float
---@return Vector4, Vector4
function Game.OperatorAssignAdd(b) return end

---@param b Vector4
---@return Vector4, Vector4
function Game.OperatorAssignAdd(b) return end

---@param b Vector4
---@return WorldPosition, WorldPosition
function Game.OperatorAssignAdd(b) return end

---@param b WorldPosition
---@return WorldPosition, WorldPosition
function Game.OperatorAssignAdd(b) return end

---@param a String
---@param b String
---@return String
function Game.OperatorAssignAdd(a, b) return end

---@param b Int16
---@return Int16, Int16
function Game.OperatorAssignAnd(b) return end

---@param b Int32
---@return Int32, Int32
function Game.OperatorAssignAnd(b) return end

---@param b Int64
---@return Int64, Int64
function Game.OperatorAssignAnd(b) return end

---@param b Int8
---@return Int8, Int8
function Game.OperatorAssignAnd(b) return end

---@param b Uint16
---@return Uint16, Uint16
function Game.OperatorAssignAnd(b) return end

---@param b Uint32
---@return Uint32, Uint32
function Game.OperatorAssignAnd(b) return end

---@param b Uint64
---@return Uint64, Uint64
function Game.OperatorAssignAnd(b) return end

---@param b Uint8
---@return Uint8, Uint8
function Game.OperatorAssignAnd(b) return end

---@param b Double
---@return Double, Double
function Game.OperatorAssignDivide(b) return end

---@param b Float
---@return EngineTime, EngineTime
function Game.OperatorAssignDivide(b) return end

---@param b Float
---@return Float, Float
function Game.OperatorAssignDivide(b) return end

---@param b Float
---@return GameTime, GameTime
function Game.OperatorAssignDivide(b) return end

---@param b Int16
---@return Int16, Int16
function Game.OperatorAssignDivide(b) return end

---@param b Int32
---@return Int32, Int32
function Game.OperatorAssignDivide(b) return end

---@param b Int64
---@return Int64, Int64
function Game.OperatorAssignDivide(b) return end

---@param b Int8
---@return Int8, Int8
function Game.OperatorAssignDivide(b) return end

---@param b Float
---@return Quaternion, Quaternion
function Game.OperatorAssignDivide(b) return end

---@param b Uint16
---@return Uint16, Uint16
function Game.OperatorAssignDivide(b) return end

---@param b Uint32
---@return Uint32, Uint32
function Game.OperatorAssignDivide(b) return end

---@param b Uint64
---@return Uint64, Uint64
function Game.OperatorAssignDivide(b) return end

---@param b Uint8
---@return Uint8, Uint8
function Game.OperatorAssignDivide(b) return end

---@param b Float
---@return Vector4, Vector4
function Game.OperatorAssignDivide(b) return end

---@param b Vector4
---@return Vector4, Vector4
function Game.OperatorAssignDivide(b) return end

---@param b gameDamage
---@return gameDamage, gameDamage
function Game.OperatorAssignMultiply(b) return end

---@param b Float
---@return gameDamage, gameDamage
function Game.OperatorAssignMultiply(b) return end

function Game.OperatorAssignMultiply() return end

---@param b Double
---@return Double, Double
function Game.OperatorAssignMultiply(b) return end

---@param b Float
---@return EngineTime, EngineTime
function Game.OperatorAssignMultiply(b) return end

---@param b Float
---@return Float, Float
function Game.OperatorAssignMultiply(b) return end

---@param b Float
---@return GameTime, GameTime
function Game.OperatorAssignMultiply(b) return end

---@param b Int16
---@return Int16, Int16
function Game.OperatorAssignMultiply(b) return end

---@param b Int32
---@return Int32, Int32
function Game.OperatorAssignMultiply(b) return end

---@param b Int64
---@return Int64, Int64
function Game.OperatorAssignMultiply(b) return end

---@param b Int8
---@return Int8, Int8
function Game.OperatorAssignMultiply(b) return end

---@param b Matrix
---@return Matrix, Matrix
function Game.OperatorAssignMultiply(b) return end

---@param b Float
---@return Quaternion, Quaternion
function Game.OperatorAssignMultiply(b) return end

---@param b Quaternion
---@return Quaternion, Quaternion
function Game.OperatorAssignMultiply(b) return end

---@param b Uint16
---@return Uint16, Uint16
function Game.OperatorAssignMultiply(b) return end

---@param b Uint32
---@return Uint32, Uint32
function Game.OperatorAssignMultiply(b) return end

---@param b Uint64
---@return Uint64, Uint64
function Game.OperatorAssignMultiply(b) return end

---@param b Uint8
---@return Uint8, Uint8
function Game.OperatorAssignMultiply(b) return end

---@param b Float
---@return Vector4, Vector4
function Game.OperatorAssignMultiply(b) return end

---@param b Vector4
---@return Vector4, Vector4
function Game.OperatorAssignMultiply(b) return end

---@param b Int16
---@return Int16, Int16
function Game.OperatorAssignOr(b) return end

---@param b Int32
---@return Int32, Int32
function Game.OperatorAssignOr(b) return end

---@param b Int64
---@return Int64, Int64
function Game.OperatorAssignOr(b) return end

---@param b Int8
---@return Int8, Int8
function Game.OperatorAssignOr(b) return end

---@param b Uint16
---@return Uint16, Uint16
function Game.OperatorAssignOr(b) return end

---@param b Uint32
---@return Uint32, Uint32
function Game.OperatorAssignOr(b) return end

---@param b Uint64
---@return Uint64, Uint64
function Game.OperatorAssignOr(b) return end

---@param b Uint8
---@return Uint8, Uint8
function Game.OperatorAssignOr(b) return end

---@param b Double
---@return Double, Double
function Game.OperatorAssignSubtract(b) return end

---@param b EngineTime
---@return EngineTime, EngineTime
function Game.OperatorAssignSubtract(b) return end

---@param b Float
---@return EngineTime, EngineTime
function Game.OperatorAssignSubtract(b) return end

---@param b Float
---@return Float, Float
function Game.OperatorAssignSubtract(b) return end

---@param b GameTime
---@return GameTime, GameTime
function Game.OperatorAssignSubtract(b) return end

---@param b Int32
---@return GameTime, GameTime
function Game.OperatorAssignSubtract(b) return end

---@param b Int16
---@return Int16, Int16
function Game.OperatorAssignSubtract(b) return end

---@param b Int32
---@return Int32, Int32
function Game.OperatorAssignSubtract(b) return end

---@param b Int64
---@return Int64, Int64
function Game.OperatorAssignSubtract(b) return end

---@param b Int8
---@return Int8, Int8
function Game.OperatorAssignSubtract(b) return end

---@param b Quaternion
---@return Quaternion, Quaternion
function Game.OperatorAssignSubtract(b) return end

---@param b Uint16
---@return Uint16, Uint16
function Game.OperatorAssignSubtract(b) return end

---@param b Uint32
---@return Uint32, Uint32
function Game.OperatorAssignSubtract(b) return end

---@param b Uint64
---@return Uint64, Uint64
function Game.OperatorAssignSubtract(b) return end

---@param b Uint8
---@return Uint8, Uint8
function Game.OperatorAssignSubtract(b) return end

---@param b Float
---@return Vector4, Vector4
function Game.OperatorAssignSubtract(b) return end

---@param b Vector4
---@return Vector4, Vector4
function Game.OperatorAssignSubtract(b) return end

---@param b Vector4
---@return WorldPosition, WorldPosition
function Game.OperatorAssignSubtract(b) return end

---@param b WorldPosition
---@return WorldPosition, WorldPosition
function Game.OperatorAssignSubtract(b) return end

---@param a Int16
---@return Int16
function Game.OperatorBitNot(a) return end

---@param a Int32
---@return Int32
function Game.OperatorBitNot(a) return end

---@param a Int64
---@return Int64
function Game.OperatorBitNot(a) return end

---@param a Int8
---@return Int8
function Game.OperatorBitNot(a) return end

---@param a Uint16
---@return Uint16
function Game.OperatorBitNot(a) return end

---@param a Uint32
---@return Uint32
function Game.OperatorBitNot(a) return end

---@param a Uint64
---@return Uint64
function Game.OperatorBitNot(a) return end

---@param a Uint8
---@return Uint8
function Game.OperatorBitNot(a) return end

---@param a Double
---@param b Double
---@return Double
function Game.OperatorDivide(a, b) return end

---@param a EngineTime
---@param b Float
---@return EngineTime
function Game.OperatorDivide(a, b) return end

---@param a Float
---@param b Float
---@return Float
function Game.OperatorDivide(a, b) return end

---@param a GameTime
---@param b Float
---@return GameTime
function Game.OperatorDivide(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorDivide(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorDivide(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorDivide(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorDivide(a, b) return end

---@param a Quaternion
---@param b Float
---@return Quaternion
function Game.OperatorDivide(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorDivide(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorDivide(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorDivide(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorDivide(a, b) return end

---@param a Vector4
---@param b Float
---@return Vector4
function Game.OperatorDivide(a, b) return end

---@param a Vector4
---@param b Vector4
---@return Vector4
function Game.OperatorDivide(a, b) return end

---@param a gameDelayID
---@param b gameDelayID
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Double
---@param b Double
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a entEntityID
---@param b entEntityID
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Float
---@param b Float
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a GameTime
---@param b GameTime
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a IScriptable
---@param b IScriptable
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Int16
---@param b Int16
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Int32
---@param b Int32
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Int64
---@param b Int64
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Int8
---@param b Int8
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a ItemID
---@param b ItemID
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a TweakDBID|string
---@param b TweakDBID|string
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Bool
function Game.OperatorEqual(a, b) return end

---@param a Double
---@param b Double
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a EngineTime
---@param b Float
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Float
---@param b Float
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a GameTime
---@param b GameTime
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Int16
---@param b Int16
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Int32
---@param b Int32
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Int64
---@param b Int64
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Int8
---@param b Int8
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Bool
function Game.OperatorGreater(a, b) return end

---@param a Double
---@param b Double
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a EngineTime
---@param b Float
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Float
---@param b Float
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a GameTime
---@param b GameTime
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Int16
---@param b Int16
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Int32
---@param b Int32
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Int64
---@param b Int64
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Int8
---@param b Int8
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Bool
function Game.OperatorGreaterEqual(a, b) return end

---@param a Double
---@param b Double
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a EngineTime
---@param b Float
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a entEntityID
---@param b entEntityID
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Float
---@param b Float
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a GameTime
---@param b GameTime
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Int16
---@param b Int16
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Int32
---@param b Int32
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Int64
---@param b Int64
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Int8
---@param b Int8
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Bool
function Game.OperatorLess(a, b) return end

---@param a Double
---@param b Double
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a EngineTime
---@param b Float
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Float
---@param b Float
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a GameTime
---@param b GameTime
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Int16
---@param b Int16
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Int32
---@param b Int32
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Int64
---@param b Int64
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Int8
---@param b Int8
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Bool
function Game.OperatorLessEqual(a, b) return end

---@param a Bool
---@param b Bool
---@return Bool
function Game.OperatorLogicAnd(a, b) return end

---@param a Bool
---@return Bool
function Game.OperatorLogicNot(a) return end

---@param a Bool
---@param b Bool
---@return Bool
function Game.OperatorLogicOr(a, b) return end

---@param a Double
---@param b Double
---@return Double
function Game.OperatorModulo(a, b) return end

---@param a Float
---@param b Float
---@return Float
function Game.OperatorModulo(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorModulo(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorModulo(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorModulo(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorModulo(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorModulo(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorModulo(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorModulo(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorModulo(a, b) return end

---@param a Double
---@param b Double
---@return Double
function Game.OperatorMultiply(a, b) return end

---@param a EngineTime
---@param b Float
---@return EngineTime
function Game.OperatorMultiply(a, b) return end

---@param a Float
---@param b Float
---@return Float
function Game.OperatorMultiply(a, b) return end

---@param a Float
---@param b Vector4
---@return Vector4
function Game.OperatorMultiply(a, b) return end

---@param a GameTime
---@param b Float
---@return GameTime
function Game.OperatorMultiply(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorMultiply(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorMultiply(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorMultiply(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorMultiply(a, b) return end

---@param a Matrix
---@param b Matrix
---@return Matrix
function Game.OperatorMultiply(a, b) return end

---@param a Quaternion
---@param b Float
---@return Quaternion
function Game.OperatorMultiply(a, b) return end

---@param a Quaternion
---@param b Quaternion
---@return Quaternion
function Game.OperatorMultiply(a, b) return end

---@param a Quaternion
---@param b Vector4
---@return Vector4
function Game.OperatorMultiply(a, b) return end

---@param xform1 Transform
---@param xform2 Transform
---@return Transform
function Game.OperatorMultiply(xform1, xform2) return end

---@param xform Transform
---@param v Vector4
---@return Vector4
function Game.OperatorMultiply(xform, v) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorMultiply(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorMultiply(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorMultiply(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorMultiply(a, b) return end

---@param a Vector4
---@param b Float
---@return Vector4
function Game.OperatorMultiply(a, b) return end

---@param a Vector4
---@param b Vector4
---@return Vector4
function Game.OperatorMultiply(a, b) return end

---@param a Double
---@return Double
function Game.OperatorNeg(a) return end

---@param a Float
---@return Float
function Game.OperatorNeg(a) return end

---@param a GameTime
---@return GameTime
function Game.OperatorNeg(a) return end

---@param a Int16
---@return Int16
function Game.OperatorNeg(a) return end

---@param a Int32
---@return Int32
function Game.OperatorNeg(a) return end

---@param a Int64
---@return Int64
function Game.OperatorNeg(a) return end

---@param a Int8
---@return Int8
function Game.OperatorNeg(a) return end

---@param a Quaternion
---@return Quaternion
function Game.OperatorNeg(a) return end

---@param b Vector4
---@return Vector4
function Game.OperatorNeg(b) return end

---@param b WorldPosition
---@return WorldPosition
function Game.OperatorNeg(b) return end

---@param a gameDelayID
---@param b gameDelayID
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Double
---@param b Double
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a entEntityID
---@param b entEntityID
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Float
---@param b Float
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a GameTime
---@param b GameTime
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a IScriptable
---@param b IScriptable
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Int16
---@param b Int16
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Int32
---@param b Int32
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Int64
---@param b Int64
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Int8
---@param b Int8
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a ItemID
---@param b ItemID
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a TweakDBID|string
---@param b TweakDBID|string
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Bool
function Game.OperatorNotEqual(a, b) return end

---@param a gameDamageListenerPipelineType
---@param b gameDamageListenerPipelineType
---@return gameDamageListenerPipelineType
function Game.OperatorOr(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorOr(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorOr(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorOr(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorOr(a, b) return end

---@param a gametargetingSystemSearchFilterMaskValue
---@param b gametargetingSystemSearchFilterMaskValue
---@return gametargetingSystemSearchFilterMaskValue
function Game.OperatorOr(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorOr(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorOr(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorOr(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorOr(a, b) return end

---@param a Double
---@param b Double
---@return Double
function Game.OperatorSubtract(a, b) return end

---@param a EngineTime
---@param b EngineTime
---@return EngineTime
function Game.OperatorSubtract(a, b) return end

---@param a EngineTime
---@param b Float
---@return EngineTime
function Game.OperatorSubtract(a, b) return end

---@param a Float
---@param b Float
---@return Float
function Game.OperatorSubtract(a, b) return end

---@param a GameTime
---@param b GameTime
---@return GameTime
function Game.OperatorSubtract(a, b) return end

---@param a GameTime
---@param b Int32
---@return GameTime
function Game.OperatorSubtract(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorSubtract(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorSubtract(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorSubtract(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorSubtract(a, b) return end

---@param a Quaternion
---@param b Quaternion
---@return Quaternion
function Game.OperatorSubtract(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorSubtract(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorSubtract(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorSubtract(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorSubtract(a, b) return end

---@param a Vector4
---@param b Float
---@return Vector4
function Game.OperatorSubtract(a, b) return end

---@param a Vector4
---@param b Vector4
---@return Vector4
function Game.OperatorSubtract(a, b) return end

---@param a WorldPosition
---@param b Vector4
---@return WorldPosition
function Game.OperatorSubtract(a, b) return end

---@param a WorldPosition
---@param b WorldPosition
---@return Vector4
function Game.OperatorSubtract(a, b) return end

---@param a Int16
---@param b Int16
---@return Int16
function Game.OperatorXor(a, b) return end

---@param a Int32
---@param b Int32
---@return Int32
function Game.OperatorXor(a, b) return end

---@param a Int64
---@param b Int64
---@return Int64
function Game.OperatorXor(a, b) return end

---@param a Int8
---@param b Int8
---@return Int8
function Game.OperatorXor(a, b) return end

---@param a Uint16
---@param b Uint16
---@return Uint16
function Game.OperatorXor(a, b) return end

---@param a Uint32
---@param b Uint32
---@return Uint32
function Game.OperatorXor(a, b) return end

---@param a Uint64
---@param b Uint64
---@return Uint64
function Game.OperatorXor(a, b) return end

---@param a Uint8
---@param b Uint8
---@return Uint8
function Game.OperatorXor(a, b) return end

function Game.ParseNodeRef() return end
ParseNodeRef = Game.ParseNodeRef

---@param a Float
---@param x Float
---@return Float
function Game.PowF(a, x) return end
PowF = Game.PowF

---@param hitDebugInfos gameHitDetectionDebugFrameData[]
function Game.PropagateDebugHitInformations(hitDebugInfos) return end
PropagateDebugHitInformations = Game.PropagateDebugHitInformations

---@param server String
function Game.PvdClientConnect(server) return end
PvdClientConnect = Game.PvdClientConnect

---@param filePath String
function Game.PvdFileDumpConnect(filePath) return end
PvdFileDumpConnect = Game.PvdFileDumpConnect

---@param rad Float
---@return Float
function Game.Rad2Deg(rad) return end
Rad2Deg = Game.Rad2Deg

function Game.Rand() return end
Rand = Game.Rand

---@param lastValue Int32
---@param range Int32
---@return Int32
function Game.RandDifferent(lastValue, range) return end
RandDifferent = Game.RandDifferent

---@return Float
function Game.RandF() return end
RandF = Game.RandF

---@param seed Int32
---@param max Float
---@param min Float
---@return Float
function Game.RandNoiseF(seed, max, min) return end
RandNoiseF = Game.RandNoiseF

---@param min Int32
---@param max Int32
---@return Int32
function Game.RandRange(min, max) return end
RandRange = Game.RandRange

---@param min Float
---@param max Float
---@return Float
function Game.RandRangeF(min, max) return end
RandRangeF = Game.RandRangeF

function Game.RefreshSettings() return end
RefreshSettings = Game.RefreshSettings

---@param a Int32
---@return Float
function Game.ReinterpretIntAsFloat(a) return end
ReinterpretIntAsFloat = Game.ReinterpretIntAsFloat

function Game.RepDecreaseGlobalTimeDilation() return end
RepDecreaseGlobalTimeDilation = Game.RepDecreaseGlobalTimeDilation

function Game.RepDecreasePlayerTimeDilation() return end
RepDecreasePlayerTimeDilation = Game.RepDecreasePlayerTimeDilation

---@param player gameObject
---@param cheat Uint32
---@param enable Bool
function Game.RepEnableCheatOnPlayer(player, cheat, enable) return end
RepEnableCheatOnPlayer = Game.RepEnableCheatOnPlayer

function Game.RepIncreaseGlobalTimeDilation() return end
RepIncreaseGlobalTimeDilation = Game.RepIncreaseGlobalTimeDilation

function Game.RepIncreasePlayerTimeDilation() return end
RepIncreasePlayerTimeDilation = Game.RepIncreasePlayerTimeDilation

function Game.RepResetTimeDilation() return end
RepResetTimeDilation = Game.RepResetTimeDilation

---@param player gameObject
---@param pos Vector3
---@param rot EulerAngles
function Game.RepTeleportPlayer(player, pos, rot) return end
RepTeleportPlayer = Game.RepTeleportPlayer

function Game.RepToggleGamePause() return end
RepToggleGamePause = Game.RepToggleGamePause

---@param message String
---@return Bool
function Game.ReportFailure(message) return end
ReportFailure = Game.ReportFailure

---@param language CName|string
function Game.RequestInstallLanguagePackDialog(language) return end
RequestInstallLanguagePackDialog = Game.RequestInstallLanguagePackDialog

---@param id NodeRef
---@param context worldGlobalNodeRef
---@return worldGlobalNodeRef
function Game.ResolveNodeRef(id, context) return end
ResolveNodeRef = Game.ResolveNodeRef

---@param id NodeRef
---@param context entEntityID
---@return worldGlobalNodeRef
function Game.ResolveNodeRefWithEntityID(id, context) return end
ResolveNodeRefWithEntityID = Game.ResolveNodeRefWithEntityID

---@param a Float
---@return Int32
function Game.RoundF(a) return end
RoundF = Game.RoundF

function Game.RoundFEx() return end
RoundFEx = Game.RoundFEx

---@param pingEntry gamePingEntry
function Game.ServerAddPingTarget(pingEntry) return end
ServerAddPingTarget = Game.ServerAddPingTarget

---@param a Float
---@return Float
function Game.SinF(a) return end
SinF = Game.SinF

---@param arr scriptOptimizationsHandleWithValue[]
function Game.SortHandleWithValueArray(arr) return end
SortHandleWithValueArray = Game.SortHandleWithValueArray

---@param a Float
---@return Float
function Game.SqrF(a) return end
SqrF = Game.SqrF

---@param a Float
---@return Float
function Game.SqrtF(a) return end
SqrtF = Game.SqrtF

---@param statsEffectsEnum Int32
---@return TweakDBID
function Game.StatsEffectsEnumToTDBID(statsEffectsEnum) return end
StatsEffectsEnumToTDBID = Game.StatsEffectsEnumToTDBID

---@param str String
---@param match String
---@return String
function Game.StrAfterFirst(str, match) return end
StrAfterFirst = Game.StrAfterFirst

---@param str String
---@param match String
---@return String
function Game.StrAfterLast(str, match) return end
StrAfterLast = Game.StrAfterLast

---@param str String
---@param match String
---@return String
function Game.StrBeforeFirst(str, match) return end
StrBeforeFirst = Game.StrBeforeFirst

---@param str String
---@param match String
---@return String
function Game.StrBeforeLast(str, match) return end
StrBeforeLast = Game.StrBeforeLast

---@param str String
---@param match String
---@return Bool
function Game.StrBeginsWith(str, match) return end
StrBeginsWith = Game.StrBeginsWith

---@param i Int32
---@return String
function Game.StrChar(i) return end
StrChar = Game.StrChar

---@param str String
---@param with String
---@param length Int32
---@param noCase Bool
---@return Int32
function Game.StrCmp(str, with, length, noCase) return end
StrCmp = Game.StrCmp

---@param str String
---@param subStr String
---@return Bool
function Game.StrContains(str, subStr) return end
StrContains = Game.StrContains

---@param str String
---@param match String
---@return Bool
function Game.StrEndsWith(str, match) return end
StrEndsWith = Game.StrEndsWith

---@param str String
---@param match String
---@return Int32
function Game.StrFindFirst(str, match) return end
StrFindFirst = Game.StrFindFirst

---@param str String
---@param match String
---@return Int32
function Game.StrFindLast(str, match) return end
StrFindLast = Game.StrFindLast

---@param str String
---@param length Int32
---@return String
function Game.StrLeft(str, length) return end
StrLeft = Game.StrLeft

---@param str String
---@return Int32
function Game.StrLen(str) return end
StrLen = Game.StrLen

---@param str String
---@return String
function Game.StrLower(str) return end
StrLower = Game.StrLower

---@param str String
---@param first Int32
---@param length Int32
---@return String
function Game.StrMid(str, first, length) return end
StrMid = Game.StrMid

---@param str String
---@param match String
---@param with String
---@return String
function Game.StrReplace(str, match, with) return end
StrReplace = Game.StrReplace

---@param str String
---@param match String
---@param with String
---@return String
function Game.StrReplaceAll(str, match, with) return end
StrReplaceAll = Game.StrReplaceAll

---@param str String
---@param length Int32
---@return String
function Game.StrRight(str, length) return end
StrRight = Game.StrRight

---@param str String
---@param divider String
---@param includeEmpty Bool
---@return String[]
function Game.StrSplit(str, divider, includeEmpty) return end
StrSplit = Game.StrSplit

---@param str String
---@param divider String
---@return Bool, String, String
function Game.StrSplitFirst(str, divider) return end
StrSplitFirst = Game.StrSplitFirst

---@param str String
---@param divider String
---@return Bool, String, String
function Game.StrSplitLast(str, divider) return end
StrSplitLast = Game.StrSplitLast

---@param str String
---@return String
function Game.StrUpper(str) return end
StrUpper = Game.StrUpper

---@param s String
---@return Bool
function Game.StringToBool(s) return end
StringToBool = Game.StringToBool

---@param value String
---@param defValue Float
---@return Float
function Game.StringToFloat(value, defValue) return end
StringToFloat = Game.StringToFloat

---@param str String
---@param lineLength Uint32
---@return String
function Game.StringToHex(str, lineLength) return end
StringToHex = Game.StringToHex

---@param value String
---@param defValue Int32
---@return Int32
function Game.StringToInt(value, defValue) return end
StringToInt = Game.StringToInt

---@param str String
---@return CName
function Game.StringToName(str) return end
StringToName = Game.StringToName

---@param value String
---@param defValue Uint64
---@return Uint64
function Game.StringToUint64(value, defValue) return end
StringToUint64 = Game.StringToUint64

---@param mask gametargetingSystemSearchFilterMaskValue
---@return gameTargetSearchFilter
function Game.TSF_All(mask) return end
TSF_All = Game.TSF_All

---@param tsf1 gameTargetSearchFilter
---@param tsf2 gameTargetSearchFilter
---@param tsf3 gameTargetSearchFilter
---@param tsf4 gameTargetSearchFilter
---@return gameTargetSearchFilter
function Game.TSF_And(tsf1, tsf2, tsf3, tsf4) return end
TSF_And = Game.TSF_And

---@param mask gametargetingSystemSearchFilterMaskValue
---@return gameTargetSearchFilter
function Game.TSF_Any(mask) return end
TSF_Any = Game.TSF_Any

---@param mask gametargetingSystemSearchFilterMaskValue
---@return gameTargetSearchFilter
function Game.TSF_Not(mask) return end
TSF_Not = Game.TSF_Not

---@param tsf1 gameTargetSearchFilter
---@param tsf2 gameTargetSearchFilter
---@param tsf3 gameTargetSearchFilter
---@param tsf4 gameTargetSearchFilter
---@return gameTargetSearchFilter
function Game.TSF_Or(tsf1, tsf2, tsf3, tsf4) return end
TSF_Or = Game.TSF_Or

---@param a Float
---@return Float
function Game.TanF(a) return end
TanF = Game.TanF

function Game.Trace() return end
Trace = Game.Trace

---@return String
function Game.TraceToString() return end
TraceToString = Game.TraceToString

function Game.Uint64ToInt() return end
Uint64ToInt = Game.Uint64ToInt

function Game.Uint64ToString() return end
Uint64ToString = Game.Uint64ToString

---@param str String
---@param str2 String
---@return Int32
function Game.UnicodeStringCompare(str, str2) return end
UnicodeStringCompare = Game.UnicodeStringCompare

---@param str String
---@param str2 String
---@return Bool
function Game.UnicodeStringEqual(str, str2) return end
UnicodeStringEqual = Game.UnicodeStringEqual

---@param str String
---@param str2 String
---@return Bool
function Game.UnicodeStringLessThan(str, str2) return end
UnicodeStringLessThan = Game.UnicodeStringLessThan

---@param str String
---@param str2 String
---@return Bool
function Game.UnicodeStringLessThanEqual(str, str2) return end
UnicodeStringLessThanEqual = Game.UnicodeStringLessThanEqual

---@return Bool
function Game.UseProfiler() return end
UseProfiler = Game.UseProfiler

---@param perk String
---@param level String
function Game.APE(perk, level) return end

---@param fact String
function Game.AddDebugFact(fact) return end

---@param stringType String
---@param stringVal String
function Game.AddExp(stringType, stringVal) return end

---@param factName CName|string
---@param factCount Int32
---@return Bool
function Game.AddFact(factName, factCount) return end
AddFact = Game.AddFact

---@param type String
---@param amount String
function Game.AddItems(type, amount) return end

---@param statPoolTypeString String
---@param bonusValueString String
---@param persistance String
---@param percentage String
function Game.AddPlayerStatPoolBonus(statPoolTypeString, bonusValueString, persistance, percentage) return end

---@param tweak String
function Game.AddRecord(tweak) return end

---@param type String
---@param value String
---@param modType String
function Game.AddStatModifier(type, value, modType) return end

---@param itemString String
---@param quantityString String
function Game.AddToInventory(itemString, quantityString) return end

---@param keyStr String
---@param valueStr String
function Game.AnimWrapperWeightSetterTest(keyStr, valueStr) return end

function Game.AnimationSystemSetForcedVisibleFalseTest() return end

function Game.AnimationSystemSetForcedVisibleTrueTest() return end

---@param statPoolTypeString String
---@param rangeBeginString String
---@param rangeEndString String
---@param startDelayString String
---@param valuePerSecString String
---@param delayOnChangeString String
function Game.ApplyDecayData(statPoolTypeString, rangeBeginString, rangeEndString, startDelayString, valuePerSecString, delayOnChangeString) return end

---@param statPoolTypeString String
---@param statPoolModName String
function Game.ApplyDecayModifier(statPoolTypeString, statPoolModName) return end

---@param effect String
function Game.ApplyEffectOnNPC(effect) return end

---@param effect String
function Game.ApplyEffectOnPlayer(effect) return end

---@param effect String
---@param count String
function Game.ApplyEffectStackOnPlayer(effect, count) return end

---@param value String
function Game.ApplyGLP(value) return end

---@param statPoolTypeString String
---@param rangeBeginString String
---@param rangeEndString String
---@param startDelayString String
---@param valuePerSecString String
---@param delayOnChangeString String
function Game.ApplyRegenData(statPoolTypeString, rangeBeginString, rangeEndString, startDelayString, valuePerSecString, delayOnChangeString) return end

---@param statPoolTypeString String
---@param statPoolModName String
function Game.ApplyRegenModifier(statPoolTypeString, statPoolModName) return end

---@param statPoolTypeString String
---@param rangeBegin Float
---@param rangeEnd Float
---@param startDelay Float
---@param valuePerSec Float
---@param delayOnChange Bool
---@param statPoolModType gameStatPoolModificationTypes
function Game.ApplyStatPoolModifier(statPoolTypeString, rangeBegin, rangeEnd, startDelay, valuePerSec, delayOnChange, statPoolModType) return end
ApplyStatPoolModifier = Game.ApplyStatPoolModifier

---@param device ScriptableDeviceComponentPS
---@return Bool
function Game.BasicAvailabilityTest(device) return end
BasicAvailabilityTest = Game.BasicAvailabilityTest

---@param block String
function Game.BlockSwitchSeats(block) return end

---@param radius String
function Game.BreachAllNetworks(radius) return end

function Game.BreachNearestAP() return end

function Game.BreakEffectLoop() return end

---@param stringType String
function Game.BuyAtt(stringType) return end

---@param item String
function Game.BuyItem(item) return end

---@param pString String
function Game.BuyPerk(pString) return end

function Game.CGLP() return end

function Game.CLS_off() return end

function Game.CLS_on() return end

function Game.CLS_reset() return end

---@param groupName CName|string
---@return Bool
function Game.CanChangeAttitudeRelationFor(groupName) return end
CanChangeAttitudeRelationFor = Game.CanChangeAttitudeRelationFor

---@return Bool
function Game.CanLog() return end
CanLog = Game.CanLog

---@param hotkey gameEHotkey
---@return Int32
function Game.Cast(hotkey) return end
Cast = Game.Cast

---@param flag EAIGateSignalFlags
---@return AISignalFlags
function Game.Cast(flag) return end
Cast = Game.Cast

---@param value AIbehaviorConditionOutcomes
---@return Bool
function Game.Cast(value) return end
Cast = Game.Cast

---@param value Bool
---@return AIbehaviorConditionOutcomes
function Game.Cast(value) return end
Cast = Game.Cast

function Game.CastEnum() return end

function Game.ChangeArea() return end

---@param type String
---@param value String
---@param subtract String
---@param percentage String
function Game.ChangeStatPoolVal(type, value, subtract, percentage) return end

function Game.ChangeZoneIndicatorDanger() return end

function Game.ChangeZoneIndicatorPublic() return end

function Game.ChangeZoneIndicatorRestricted() return end

function Game.ChangeZoneIndicatorSafe() return end

function Game.CheatExposeNPCQuickHacks() return end

---@param fact String
function Game.CheckFactValue(fact) return end

function Game.ClearEquipment() return end

---@param comparator ECompareOp
---@param val1 Int32
---@param val2 Int32
---@return Bool
function Game.Compare(comparator, val1, val2) return end
Compare = Game.Compare

---@param comparator ECompareOp
---@param val1 Float
---@param val2 Float
---@return Bool
function Game.CompareF(comparator, val1, val2) return end
CompareF = Game.CompareF

---@param stimType String
---@param activeStim String
function Game.CreateDebugStimuli(stimType, activeStim) return end

---@param debugSourceName CName|string
---@return entRagdollDisableEvent
function Game.CreateDisableRagdollEvent(debugSourceName) return end
CreateDisableRagdollEvent = Game.CreateDisableRagdollEvent

---@param debugSourceName CName|string
---@return entRagdollActivationRequestEvent
function Game.CreateForceRagdollEvent(debugSourceName) return end
CreateForceRagdollEvent = Game.CreateForceRagdollEvent

---@param debugSourceName CName|string
---@return entRagdollActivationRequestEvent
function Game.CreateForceRagdollNoPowerPoseEvent(debugSourceName) return end
CreateForceRagdollNoPowerPoseEvent = Game.CreateForceRagdollNoPowerPoseEvent

---@param customFilterData CName|string
---@param debugSourceName CName|string
---@return entRagdollActivationRequestEvent
function Game.CreateForceRagdollWithCustomFilterDataEvent(customFilterData, debugSourceName) return end
CreateForceRagdollWithCustomFilterDataEvent = Game.CreateForceRagdollWithCustomFilterDataEvent

---@param activationType entragdollActivationRequestType
---@param filterDataOverride CName|string
---@param applyPowerPose Bool
---@param applyMomentum Bool
---@param debugSourceName CName|string
---@return entRagdollActivationRequestEvent
function Game.CreateRagdollActivationRequestEvent(activationType, filterDataOverride, applyPowerPose, applyMomentum, debugSourceName) return end
CreateRagdollActivationRequestEvent = Game.CreateRagdollActivationRequestEvent

---@param worldPos Vector4
---@param imuplseVal Vector4
---@param influenceRadius Float
---@return entRagdollApplyImpulseEvent
function Game.CreateRagdollApplyImpulseEvent(worldPos, imuplseVal, influenceRadius) return end
CreateRagdollApplyImpulseEvent = Game.CreateRagdollApplyImpulseEvent

function Game.CreateSet() return end

---@param shouldDebug String
function Game.DD(shouldDebug) return end

---@param TEMP_dmg String
---@param dmgType String
---@param percentage String
function Game.DamagePlayer(TEMP_dmg, dmgType, percentage) return end

function Game.DbgBraindanceIsActive() return end

function Game.DbgBraindanceIsPaused() return end

function Game.DbgBraindancePlayDirection() return end

function Game.DbgBraindancePlaySpeed() return end

function Game.DbgBraindanceProgress() return end

---@param direction String
function Game.DbgBraindanceSetPlayDirection(direction) return end

---@param speed String
function Game.DbgBraindanceSetPlaySpeed(speed) return end

function Game.DbgBraindanceTimeInSec() return end

---@param shouldDebug String
function Game.DbgDvs(shouldDebug) return end

function Game.DbgMarkPatchIntroAsSeen() return end

function Game.DbgResetPatchIntro() return end

---@param shouldDebug Bool
function Game.DebugDevices(shouldDebug) return end
DebugDevices = Game.DebugDevices

---@param shouldDebug String
function Game.DebugDevices(shouldDebug) return end

function Game.DebugGiveHotkeys() return end
DebugGiveHotkeys = Game.DebugGiveHotkeys

---@param durationStr String
function Game.DebugNPC(durationStr) return end

---@param durationStr String
---@param radiusStr String
---@param moveWithPlayerStr String
function Game.DebugNPCs(durationStr, radiusStr, moveWithPlayerStr) return end

---@param durationStr String
---@param radiusStr String
---@param moveWithPlayerStr String
function Game.DebugNPCs_NonExec(durationStr, radiusStr, moveWithPlayerStr) return end
DebugNPCs_NonExec = Game.DebugNPCs_NonExec

---@param rewardDef String
function Game.DebugReward(rewardDef) return end

---@param val String
function Game.DebugSS(val) return end

---@param useCircularDistribution String
---@param useEvenDistribution String
---@param rowCount String
---@param projectilesPerShot String
function Game.Debug_WeaponSpread(useCircularDistribution, useEvenDistribution, rowCount, projectilesPerShot) return end

function Game.Debug_WeaponSpread_RandomCircular() return end

function Game.Debug_WeaponSpread_RandomGrid() return end

---@param useCircularDistribution Bool
---@param useEvenDistribution Bool
---@param rowCount Int32
---@param projectilesPerShot Int32
function Game.Debug_WeaponSpread_Set(useCircularDistribution, useEvenDistribution, rowCount, projectilesPerShot) return end
Debug_WeaponSpread_Set = Game.Debug_WeaponSpread_Set

function Game.DecreaseGlobalTimeDilation() return end

function Game.DecreasePlayerTimeDilation() return end

---@param setName String
function Game.DeleteEquipmentSet(setName) return end

function Game.DemolitionUp() return end

function Game.DespawnFlathead() return end

---@param vehicleID String
function Game.DespawnPlayerVehicle(vehicleID) return end

function Game.DetectCycles() return end

---@return entEntityID
function Game.EMPTY_ENTITY_ID() return end
EMPTY_ENTITY_ID = Game.EMPTY_ENTITY_ID

---@param record String
function Game.EffectorOff(record) return end

---@param record String
function Game.EffectorOn(record) return end

---@param record String
function Game.EffectorOnW(record) return end

---@return gameInventoryItemData
function Game.EmptyInventoryItemData() return end
EmptyInventoryItemData = Game.EmptyInventoryItemData

function Game.EnableAllPlayerVehicles() return end

---@param enable String
function Game.EnableFinishers(enable) return end

---@param shouldEnable String
function Game.EnableQuickHacks(shouldEnable) return end

function Game.EnableTransmog() return end

---@param value String
function Game.EnableVehicleToggleSummonMode(value) return end

function Game.EnterBD() return end

---@param itemTDBIDStr String
function Game.EquipItem(itemTDBIDStr) return end

---@param item String
---@param slot String
function Game.EquipItemOnPlayer(item, slot) return end

---@param itemTDBIDStr String
function Game.EquipItemToHand(itemTDBIDStr) return end

---@param setID String
function Game.EquipSet(setID) return end

---@param itemTDBIDStr String
function Game.EquipVisuals(itemTDBIDStr) return end

---@param magicFloat String
function Game.FastTravel_f(magicFloat) return end

---@param channelName CName|string
---@param logType ELogType
---@param message String
function Game.FindProperLog(channelName, logType, message) return end
FindProperLog = Game.FindProperLog

---@param channelName CName|string
---@param logType CName|string
---@param message String
function Game.FindProperLog(channelName, logType, message) return end
FindProperLog = Game.FindProperLog

---@param f Float
---@param to Float
---@return Bool
function Game.FloatIsEqual(f, to) return end
FloatIsEqual = Game.FloatIsEqual

---@param color String
---@param opacity String
function Game.ForceOutline(color, opacity) return end

function Game.ForcedNPCDeath() return end

---@param slideRecord gamedataAIActionSlideData_Record
---@return gameActionAnimationSlideParams
function Game.GetActionAnimationSlideParams(slideRecord) return end
GetActionAnimationSlideParams = Game.GetActionAnimationSlideParams

function Game.GetAllPerks() return end

---@param loopType inkanimLoopType
---@return inkanimPlaybackOptions
function Game.GetAnimOptionsInfiniteLoop(loopType) return end
GetAnimOptionsInfiniteLoop = Game.GetAnimOptionsInfiniteLoop

---@param argList gameinteractionsChoiceCaptionPart[]
---@return String
function Game.GetCaptionTagsFromArray(argList) return end
GetCaptionTagsFromArray = Game.GetCaptionTagsFromArray

---@return Int64
function Game.GetDamageSystemLogFlags() return end
GetDamageSystemLogFlags = Game.GetDamageSystemLogFlags

---@param factName CName|string
---@return Int32
function Game.GetFact(factName) return end
GetFact = Game.GetFact

function Game.GetFunFact() return end

---@param reference gameEntityReference
---@return Bool, gameObject
function Game.GetGameObjectFromEntityReference(reference) return end
GetGameObjectFromEntityReference = Game.GetGameObjectFromEntityReference

---@param gameObject gameObject
---@return Bool, gameGodModeType
function Game.GetImmortality(gameObject) return end
GetImmortality = Game.GetImmortality

---@return gameDelayID
function Game.GetInvalidDelayID() return end
GetInvalidDelayID = Game.GetInvalidDelayID

---@param slotString String
function Game.GetItemInSlot(slotString) return end

---@param context AIbehaviorScriptExecutionContext
---@return Int32
function Game.GetItemTypeFromContext(context) return end
GetItemTypeFromContext = Game.GetItemTypeFromContext

---@param object gameObject
---@return vehicleBaseObject
function Game.GetMountedVehicle(object) return end
GetMountedVehicle = Game.GetMountedVehicle

---@return CName[]
function Game.GetNotSavableClasses() return end
GetNotSavableClasses = Game.GetNotSavableClasses

---@param rot EulerAngles
---@return EulerAngles
function Game.GetOppositeRotation180(rot) return end
GetOppositeRotation180 = Game.GetOppositeRotation180

---@return Int32
function Game.GetPSGeneratorVersion() return end
GetPSGeneratorVersion = Game.GetPSGeneratorVersion

---@return PlayerPuppet
function Game.GetPlayer() return end
GetPlayer = Game.GetPlayer

---@return gameObject
function Game.GetPlayerObject() return end
GetPlayerObject = Game.GetPlayerObject

function Game.GetQuickhacks() return end

---@param stringType String
---@param stringVal String
function Game.GiveDevPoints(stringType, stringVal) return end

---@param itemName String
---@param amountStr String
function Game.GiveItem(itemName, amountStr) return end

function Game.God1() return end

function Game.God2() return end

function Game.GodClearAll() return end

---@return Float
function Game.HalfPi() return end
HalfPi = Game.HalfPi

---@param valStr String
---@param isScalarStr String
function Game.Heal(valStr, isScalarStr) return end

---@param radiusStr String
function Game.HealAll(radiusStr) return end

function Game.Hotkeys() return end

function Game.HotkeysNOW() return end

---@param iamstiffcorpoguy String
function Game.IDDQD(iamstiffcorpoguy) return end

function Game.IncreaseGlobalTimeDilation() return end

function Game.IncreasePlayerTimeDilation() return end

---@param enable String
function Game.InfiniteStamina(enable) return end

function Game.InitializeScripts() return end
InitializeScripts = Game.InitializeScripts

---@param part String
---@param slot String
function Game.InstallProgram(part, slot) return end

---@param index Int32
---@return EPreventionHeatStage
function Game.IntToEPreventionHeatStage(index) return end
IntToEPreventionHeatStage = Game.IntToEPreventionHeatStage

---@param object gameObject
---@return Bool
function Game.IsFriendlyTowardsPlayer(object) return end
IsFriendlyTowardsPlayer = Game.IsFriendlyTowardsPlayer

---@param object gameObject
---@return Bool
function Game.IsHostileTowardsPlayer(object) return end
IsHostileTowardsPlayer = Game.IsHostileTowardsPlayer

---@param executor gameObject
---@param itemID ItemID
---@param fromInventory Bool
function Game.ItemActionsHelper_ConsumeItem(executor, itemID, fromInventory) return end

function Game.Kill() return end

---@param radiusStr String
function Game.KillAll(radiusStr) return end

---@param player PlayerPuppet
---@param radiusStr String
function Game.KillAll_NonExec(player, radiusStr) return end
KillAll_NonExec = Game.KillAll_NonExec

function Game.KillEffect() return end

---@param player PlayerPuppet
function Game.Kill_NonExec(player) return end
Kill_NonExec = Game.Kill_NonExec

function Game.LeaveBD() return end

---@param alpha Float
---@param a Float
---@param b Float
---@return Float
function Game.LerpAngleF(alpha, a, b) return end
LerpAngleF = Game.LerpAngleF

function Game.LevelUp() return end

---@param setName String
function Game.LoadEquipmentSet(setName) return end

---@param str String
function Game.LogAI(str) return end
LogAI = Game.LogAI

---@param str String
function Game.LogAICoverError(str) return end
LogAICoverError = Game.LogAICoverError

---@param str String
function Game.LogAIError(str) return end
LogAIError = Game.LogAIError

---@param condition Bool
---@param text String
function Game.LogAssert(condition, text) return end
LogAssert = Game.LogAssert

---@param str String
function Game.LogDM(str) return end
LogDM = Game.LogDM

---@param str String
function Game.LogDamage(str) return end
LogDamage = Game.LogDamage

---@param object IScriptable
---@param str String
---@param type ELogType
function Game.LogDevices(object, str, type) return end
LogDevices = Game.LogDevices

---@param object SecuritySystemControllerPS
---@param input SecuritySystemInput
---@param str String
---@param type ELogType
function Game.LogDevices(object, input, str, type) return end
LogDevices = Game.LogDevices

---@param object SecurityAreaControllerPS
---@param id Int32
---@param str String
---@param type ELogType
function Game.LogDevices(object, id, str, type) return end
LogDevices = Game.LogDevices

---@param object SecuritySystemControllerPS
---@param id Int32
---@param str String
---@param type ELogType
function Game.LogDevices(object, id, str, type) return end
LogDevices = Game.LogDevices

---@param str String
---@param type ELogType
function Game.LogDevices(str, type) return end
LogDevices = Game.LogDevices

function Game.LogGender() return end

---@param str String
function Game.LogItems(str) return end
LogItems = Game.LogItems

function Game.LogPlayerPositionAndName() return end

---@param str String
function Game.LogPuppet(str) return end
LogPuppet = Game.LogPuppet

---@param str String
function Game.LogStatPools(str) return end
LogStatPools = Game.LogStatPools

---@param str String
function Game.LogStats(str) return end
LogStats = Game.LogStats

---@param str String
function Game.LogStrike(str) return end
LogStrike = Game.LogStrike

---@param str String
---@param type CName|string
function Game.LogTargetManager(str, type) return end
LogTargetManager = Game.LogTargetManager

---@param str String
function Game.LogUI(str) return end
LogUI = Game.LogUI

---@param str String
function Game.LogUIError(str) return end
LogUIError = Game.LogUIError

---@param str String
function Game.LogUIWarning(str) return end
LogUIWarning = Game.LogUIWarning

---@param xStr String
---@param yStr String
---@param zStr String
---@param part String
function Game.LookAtAdd(xStr, yStr, zStr, part) return end

function Game.LookAtAddPlayerCameraSlot() return end

function Game.LookAtAddPlayerCameraSlotWithHands() return end

function Game.LookAtAddStaticLeftHand() return end

---@param xStr String
---@param yStr String
---@param zStr String
function Game.LookAtAddWithOffset(xStr, yStr, zStr) return end

---@param a Float
---@param b Float
---@return Float
function Game.ModF(a, b) return end
ModF = Game.ModF

---@param TEMP_stat String
---@param TEMP_val String
function Game.ModStatPlayer(TEMP_stat, TEMP_val) return end

---@param TEMP_stat String
---@param TEMP_val String
function Game.ModStatTarget(TEMP_stat, TEMP_val) return end

---@param type gameStatModifierType
---@return String
function Game.ModifierTypeToString(type) return end
ModifierTypeToString = Game.ModifierTypeToString

---@param stringDifficultyLevel String
function Game.ModifyDifficulty(stringDifficultyLevel) return end

---@param statPoolTypeString String
---@param value String
---@param percentage String
function Game.ModifyNPCStatPoolValue(statPoolTypeString, value, percentage) return end

---@param statPoolTypeString String
---@param value String
---@param percentage String
function Game.ModifyPlayerStatPoolValue(statPoolTypeString, value, percentage) return end

function Game.NetrunnerTesting() return end

---@return gameSimpleScreenMessage
function Game.NoScreenMessage() return end
NoScreenMessage = Game.NoScreenMessage

---@param f Float
---@return String
function Game.NoTrailZeros(f) return end
NoTrailZeros = Game.NoTrailZeros

function Game.Noslowmo() return end

---@param modeStr String
function Game.OP(modeStr) return end

---@param s String
---@param mode gamecheatsystemFlag
---@return String
function Game.OperatorAdd(s, mode) return end
OperatorAdd = Game.OperatorAdd

---@param s String
---@param o gameObject
---@return String
function Game.OperatorAdd(s, o) return end
OperatorAdd = Game.OperatorAdd

---@param o gameObject
---@param s String
---@return String
function Game.OperatorAdd(o, s) return end
OperatorAdd = Game.OperatorAdd

---@param mode gamecheatsystemFlag
---@param s String
---@return String
function Game.OperatorAdd(mode, s) return end
OperatorAdd = Game.OperatorAdd

---@param mode gameGodModeType
---@param s String
---@return String
function Game.OperatorAdd(mode, s) return end
OperatorAdd = Game.OperatorAdd

---@param s String
---@param mode gameGodModeType
---@return String
function Game.OperatorAdd(s, mode) return end
OperatorAdd = Game.OperatorAdd

---@param att EAIAttitude
---@param s String
---@return String
function Game.OperatorAdd(att, s) return end
OperatorAdd = Game.OperatorAdd

---@param s String
---@param att EAIAttitude
---@return String
function Game.OperatorAdd(s, att) return end
OperatorAdd = Game.OperatorAdd

---@param stat gamedataStatType
---@param s String
---@return String
function Game.OperatorAdd(stat, s) return end
OperatorAdd = Game.OperatorAdd

---@param s String
---@param stat gamedataStatType
---@return String
function Game.OperatorAdd(s, stat) return end
OperatorAdd = Game.OperatorAdd

---@param i Int64
---@param f damageSystemLogFlags
---@return Int64
function Game.OperatorAnd(i, f) return end
OperatorAnd = Game.OperatorAnd

---@param l FTEntityRequirementsFlag
---@param r FTEntityRequirementsFlag
---@return FTEntityRequirementsFlag
function Game.OperatorAnd(l, r) return end
OperatorAnd = Game.OperatorAnd

---@param widgetATID String
---@return Bool, at_uiWidgetData
function Game.OperatorArray(widgetATID) return end
OperatorArray = Game.OperatorArray

---@param action1 PuppetAction
---@param action2 PuppetAction
---@return Bool
function Game.OperatorEqual(action1, action2) return end
OperatorEqual = Game.OperatorEqual

---@param documentAdress1 SDocumentAdress
---@param documentAdress2 SDocumentAdress
---@return Bool
function Game.OperatorEqual(documentAdress1, documentAdress2) return end
OperatorEqual = Game.OperatorEqual

---@param l1 DeviceLink
---@param l2 DeviceLink
---@return Bool
function Game.OperatorEqual(l1, l2) return end
OperatorEqual = Game.OperatorEqual

---@param ebool EBOOL
---@param rbool Bool
---@return Bool
function Game.OperatorEqual(ebool, rbool) return end
OperatorEqual = Game.OperatorEqual

---@param link DeviceLink
---@param ps gamePersistentState
---@return Bool
function Game.OperatorEqual(link, ps) return end
OperatorEqual = Game.OperatorEqual

---@param x redResourceReferenceScriptToken
---@param y redResourceReferenceScriptToken
---@return Bool
function Game.OperatorEqual(x, y) return end
OperatorEqual = Game.OperatorEqual

---@param hudInstance1 ModuleInstance
---@param hudInstance2 ModuleInstance
---@return Bool
function Game.OperatorEqual(hudInstance1, hudInstance2) return end
OperatorEqual = Game.OperatorEqual

---@param x redResourceReferenceScriptToken
---@param y redResourceReferenceScriptToken
---@return Bool
function Game.OperatorEqual(x, y) return end
OperatorEqual = Game.OperatorEqual

---@param action1 gamedeviceAction
---@param action2 gamedeviceAction
---@return Bool
function Game.OperatorEqual(action1, action2) return end
OperatorEqual = Game.OperatorEqual

---@param record_1 TweakDBID|string
---@param record_2 ItemID
---@return Bool
function Game.OperatorEqual(record_1, record_2) return end
OperatorEqual = Game.OperatorEqual

---@param var1 inkWidgetReference
---@param var2 inkWidgetReference
---@return Bool
function Game.OperatorEqual(var1, var2) return end
OperatorEqual = Game.OperatorEqual

---@param rbool Bool
---@param ebool EBOOL
---@return Bool
function Game.OperatorEqual(rbool, ebool) return end
OperatorEqual = Game.OperatorEqual

---@param ps gamePersistentState
---@param link DeviceLink
---@return Bool
function Game.OperatorEqual(ps, link) return end
OperatorEqual = Game.OperatorEqual

---@param goTarget gameObject
---@param target Target
---@return Bool
function Game.OperatorEqual(goTarget, target) return end
OperatorEqual = Game.OperatorEqual

---@param target Target
---@param goTarget gameObject
---@return Bool
function Game.OperatorEqual(target, goTarget) return end
OperatorEqual = Game.OperatorEqual

---@param record_1 ItemID
---@param record_2 TweakDBID|string
---@return Bool
function Game.OperatorEqual(record_1, record_2) return end
OperatorEqual = Game.OperatorEqual

---@param enum1 ESecurityAreaType
---@param enum2 ESecurityAreaType
---@return Bool
function Game.OperatorGreater(enum1, enum2) return end
OperatorGreater = Game.OperatorGreater

---@param enum1 ESecurityAccessLevel
---@param enum2 ESecurityAccessLevel
---@return Bool
function Game.OperatorGreater(enum1, enum2) return end
OperatorGreater = Game.OperatorGreater

---@param enum1 ESecuritySystemState
---@param enum2 ESecuritySystemState
---@return Bool
function Game.OperatorGreater(enum1, enum2) return end
OperatorGreater = Game.OperatorGreater

---@param enum1 gameCityAreaType
---@param enum2 gameCityAreaType
---@return Bool
function Game.OperatorGreater(enum1, enum2) return end
OperatorGreater = Game.OperatorGreater

---@param q1 gamedataQuality
---@param q2 gamedataQuality
---@return Bool
function Game.OperatorGreater(q1, q2) return end
OperatorGreater = Game.OperatorGreater

---@param enum1 ESecurityNotificationType
---@param enum2 ESecurityNotificationType
---@return Bool
function Game.OperatorGreater(enum1, enum2) return end
OperatorGreater = Game.OperatorGreater

---@param q1 gamedataQuality
---@param q2 gamedataQuality
---@return Bool
function Game.OperatorGreaterEqual(q1, q2) return end
OperatorGreaterEqual = Game.OperatorGreaterEqual

---@param activeMode1 ActiveMode
---@param activeMode2 ActiveMode
---@return Bool
function Game.OperatorGreaterEqual(activeMode1, activeMode2) return end
OperatorGreaterEqual = Game.OperatorGreaterEqual

---@param enum1 ESecurityNotificationType
---@param enum2 ESecurityNotificationType
---@return Bool
function Game.OperatorGreaterEqual(enum1, enum2) return end
OperatorGreaterEqual = Game.OperatorGreaterEqual

---@param enum1 ESecurityAreaType
---@param enum2 ESecurityAreaType
---@return Bool
function Game.OperatorLess(enum1, enum2) return end
OperatorLess = Game.OperatorLess

---@param enum1 ESecuritySystemState
---@param enum2 ESecuritySystemState
---@return Bool
function Game.OperatorLess(enum1, enum2) return end
OperatorLess = Game.OperatorLess

---@param enum1 ESecurityAccessLevel
---@param enum2 ESecurityAccessLevel
---@return Bool
function Game.OperatorLess(enum1, enum2) return end
OperatorLess = Game.OperatorLess

---@param enum1 ESecurityNotificationType
---@param enum2 ESecurityNotificationType
---@return Bool
function Game.OperatorLess(enum1, enum2) return end
OperatorLess = Game.OperatorLess

---@param q1 gamedataQuality
---@param q2 gamedataQuality
---@return Bool
function Game.OperatorLess(q1, q2) return end
OperatorLess = Game.OperatorLess

---@param f1 hitFlag
---@param f2 hitFlag
---@return Bool
function Game.OperatorLess(f1, f2) return end
OperatorLess = Game.OperatorLess

---@param enum1 ESecurityNotificationType
---@param enum2 ESecurityNotificationType
---@return Bool
function Game.OperatorLessEqual(enum1, enum2) return end
OperatorLessEqual = Game.OperatorLessEqual

---@param q1 gamedataQuality
---@param q2 gamedataQuality
---@return Bool
function Game.OperatorLessEqual(q1, q2) return end
OperatorLessEqual = Game.OperatorLessEqual

---@param activeMode1 ActiveMode
---@param activeMode2 ActiveMode
---@return Bool
function Game.OperatorLessEqual(activeMode1, activeMode2) return end
OperatorLessEqual = Game.OperatorLessEqual

---@param a TweakDBID|string
---@return Bool
function Game.OperatorLogicNot(a) return end
OperatorLogicNot = Game.OperatorLogicNot

---@param ebool EBOOL
---@return Bool
function Game.OperatorLogicNot(ebool) return end
OperatorLogicNot = Game.OperatorLogicNot

---@param att EAIAttitude
---@param match Bool
---@return Bool
function Game.OperatorLogicOr(att, match) return end
OperatorLogicOr = Game.OperatorLogicOr

---@param a String
---@param count Int32
---@return String
function Game.OperatorMultiply(a, count) return end
OperatorMultiply = Game.OperatorMultiply

---@param ebool EBOOL
---@param rbool Bool
---@return Bool
function Game.OperatorNotEqual(ebool, rbool) return end
OperatorNotEqual = Game.OperatorNotEqual

---@param rbool Bool
---@param ebool EBOOL
---@return Bool
function Game.OperatorNotEqual(rbool, ebool) return end
OperatorNotEqual = Game.OperatorNotEqual

---@param f1 damageSystemLogFlags
---@param f2 damageSystemLogFlags
---@return Int64
function Game.OperatorOr(f1, f2) return end
OperatorOr = Game.OperatorOr

---@param f damageSystemLogFlags
---@param i Int64
---@return Int64
function Game.OperatorOr(f, i) return end
OperatorOr = Game.OperatorOr

---@param i Int64
---@param f damageSystemLogFlags
---@return Int64
function Game.OperatorOr(i, f) return end
OperatorOr = Game.OperatorOr

---@param l FTEntityRequirementsFlag
---@param r FTEntityRequirementsFlag
---@return FTEntityRequirementsFlag
function Game.OperatorOr(l, r) return end
OperatorOr = Game.OperatorOr

---@param level1 ESecurityAccessLevel
---@param value Int32
---@return ESecurityAccessLevel
function Game.OperatorSubtract(level1, value) return end
OperatorSubtract = Game.OperatorSubtract

---@param a Bool
---@param b Bool
---@return Bool
function Game.OperatorXor(a, b) return end
OperatorXor = Game.OperatorXor

---@param param1 String
function Game.ParameterTest1(param1) return end

---@param param1 String
---@param param2 String
---@param param3 String
---@param param4 String
---@param param5 String
function Game.ParameterTest5(param1, param2, param3, param4, param5) return end

---@return Float
function Game.Pi() return end
Pi = Game.Pi

---@param presetName String
function Game.PlayRumble(presetName) return end

function Game.PlayerSD() return end

---@param attackRecord gamedataAttack_GameEffect_Record
---@param effectSystem gameEffectSystem
function Game.PreloadGameEffectAttackResources(attackRecord, effectSystem) return end
PreloadGameEffectAttackResources = Game.PreloadGameEffectAttackResources

---@param heatLevel String
function Game.PrevSys_active(heatLevel) return end

function Game.PrevSys_off() return end

function Game.PrevSys_on() return end

function Game.PrevSys_safe() return end

---@param value String
function Game.PreviewDamage(value) return end

function Game.PrintAttributes() return end

function Game.PrintCodex() return end

function Game.PrintDPS() return end

function Game.PrintEffectsOnNPC() return end

function Game.PrintEffectsOnPlayer() return end

function Game.PrintEquipment() return end

function Game.PrintGodModeSources() return end

function Game.PrintHealth() return end

---@param object gameObject
---@param slot TweakDBID|string
function Game.PrintItemInSlot(object, slot) return end
PrintItemInSlot = Game.PrintItemInSlot

function Game.PrintItems() return end

function Game.PrintItemsInSlots() return end

---@param slotName String
function Game.PrintNPCItemBySlot(slotName) return end

function Game.PrintNPCItems() return end

function Game.PrintPerks() return end

---@param TEMP_Type String
function Game.PrintPlayerStat(TEMP_Type) return end

---@param type String
function Game.PrintPlayerStatModifiers(type) return end

function Game.PrintPlayerStats() return end

---@param stringProfType String
function Game.PrintProfExpToNextLevel(stringProfType) return end

function Game.PrintProfs() return end

---@param statDetails gameStatDetailedData
function Game.PrintStatDetails(statDetails) return end
PrintStatDetails = Game.PrintStatDetails

---@param statType String
function Game.PrintStatTarget(statType) return end

---@param obj gameObject
function Game.PrintStatsDetails(obj) return end
PrintStatsDetails = Game.PrintStatsDetails

---@param itemName String
function Game.PrintStatsItem(itemName) return end

function Game.PrintStatsPlayer() return end

function Game.PrintStatsTarget() return end

function Game.PrintTargetStats() return end

---@param comparator EComparisonType
---@param valA Float
---@param valB Float
---@return Bool
function Game.ProcessCompare(comparator, valA, valB) return end
ProcessCompare = Game.ProcessCompare

---@param inMin Float
---@param inMax Float
---@param v Float
---@param outMin Float
---@param outMax Float
---@return Float
function Game.ProportionalClampF(inMin, inMax, v, outMin, outMax) return end
ProportionalClampF = Game.ProportionalClampF

---@param server String
function Game.Pvd(server) return end

---@param filePath String
function Game.PvdDump(filePath) return end

---@param pushForce String
function Game.RagdollNPC(pushForce) return end

---@param attackRecord gamedataAttack_GameEffect_Record
---@param effectSystem gameEffectSystem
function Game.ReleaseGameEffectAttackResources(attackRecord, effectSystem) return end
ReleaseGameEffectAttackResources = Game.ReleaseGameEffectAttackResources

---@param effect String
function Game.RemoveEffectPlayer(effect) return end

---@param pString String
function Game.RemovePerk(pString) return end

---@param itemTDBID TweakDBID|string
---@param slotID TweakDBID|string
function Game.RequestItem(itemTDBID, slotID) return end

function Game.Rev() return end

---@param f Float
---@return Int32
function Game.RoundMath(f) return end
RoundMath = Game.RoundMath

---@param f Float
---@param decimal Int32
---@return Float
function Game.RoundTo(f, decimal) return end
RoundTo = Game.RoundTo

function Game.SM() return end

---@param setName String
function Game.SaveArmorSet(setName) return end

---@param setName String
function Game.SaveWeaponSet(setName) return end

---@param widget inkWidget
---@param selectionRule inkSelectionRule
---@param param String
---@return inkWidgetsSet
function Game.SelectWidgets(widget, selectionRule, param) return end
SelectWidgets = Game.SelectWidgets

---@param item String
function Game.SellItem(item) return end

---@param show Bool
---@param data gameuiInputHintData
---@param targetHintContainer CName|string
function Game.SendInputHintData(show, data, targetHintContainer) return end
SendInputHintData = Game.SendInputHintData

function Game.SetActionContext() return end

---@param floatValue String
function Game.SetAnimFloatOnTarget(floatValue) return end

---@param stringType String
---@param stringVal String
function Game.SetAtt(stringType, stringVal) return end

function Game.SetBreathingAll() return end

function Game.SetBreathingHeavy() return end

function Game.SetBreathingJohnny() return end

function Game.SetBreathingLow() return end

function Game.SetBreathingOff() return end

function Game.SetBreathingSick() return end

---@param stringType String
function Game.SetBuild(stringType) return end

---@param fact String
---@param value String
function Game.SetDebugFact(fact, value) return end

function Game.SetDebugSceneTierThreshold1() return end

function Game.SetDebugSceneTierThreshold2() return end

function Game.SetDebugSceneTierThreshold3() return end

---@param statPoolTypeString String
function Game.SetDefaultDecay(statPoolTypeString) return end

---@param statPoolTypeString String
function Game.SetDefaultRegen(statPoolTypeString) return end

---@param statPoolTypeString String
---@param statPoolModType gameStatPoolModificationTypes
function Game.SetDefaultStatPoolModifiers(statPoolTypeString, statPoolModType) return end
SetDefaultStatPoolModifiers = Game.SetDefaultStatPoolModifiers

---@param factName CName|string
---@param factCount Int32
---@return Bool
function Game.SetFactValue(factName, factCount) return end
SetFactValue = Game.SetFactValue

---@param stringType String
---@param stringVal String
function Game.SetLevel(stringType, stringVal) return end

---@param weaponState String
function Game.SetQuestWeaponState(weaponState) return end

function Game.SetRpgContext() return end

---@param amount String
function Game.SetTimeDilation(amount) return end

---@param zoneType String
function Game.SetZoneType(zoneType) return end

---@param a Float
---@return Float
function Game.SgnF(a) return end
SgnF = Game.SgnF

---@param flag String
function Game.SilenceWeapon(flag) return end

function Game.Slowmo() return end

---@param str String
---@param length Int32
---@param mode ESpaceFillMode
---@param fillChar String
---@return String
function Game.SpaceFill(str, length, mode, fillChar) return end
SpaceFill = Game.SpaceFill

---@param effectName CName|string
function Game.SpawnEffect(effectName) return end

function Game.SpawnFlathead() return end

---@param loot String
function Game.SpawnLoot(loot) return end

function Game.SpawnTestEffect() return end

---@param entityID entEntityID
---@param componentName CName|string
---@param psClassName CName|string
---@return gamePersistentState
function Game.SpawnVirtualPS(entityID, componentName, psClassName) return end
SpawnVirtualPS = Game.SpawnVirtualPS

function Game.StreetCredUp() return end

function Game.SwapItemPart() return end

---@param mappingName String
function Game.SwapPreset(mappingName) return end

---@param cheat gamecheatsystemFlag
function Game.SwitchPlayerImmortalityMode(cheat) return end
SwitchPlayerImmortalityMode = Game.SwitchPlayerImmortalityMode

---@param shouldSetStr String
function Game.TEST_TargetImmortal(shouldSetStr) return end

---@param shouldSetStr String
function Game.TEST_TargetInvulnerable(shouldSetStr) return end

---@return gameTargetSearchFilter
function Game.TSF_EnemyNPC() return end
TSF_EnemyNPC = Game.TSF_EnemyNPC

---@return gameTargetSearchFilter
function Game.TSF_NPC() return end
TSF_NPC = Game.TSF_NPC

---@return gameTargetSearchFilter
function Game.TSF_Quickhackable() return end
TSF_Quickhackable = Game.TSF_Quickhackable

---@return gameTargetSearchQuery
function Game.TSQ_ALL() return end
TSQ_ALL = Game.TSQ_ALL

---@return gameTargetSearchQuery
function Game.TSQ_EnemyNPC() return end
TSQ_EnemyNPC = Game.TSQ_EnemyNPC

---@return gameTargetSearchQuery
function Game.TSQ_NPC() return end
TSQ_NPC = Game.TSQ_NPC

---@param xStr String
---@param yStr String
---@param zStr String
function Game.TeleportPlayerToPosition(xStr, yStr, zStr) return end

function Game.TestCustomQuestNotification() return end

function Game.TestDrop() return end

---@param value String
function Game.TestForcePlayerInvisible(value) return end

function Game.TestNavigationSystem() return end

function Game.TestNotification() return end

---@param toInt String
function Game.ToIntTest(toInt) return end

---@param owner gameObject
---@param itemID ItemID
---@return gameInventoryItemData
function Game.ToInventoryItemData(owner, itemID) return end
ToInventoryItemData = Game.ToInventoryItemData

---@param evt gameeventsDamageReceivedEvent
---@return gameTelemetryDamage
function Game.ToTelemetryDamage(evt) return end
ToTelemetryDamage = Game.ToTelemetryDamage

---@param attackData gamedamageAttackData
---@return gameTelemetryDamage
function Game.ToTelemetryDamage(attackData) return end
ToTelemetryDamage = Game.ToTelemetryDamage

---@param evt gameeventsTargetDamageEvent
---@return gameTelemetryDamage
function Game.ToTelemetryDamage(evt) return end
ToTelemetryDamage = Game.ToTelemetryDamage

---@param evt gameeventsTargetDamageEvent
---@param situation gameTelemetryDamageSituation
---@param distance Float
---@param time Float
---@return gameTelemetryDamageDealt
function Game.ToTelemetryDamageDealt(evt, situation, distance, time) return end
ToTelemetryDamageDealt = Game.ToTelemetryDamageDealt

---@param evt gameeventsDamageReceivedEvent
---@param situation gameTelemetryDamageSituation
---@param distance Float
---@param time Float
---@return gameTelemetryDamageDealt
function Game.ToTelemetryDamageDealt(evt, situation, distance, time) return end
ToTelemetryDamageDealt = Game.ToTelemetryDamageDealt

---@param target gameObject
---@return gameTelemetryEnemy
function Game.ToTelemetryEnemy(target) return end
ToTelemetryEnemy = Game.ToTelemetryEnemy

---@param inventoryItemData gameInventoryItemData
---@return gameTelemetryInventoryItem
function Game.ToTelemetryInventoryItem(inventoryItemData) return end
ToTelemetryInventoryItem = Game.ToTelemetryInventoryItem

---@param val String
function Game.ToggleFlashlight(val) return end

function Game.ToggleShowWeaponsStreaming() return end

function Game.TweakDBTest() return end

---@param stringType String
---@param stringSlot String
function Game.UnequipItem(stringType, stringSlot) return end

function Game.UnequipSet() return end

---@param areaString String
function Game.UnequipVisuals(areaString) return end

---@param achievementString String
function Game.UnlockAchievementEnum(achievementString) return end

---@param achievementNum String
function Game.UnlockAchievementInt(achievementNum) return end

function Game.UnlockAllAchievements() return end

---@param tweak String
function Game.UnlockRecord(tweak) return end

---@param programNumber String
function Game.UploadProgram(programNumber) return end

---@param vec Vector4
---@return String
function Game.VectorToString(vec) return end
VectorToString = Game.VectorToString

---@param modeStr String
function Game.Weak(modeStr) return end

function Game.WeaponSD() return end

---@param entId String
function Game.WorkspotDisableStateView(entId) return end

---@param entId String
function Game.WorkspotDisableVisualLog(entId) return end

---@param entId String
function Game.WorkspotEnableStateView(entId) return end

---@param entId String
function Game.WorkspotEnableVisualLog(entId) return end

function Game.awacstest() return end

function Game.cset() return end

function Game.debug_AddLog() return end

function Game.gebs() return end

function Game.mwtest() return end

function Game.pindatatest() return end

function Game.printJ() return end

function Game.printJ2() return end

function Game.printTracked() return end

function Game.t1() return end

function Game.t2() return end

function Game.tconv() return end

---@param value String
function Game.testLocationUpdate(value) return end

function Game.test_group() return end

function Game.test_inputhint() return end

function Game.test_inputhint1() return end

function Game.test_inputhint_clear() return end

function Game.testmapblocked() return end

function Game.testq101done() return end

function Game.tmq() return end

function Game.trackNext() return end

function Game.trackPrev() return end

function Game.untrack() return end