local BASE_URL =
    "https://raw.githubusercontent.com/ksgod55/ksgod/main/"

local function LoadFile(file)
    local source = game:HttpGet(BASE_URL .. file)
    local func = loadstring(source)

    if not func then
        error("โหลด " .. file .. " ไม่สำเร็จ")
    end

    return func()
end

LoadFile("config.lua")
LoadFile("main.lua")
