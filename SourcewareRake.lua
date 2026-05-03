local Workspace = game:GetService("Workspace")
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local playername = game.Players.LocalPlayer.DisplayName
local fogambience = game.ReplicatedStorage.CurrentLightingProperties:FindFirstChild("OutdoorAmbient")
local fogend = game.ReplicatedStorage.CurrentLightingProperties:FindFirstChild("FogEnd")
local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local night = game.ReplicatedStorage.Night.Value
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local character = game.Players.LocalPlayer.Character
local rake = game.Workspace:FindFirstChild("Rake")
local highlight = Instance.new("Highlight")
local folder = Instance.new("Folder")
folder.Parent = Workspace
folder.Name = "SourceWare Junk Folder"

local Window = Rayfield:CreateWindow({
    Name = "SourceWare",
    Icon = 0,
    LoadingTitle = "SourceWare",
    LoadingSubtitle = "by 6az",
    ShowText = "SourceWare",
    Theme = "Default",
    ToggleUIKeybind = "Q",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Porn Folder",
        FileName = "Gay hot sex",
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true,
    },
})

local MainTab = Window:CreateTab("General", 4483362458)
local MainSection = MainTab:CreateSection("Main")
local LocalPlayerTab = Window:CreateTab("LocalPlayer", 4483362458)
local ESPTab = Window:CreateTab("ESP", 4483362458)
local HelpfulTab = Window:CreateTab("Helpful", 4483362458)
local FunTab = Window:CreateTab("RemoteEvents", 4483362458)
local DebugTab = Window:CreateTab("Debug", 4483362458)
local supplycrateinstaopenbutton = HelpfulTab:CreateToggle({
    Name = "Insta-Open SupplyCrates",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local supplycrates = game.Workspace.Debris.SupplyCrates:GetChildren()
        if Value then
            if supplycrates then
                connection = game.Workspace.Debris.SupplyCrates.ChildAdded:Connect(function(child)
                    if child.Name == "Box" then
                        child.UnlockValue.Value = 100
                    end
                end)
            end
            for i, v in pairs(supplycrates) do
                if v.Name == "SupplyCrate" then
                    local j = v:FindFirstChild("Box")
                    if j:FindFirstChild("UnlockValue") then
                        j.UnlockValue.Value = 100
                    end
                end
            end
        end
    end,
})
local Tower = FunTab:CreateSection("Observation Tower")
local KnockTrapDoor = FunTab:CreateButton({
    Name = "Knock on TrapDoor",
    Callback = function()
        local doorevent = game.Workspace.Map.ObservationTower.Lights:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.ObservationTower.Door.DoorLever:FindFirstChild("DoorGUIPart")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            doorevent:FireServer("Knock")
        end
    end,
})
local OpenTrapDoor = FunTab:CreateButton({
    Name = "Open TrapDoor",
    Callback = function()
        local doorevent = game.Workspace.Map.ObservationTower.Lights:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.ObservationTower.Door.DoorLever:FindFirstChild("DoorGUIPart")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            doorevent:FireServer("Door2")
        end
    end,
})
local CloseTrapDoor = FunTab:CreateButton({
    Name = "Close TrapDoor",
    Callback = function()
        local doorevent = game.Workspace.Map.ObservationTower.Lights:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.ObservationTower.Door.DoorLever:FindFirstChild("DoorGUIPart")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            doorevent:FireServer("Door", true)
        end
    end,
})
local ToggleLights = FunTab:CreateButton({
    Name = "Toggle Lights",
    Callback = function()
        local doorevent = game.Workspace.Map.ObservationTower.Lights:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.ObservationTower.Door.DoorLever:FindFirstChild("DoorGUIPart")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            doorevent:FireServer("Light")
        end
    end,
})
local SafeHouse = FunTab:CreateSection("SafeHouse")
local OpenSafeHouseDoor = FunTab:CreateButton({
    Name = "Toggle SafeHouse Door",
    Callback = function()
        local doorevent = game.Workspace.Map.SafeHouse.Door:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.SafeHouse.Door:FindFirstChild("Door")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            doorevent:FireServer("Door")
        end
    end,
})
local KnockDoor = FunTab:CreateButton({
    Name = "Knock on SafeHouse Door",
    Callback = function()
        local doorevent = game.Workspace.Map.SafeHouse.Door:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.SafeHouse.Door:FindFirstChild("Door")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            doorevent:FireServer("Knock")
        end
    end,
})
local ToggleSafeHouseLights = FunTab:CreateButton({
    Name = "Toggle SafeHouse Lights",
    Callback = function()
        local event = game.Workspace.Map.SafeHouse.Door:FindFirstChild("RemoteEvent")
        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local rk = game.Workspace.Map.SafeHouse.Door:FindFirstChild("Door")

        local distance = (hrp.Position - rk.Position).Magnitude

        if distance > 30 then
            Rayfield:Notify({
                Title = "The Distance Between you and the door is too far!",
                Content = "Failed to Initialize Function",
                Duration = 6.5,
                Image = 4483362458,
            })
        else
            event:FireServer("Light")
        end
    end,
})
local destroytraphitboxes = HelpfulTab:CreateToggle({
    Name = "Destroy All Trap Hitboxes",
    CurrentValue = false,
    Flag = "Toggle2", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local traps = game.Workspace.Debris.Traps:GetChildren()
        if Value then
            for i, v in pairs(traps) do
                local hitboxtrap = v:FindFirstChild("HitBox")
                hitboxtrap:Destroy()
            end

            game.Workspace.Debris.Traps.ChildAdded:Connect(function(child)
                if child.Name == "RakeTrapModel" then
                    task.wait(1)
                    local hitbox = child:FindFirstChild("HitBox")
                    hitbox:Destroy()
                end
            end)
        end
    end,
})
local stunstick = nil
local stunstickfindconnchar = nil
local stunstickbackpackconn = nil
local rakehrp = nil
local rakehrpexists = false
local rakehrpfindconn = nil
local stunstickfound = false
local stunstickevent = nil
local killaura = HelpfulTab:CreateToggle({
    Name = "Rake Kill-Aura",
    CurrentValue = false,
    Flag = "KillauraToggle",
    Callback = function(Value)
        if Value then
            local plr = game.Players.LocalPlayer
            local char = plr:FindFirstChild("Character")
            local stunstick = char:FindFirstChild("StunStick")

            if not stunstick then
                stunstickfound = false
            end
            stunstickfindconnchar = char.ChildAdded:Connect(function(child)
                if child.Name == "StunStick" then
                    stunstickfound = true
                    stunstickevent = child:FindFirstChild("Event")
                end
            end)
            stunstickbackpackconn = char.ChildAdded:Connect(function(child)
                if child.Name == "StunStick" then
                    stunstickfound = true
                    stunstickevent = child:FindFirstChild("Event")
                end
            end)
            rakehrp = game.Workspace.Rake:FindFirstChild("HumanoidRootPart")
            if not rakehrp then
                rakehrpexists = false
            end
            rakehrpfindconn = game.Workspace.ChildAdded:Connect(function(child)
                if child.Name == "Rake" then
                    task.wait(0.3)
                    rakehrp = child:FindFirstChild("HumanoidRootPart")
                    if rakehrp then
                        rakehrpexists = true
                    end
                end
            end)
            while stunstick and Value and rakehrp do
                stunstickevent:FireServer("S")
                stunstickevent:FireServer("H", rakehrp)
                task.wait(0.1)
            end
        end
    end,
})





local Dex = DebugTab:CreateButton({
    Name = "Load Dex++ Explorer",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))()
    end,
})
local HydroDex = DebugTab:CreateButton({
    Name = "Load Hydroxide",
    Callback = function()
        local owner = "Upbolt"
        local branch = "revision"

        local function webImport(file)
            return loadstring(
                game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)),
                file .. '.lua')()
        end

        webImport("init")
        webImport("ui/main")
    end,
})
local billboardgui = nil
local RakeESPToggle = ESPTab:CreateToggle({
    Name = "Rake ESP",
    CurrentValue = false,
    Flag = "Toggle4",
    Callback = function(Value)
        local highlight = nil
        local connection = nil
        local rakehead = nil
        local frame = nil
        local textlbl = nil
        function applyHighlight(target)
            if highlight then
                highlight:Destroy()
            end
            highlight = Instance.new("Highlight")
            highlight.FillColor = Color3.fromRGB(255, 0, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = target
        end

        if Value then
            local rake = workspace:FindFirstChild("Rake", true)
            if rake then
                applyHighlight(rake)
            end

            connection = workspace.ChildAdded:Connect(function(child)
                if child.Name == "Rake" then
                    applyHighlight(child)
                end
            end)
        else
            if highlight then
                highlight:Destroy()
                highlight = nil
            end
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end,
})

local speedConnection = nil
-- REVISE LOGIC ON THE WALKSPEED CHANGER
local SpeedSlider = LocalPlayerTab:CreateSlider({
    Name = "Walkspeed Changer",
    Range = { 16, 32 },
    Increment = 1,
    Suffix = "Walkspeed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(Value)
        if speedConnection then
            speedConnection:Disconnect()
        end

        humanoid.WalkSpeed = Value

        speedConnection = humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            humanoid.WalkSpeed = Value
        end)
    end,
})

local howmuchtime = HelpfulTab:CreateToggle({
    Name = "Show Time",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            local playergui = game.Players.LocalPlayer.PlayerGui
            local screengui = Instance.new("ScreenGui", playergui)
            screengui.Name = "TimerGui"
            local textlabel = Instance.new("TextLabel", screengui)
            textlabel.Position = UDim2.new(0.404, 0, 0, 0)
            textlabel.Size = UDim2.new(0, 337, 0, 50)
            textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            textlabel.TextSize = 50
            textlabel.Interactable = true
            textlabel.BackgroundTransparency = 1
            game.ReplicatedStorage.Timer.Changed:Connect(function(newValue)
                if game.ReplicatedStorage.Night.Value == true then
                    textlabel.Text = "Time Until Day: " .. newValue
                else
                    textlabel.Text = "Time Until Night: " .. newValue
                end
            end)
        else
            local playergui = game.Players.LocalPlayer.PlayerGui
            local screengui = playergui:FindFirstChild("TimerGui")
            if screengui then
                screengui:Destroy()
            end
        end
    end,
})

local howmuchpower = HelpfulTab:CreateToggle({
    Name = "Show Power Level",
    CurrentValue = false,
    Flag = "Toggle3",
    Callback = function(Value)
        if Value then
            local playergui = game.Players.LocalPlayer.PlayerGui
            local screengui = Instance.new("ScreenGui", playergui)
            screengui.Name = "PowerGui"
            local textlabel = Instance.new("TextLabel", screengui)
            textlabel.Position = UDim2.new(0.395, 0, 0.07, 0)
            textlabel.Size = UDim2.new(0, 337, 0, 50)
            textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            textlabel.TextSize = 50
            textlabel.Interactable = true
            textlabel.BackgroundTransparency = 1
            local pwlevel = game.ReplicatedStorage.PowerValues.PowerLevel.MaxValue
            local pwval = game.ReplicatedStorage.PowerValues.PowerLevel.Value
            textlabel.Text = "Power: " .. pwval .. "/" .. pwlevel
            game.ReplicatedStorage.PowerValues.PowerLevel.Changed:Connect(function(newValue)
                textlabel.Text = "Power: " .. newValue .. "/" .. pwlevel
                if newValue == 0 then
                    textlabel.Text = "No Power!"
                end
            end)
        else
            local playergui = game.Players.LocalPlayer.PlayerGui
            local screengui = playergui:FindFirstChild("PowerGui")
            if screengui then
                screengui:Destroy()
            end
        end
    end,
})
local flaregunexists = false
local flaregunconn = nil
local flaregun = nil
local flaregunchild = nil
local flaregunremovedconn = nil
local stealflaregunToggle = HelpfulTab:CreateToggle({
    Name = "Auto-Grab Flaregun",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        local leftleg = game.Players.LocalPlayer.Character:FindFirstChild("Left Leg")
        if Value then
            if flaregunconn then
                flaregunconn:Disconnect()
            end
            flaregun = game.Workspace:FindFirstChild("FlareGunPickUp")
            if flaregun then
                flaregunchild = flaregun:FindFirstChild("FlareGun")
                Rayfield:Notify({
                    Title = "Flaregun Found!",
                    Content = "Sourceware is grabbing it right now!",
                    Duration = 1.5,
                    Image = 4483362458,
                })
                if flaregunchild then
                    flaregunexists = true
                else
                    flaregunexists = false
                end
            end
            flaregunconn = game.Workspace.ChildAdded:Connect(function(child)
                if child.Name == "FlareGunPickUp" then
                    task.wait(0.5)
                    flaregunchild = child:FindFirstChild("FlareGun")
                    if flaregunchild then
                        flaregunexists = true
                    end
                    print("[SOURCEWARE]: Flaregun was added!")
                    Rayfield:Notify({
                        Title = "Flaregun Found!",
                        Content = "Sourceware is grabbing it right now!",
                        Duration = 1.5,
                        Image = 4483362458,
                    })
                end
            end)
            flaregunremovedconn = game.Workspace.ChildRemoved:Connect(function(child)
                if child.Name == "FlareGunPickUp" then
                    flaregunexists = false
                    print("[SOURCEWARE]: Flaregun was removed!")
                end
            end)
            while flaregunexists do
                flaregunchild.CFrame = leftleg.CFrame
                print("[SOURCEWARE]: Attempting to Grab the Flaregun")
                task.wait(0.1)
            end
        else
            if flaregunconn then
                flaregunconn:Disconnect()
            end
            if flaregunremovedconn then
                flaregunremovedconn:Disconnect()
            end
        end
    end,
})

Rayfield:Notify({
    Title = "SourceWare For Rake Remastered Executed!",
    Content = "Welcome to SourceWare " .. playername .. "!",
    Duration = 6.5,
    Image = 4483362458,
})

local FullBrightButton = MainTab:CreateToggle {
    Name = "FullBright",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            fogambience.Value = Color3.fromRGB(255, 255, 255)
            fogend.Value = 10000
            fogambience.Changed:Connect(function(newValue1)
                if newValue1 ~= Color3.fromRGB(255, 255, 255) then
                    fogambience.Value = Color3.fromRGB(255, 255, 255)
                end
            end)
            fogend.Changed:Connect(function(newValue2)
                if newValue2 ~= 10000 then
                    fogend.Value = 10000
                end
            end)
        end
    end,
}
local ChatSpyButton = MainTab:CreateToggle {
    Name = "Chat Spy",
    CurrentValue = false,
    Flag = "Toggle27",
    Callback = function(Value)
        if Value then
            chatwindow = game.TextChatService:FindFirstChild("ChatWindowConfiguration")
            chatwindow.Enabled = true
        else
            chatwindow.Enabled = false
        end
    end,
}
