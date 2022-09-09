local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Key Auth", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

loadstring(game:HttpGet("https://raw.githubusercontent.com/Grayy12/KeySys/main/Protected%20(4).lua",true))()

getgenv().KeyInput = "string"

function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end

function CheckKey()
    if sf_key == KeyInput then
        Destroy()
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Lammatrexeee/Silent-Aim-Aimblox/main/Aimblox%20Script.lua?token=GHSAT0AAAAAABYS5IJT2DRZEAEIV2J3PR56YY3ORAQ')))()
        local Window = OrionLib:MakeWindow({Name = "Silent Aim Aimblox", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    end
end

local Tab = Window:MakeTab({
    Name = "Key Auth",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Insert the key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        KeyInput = Value 
    end      
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
          CheckKey()
      end    
})
