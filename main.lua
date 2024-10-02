local GameName = "materialize script - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "materialize script :)", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Script = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "materialize things"
})

Scripts:AddButton({
	Name = "Protect the orb (CUSTOM/MEGAROCK/diamond glove required)",
	Callback = function()

fireclickdetector(workspace.Lobby["Diamond"].ClickDetector)
fireclickdetector(workspace.Lobby["MEGAROCK"].ClickDetector)
fireclickdetector(workspace.Lobby["CUSTOM"].ClickDetector)

for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.JetOrb.CFrame
wait(0.05)
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
                    end
                end

for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "PhaseOrb" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PhaseOrb.CFrame
wait(0.05)
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
                    end
                end

for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "GlitchOrb" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GlitchOrb.CFrame
wait(0.05)
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
                    end
                end

	 end
})

Scripts:AddButton({
	Name = "Activate rock mode",
	Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
	 end
})

Scripts:AddButton({
	Name = "De-activate rock mode",
	Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
	 end
})

Scripts:AddButton({
	Name = "Collect Honor Orb (teleports you into orb, not recommended)",
	Callback = function()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
wait(0.05)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.HonorOrb.CFrame
	 end
})

local Anti = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Anti:AddToggle({
	Name = "Anti MEGAROCK/CUSTOM & Noclip MEGAROCK/CUSTOM",
	Default = false,
	Callback = function(Value)
		_G.AntiRock = Value
while _G.AntiRock do
for _,v in pairs(game.Players:GetChildren()) do
                    if v.Character:FindFirstChild("rock") then
                        v.Character:FindFirstChild("rock").CanTouch = false
                        v.Character:FindFirstChild("rock").CanQuery = false
                        v.Character:FindFirstChild("rock").CanCollide = false
                    end
                end
task.wait()
end
	end    
})
