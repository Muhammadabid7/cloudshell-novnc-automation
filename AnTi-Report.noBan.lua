
local a=string.char;local b=string.byte;local c=string.format;local d=bit32.bxor;local e=load;local f=pcall;local function i(j,k)local l=""for m=1,#j,2 do local n=tonumber(j:sub(m,m+1),16)if n then l=l..a(d(n,k))end end;return l end

gg.setVisible(false)
gg.alert([[

{{--- 𝘽𝙞𝙙𝙯𝙯 𝙊𝙛𝙛𝙞𝙘𝙞𝙖𝙡 🇮🇩---}}

▄▀▄ █▄░█ ▀█▀ █
█▀█ █░▀█ ░█░ █        𝙂𝙖𝙢𝙚 : 𝙁𝙧𝙚𝙚𝙁𝙞𝙧𝙚
▀░▀ ▀░░▀ ░▀░ ▀            
█▀▀▄ █▀ █▀▄ ▄▀▄ █▀▀▄ ▀█▀
█▐█▀ █▀ █▄█ █░█ █▐█▀ ░█░
▀░▀▀ ▀▀ ▀░░ ░▀░ ▀░▀▀ ░▀░


ＢＥＴＡ ＶＥＲＳＩＯＮ
]])

function rBypassX1()
  gg.setVisible(false)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
end

gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_CODE_APP | gg.REGION_ANONYMOUS)
gg.getResults(5000)

function rBypassX2()
  gg.setVisible(false)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.toast("✔ BYPASS has been activated\nSecurity Removed!!!")
end

function kampret(key, str)
  gg.setVisible(false)
  local result = ""
  local xorKey = key % 256
  
  for i = 1, #str, 2 do
    local hex = str:sub(i, i + 1)
    if hex and #hex == 2 then
      local num = tonumber(hex, 16)
      if num then
        local byte = bit32.bxor(num, xorKey)
        result = result .. string.char(byte)
      end
    end
  end
  return result
end

gg.toast("⌛️ Loading......")
local function main()
  gg.setVisible(false)
  local encryptedCode = "print('BETA VERSION')" 
  local encryptedHex = ""
  for i = 1, #encryptedCode do
    local byte = string.byte(encryptedCode, i)
    encryptedHex = encryptedHex .. string.format("%02X", bit32.bxor(byte, 171))
  end
  
  local decryptedCode = kampret(171, encryptedHex)
  local loadFunc, loadError = load(decryptedCode)
  if loadFunc then
    loadFunc()
    return true
  else
    return false
  end
end

gg.setVisible(false)
local success = pcall(function()
  if main() then
    rBypassX1()
    rBypassX2()
    gg.toast("Script activated successfully")
  else
    gg.toast("Failed to execute script")
  end
end)

if not success then
  gg.toast("Error during execution")
end

gg.setVisible(false)
