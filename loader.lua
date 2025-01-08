
local http = require("socket.http") -- Wymaga luasocket
local url = "https://raw.githubusercontent.com/your_username/your_repo/branch/script.lua" -- Zmień URL na właściwy po wgraniu pliku
local script, status = http.request(url)

if status == 200 then
    local func = loadstring(script)
    if func then
        print("Uruchamiam pobrany skrypt...")
        func()
    else
        print("Nie udało się załadować skryptu!")
    end
else
    print("Nie udało się połączyć z URL, kod statusu: " .. status)
end
