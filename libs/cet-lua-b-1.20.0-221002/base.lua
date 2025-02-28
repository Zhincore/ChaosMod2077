---@meta
---@diagnostic disable

---@alias void nil
---@alias Int8 number
---@alias Int16 number
---@alias Int32 number
---@alias Int64 number
---@alias Uint8 number
---@alias Uint16 number
---@alias Uint32 number
---@alias Uint64 number
---@alias Float number
---@alias Double number
---@alias Bool boolean
---@alias String string
---@alias LocalizationString string
---@alias CDateTime userdata
---@alias NodeRef userdata
---@alias CGUID userdata
---@alias Variant userdata
---@alias DataBuffer userdata
---@alias SharedDataBuffer userdata
---@alias serializationDeferredDataBuffer userdata
---@alias EditorObjectID userdata
---@alias MessageResourcePath userdata
---@alias MessageResourcePath userdata
---@alias curveData userdata
---@alias multiChannelCurve userdata

---@param value any
---@return Variant
function ToVariant(value) return end

---@param variant Variant
---@return any
function FromVariant(variant) return end

---@param ref any
---@return boolean
function IsDefined(ref)  end

---@param enum any
---@return number
function EnumInt(enum) end

-- CRUID --

---@class CRUID
---@field hash Uint64
CRUID = {}

---@param hash number
---@return CRUID
function CRUID(hash) end

-- gamedataLocKeyWrapper --

---@class gamedataLocKeyWrapper
---@field hash Uint64
gamedataLocKeyWrapper = {}

---@param hash number
---@return gamedataLocKeyWrapper
function LocKey(hash) end

-- ResourceAsyncReference --

---@class ResourceAsyncReference
---@field hash Uint64
ResourceAsyncReference = {}

-- CName --

---@class CName
---@field value string
---@field hash_lo Uint32
---@field hash_hi Uint32
CName = {}

---@param name String
---@return CName
function CName.new(name) return end

---@param hash Uint64
---@return CName
function CName.new(hash) return end

---@param hashLo Uint32
---@param hashHi Uint32
---@return CName
function CName.new(hashLo, hashHi) return end

---@param props table | '{ hash_lo = 0, hash_hi = 0 }'
---@return CName
function ToCName(props) return end

-- TweakDBID --

---@class TweakDBID
---@field hash Uint32
---@field length Uint8
TweakDBID = {}

---@param name String
---@return TweakDBID
function TweakDBID.new(name) return end

---@param base TweakDBID
---@param name String
---@return TweakDBID
function TweakDBID.new(base, name) return end

---@param hash Uint32
---@param length Uint8
---@return TweakDBID
function TweakDBID.new(hash, length) return end

---@param props table | '{ hash = 0, length = 0 }'
---@return TweakDBID
function ToTweakDBID(props) return end

-- ItemID --

---@class ItemID
---@field id TweakDBID
---@field rng_seed Uint32
---@field unknown Uint16
---@field maybe_type Uint8
ItemID = {}

---@param id TweakDBID
---@return ItemID
function ItemID.new(id) return end

---@param id TweakDBID
---@param rngSeed Uint32
---@return ItemID
function ItemID.new(id, rngSeed) return end

---@param id TweakDBID
---@param rngSeed Uint32
---@field unknown Uint16
---@return ItemID
function ItemID.new(id, rngSeed, unknown) return end

---@param id TweakDBID
---@param rngSeed Uint32
---@field unknown Uint16
---@field maybeType Uint8
---@return ItemID
function ItemID.new(id, rngSeed, unknown, maybeType) return end

---@param props table | '{ id = 0, rng_seed = 2 }' | '{ id = 0, rng_seed = 2, unknown = 0, maybe_type = 0 }'
---@return ItemID
function ToItemID(props) return end

-- Vector3 --

---@class Vector3
---@field x Float
---@field y Float
---@field z Float
Vector3 = {}

---@param x Float
---@param y Float
---@param z Float
---@return Vector3
function Vector3.new(x, y, z) return end

---@param copy Vector3
---@return Vector3
function Vector3.new(copy) return end

---@param props table | "{ x = 1, y = 1, z = 1 }"
---@return Vector3
function ToVector3(props) return end

-- Vector4 --

---@class Vector4
---@field x Float
---@field y Float
---@field z Float
---@field w Float
Vector4 = {}

---@param x Float
---@param y Float
---@param z Float
---@param w Float
---@return Vector4
function Vector4.new(x, y, z, w) return end

---@param copy Vector4
---@return Vector4
function Vector4.new(copy) return end

---@param props table | "{ x = 1, y = 1, z = 1, w = 0 }"
---@return Vector4
function ToVector4(props) return end

-- EulerAngles --

---@class EulerAngles
---@field roll Float
---@field pitch Float
---@field yaw Float
EulerAngles = {}

---@param roll Float
---@param pitch Float
---@param yaw Float
---@return EulerAngles
function EulerAngles.new(roll, pitch, yaw) return end

---@param copy EulerAngles
---@return EulerAngles
function EulerAngles.new(copy) return end

---@param props table | "{ roll = 0, pitch = 0, yaw = 0 }"
---@return EulerAngles
function ToEulerAngles(props) return end

-- Quaternion --

---@class Quaternion
---@field i Float
---@field j Float
---@field k Float
---@field r Float
Quaternion = {}

---@param i Float
---@param j Float
---@param k Float
---@param r Float
---@return Quaternion
function Quaternion.new(i, j, k, r) return end

---@param copy Quaternion
---@return Quaternion
function Quaternion.new(copy) return end

---@param props table | "{ i = 0, j = 0, k = 0, r = 0 }"
---@return Quaternion
function ToQuaternion(props) return end

-- Enum --

---@class Enum
---@field value string
Enum = {}

---@generic T
---@param name `T`
---@param value string|number
---@return T
function Enum.new(name, value) return end
