--UI based off of many of Psykek's UI's Psykek#3699
 
local FurriousUI = Instance.new("ScreenGui")
local Topframe = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("ImageButton")
local BottomFrame = Instance.new("Frame")
local Gamepass = Instance.new("TextButton")
local AntiInfection = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Clip = Instance.new("TextButton")
local Information = Instance.new("TextLabel")
 
FurriousUI.Name = "FurriousUI"
FurriousUI.Parent = game.CoreGui
 
Topframe.Name = "Topframe"
Topframe.Parent = FurriousUI
Topframe.Active = true
Topframe.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Topframe.BorderSizePixel = 0
Topframe.Position = UDim2.new(0.251643211, 0, 0.216014892, 0)
Topframe.Size = UDim2.new(0, 384, 0, 28)
 
Title.Name = "Title"
Title.Parent = Topframe
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.239583313, 0, 0, 0)
Title.Size = UDim2.new(0, 132, 0, 27)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Furrious UI: "
Title.TextColor3 = Color3.fromRGB(185, 185, 185)
Title.TextSize = 15.000
 
Close.Name = "Close"
Close.Parent = Topframe
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.92968744, 0, 0, 0)
Close.Size = UDim2.new(0, 28, 0, 28)
Close.Image = "rbxassetid://3944676352"
Close.ImageColor3 = Color3.fromRGB(186, 186, 186)
Close.ScaleType = Enum.ScaleType.Fit
 
BottomFrame.Name = "BottomFrame"
BottomFrame.Parent = Topframe
BottomFrame.Active = true
BottomFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
BottomFrame.BorderSizePixel = 0
BottomFrame.Position = UDim2.new(0, 0, 0.992788315, 0)
BottomFrame.Size = UDim2.new(0, 384, 0, 175)
 
Gamepass.Name = "Gamepass"
Gamepass.Parent = BottomFrame
Gamepass.Active = true
Gamepass.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Gamepass.BorderSizePixel = 0
Gamepass.Position = UDim2.new(0.1, 0, 0.15, 0)
Gamepass.Size = UDim2.new(0, 132, 0, 27)
Gamepass.Font = Enum.Font.Ubuntu
Gamepass.Text = "Z | Gamepass Items"
Gamepass.TextColor3 = Color3.fromRGB(185, 185, 185)
Gamepass.TextSize = 14.000
 
AntiInfection.Name = "AntiInfection"
AntiInfection.Parent = BottomFrame
AntiInfection.Active = true
AntiInfection.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
AntiInfection.BorderSizePixel = 0
AntiInfection.Position = UDim2.new(0.1, 0, 0.4, 0)
AntiInfection.Size = UDim2.new(0, 132, 0, 27)
AntiInfection.Font = Enum.Font.Ubuntu
AntiInfection.Text = "X | Anti-Infection"
AntiInfection.TextColor3 = Color3.fromRGB(185, 185, 185)
AntiInfection.TextSize = 14.000
 
Noclip.Name = "Noclip"
Noclip.Parent = BottomFrame
Noclip.Active = true
Noclip.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.5, 0, 0.15, 0)
Noclip.Size = UDim2.new(0, 132, 0, 27)
Noclip.Font = Enum.Font.Ubuntu
Noclip.Text = "N | Noclip"
Noclip.TextColor3 = Color3.fromRGB(185, 185, 185)
Noclip.TextSize = 14.000
 
Clip.Name = "Clip"
Clip.Parent = BottomFrame
Clip.Active = true
Clip.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Clip.BorderSizePixel = 0
Clip.Position = UDim2.new(0.5, 0, 0.4, 0)
Clip.Size = UDim2.new(0, 132, 0, 27)
Clip.Font = Enum.Font.Ubuntu
Clip.Text = "C | Clip"
Clip.TextColor3 = Color3.fromRGB(185, 185, 185)
Clip.TextSize = 14.000
 
Information.Name = "Information"
Information.Parent = BottomFrame
Information.Active = true
Information.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Information.BorderSizePixel = 0
Information.Position = UDim2.new(0.2, 0, 0.6, 0)
Information.Size = UDim2.new(0, 200, 0, 50)
Information.Font = Enum.Font.Ubuntu
Information.Text = "UI by Psykek#3699\nNeptune#8293"
Information.TextColor3 = Color3.fromRGB(185, 185, 185)
Information.TextSize = 15.000
 
Topframe.Active = true
Topframe.Draggable = true
 
Close.MouseButton1Click:Connect(function()
    FurriousUI:Destroy()
end)
 
Gamepass.MouseButton1Click:Connect(function()
    game:GetService("ReplicatedStorage").ToolPurchase:FireServer("InfectedBasherPan")
    game:GetService("ReplicatedStorage").ToolPurchase:FireServer("InfectedBasherBat")
    game:GetService("ReplicatedStorage").ToolPurchase:FireServer("FlameThrower")
end)
 
AntiInfection.MouseButton1Click:Connect(function()
    while wait(0) do
        game:GetService("ReplicatedStorage").PlayerInfected:FireServer(false)
    end
end)
 
Noclip.MouseButton1Click:Connect(function()
    local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
end)
 
Clip.MouseButton1Click:Connect(function()
    local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = true elseif v.ClassName == "Model" then v.Head.CanCollide = true end end) end end game:service("RunService").Stepped:wait() end
end)
 
 
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.N then
        local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
 
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.C then
        local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = true elseif v.ClassName == "Model" then v.Head.CanCollide = true end end) end end game:service("RunService").Stepped:wait() end
    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
 
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Z then
        game:GetService("ReplicatedStorage").ToolPurchase:FireServer("InfectedBasherPan")
        game:GetService("ReplicatedStorage").ToolPurchase:FireServer("InfectedBasherBat")
        game:GetService("ReplicatedStorage").ToolPurchase:FireServer("FlameThrower")
    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
 
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.X then
        while wait(0) do
            game:GetService("ReplicatedStorage").PlayerInfected:FireServer(false)
        end
    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)