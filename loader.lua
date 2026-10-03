print("[KSGOD] Loader started")

local URL = "https://raw.githubusercontent.com/ksgod55/ksgod/main/main.lua"

local success, result = pcall(function()
    return game:HttpGet(URL)
end)

if not success then
    warn("[KSGOD] HttpGet ERROR:")
    warn(result)
    return
end

print("[KSGOD] Download success")
print("[KSGOD] Source length:", #result)

local func, err = loadstring(result)

if not func then
    warn("[KSGOD] loadstring ERROR:")
    warn(err)
    return
end

print("[KSGOD] Executing main.lua")

local ok, executeError = pcall(func)

if not ok then
    warn("[KSGOD] main.lua ERROR:")
    warn(executeError)
    return
end

print("[KSGOD] Finished successfully")
