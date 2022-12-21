-- macro

game:GetService("UserInputService").InputBegan:Connect(function(input,chatting)
if input.UserInputType == Enum.UserInputType.Keyboard then
if chatting then IsChatting = true else IsChatting = false end
if input.KeyCode == Key then
	if IsChatting ~= false then return end
    if not toggle then
        toggle = true
    Instance.new("Animation", game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations")).Name = 'Greet'
        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet").AnimationId = 'rbxassetid://3189777795'
        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Play()
        wait(1.6)
        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
        wait()
    for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.Name ~= "Combat" or v.Name ~= "[Wallet]" then
            game:GetService("Players").LocalPlayer.Character:findFirstChildOfClass'Humanoid':EquipTool(v)
        end
    end
    wait()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "S", false, game)
    spawn(function()
while toggle == true do wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0.001)
end
	end)
	Impostor =
		game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid'.Running:Connect(function()
			game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
		end)
        else
        toggle = false
        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet"):Remove()
        Impostor:Disconnect()
    end
end
end
end)
