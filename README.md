# SOURCEWARE - Rake Remastered

An advanced script utility for The Rake.

## Features
* **Kill-Aura**
* **Insta-Open Supply Crates**
* **Trap Deletion**
## Is this readme AI generated?
Yes it is but i assure you the code is not
## How to Use
Paste the following loadstring into your executor:
```lua
local raw_url = "https://raw.githubusercontent.com/MidnightParadise295/SourceWare-RakeRemastered/main/SourcewareRake.lua"
local success, content = pcall(game.HttpGet, game, raw_url)

if success and content then
    local func, err = loadstring(content)
    if func then
        func()
    else
        warn("Lua Error: " .. err)
    end
else
    warn("Failed to fetch script. Check your internet or the URL.")
end

