---@type userdata
bit32 = {}

---@param x number
---@return number
function bit32.bnot(x) end

---@vararg number
---@return number
function bit32.band(...) end

---@vararg number
---@return number
function bit32.bor(...) end

---@vararg number
---@return number
function bit32.bxor(...) end

---@param x number
---@param n number
---@return number
function bit32.lshift(x, n) end

---@param x number
---@param n number
---@return number
function bit32.rshift(x, n) end

---@param x number
---@param n number
---@return number
function bit32.arshift(x, n) end

---@param x number
---@param n number
---@return number
function bit32.rol(x, n) end

---@param x number
---@param n number
---@return number
function bit32.ror(x, n) end

---@param x number
---@return number
function bit32.bswap(x) end

---@param x number
---@return number
function bit32.tobit(x) end

---@param x number
---@param n number|nil
---@return string
function bit32.tohex(x, n) end
