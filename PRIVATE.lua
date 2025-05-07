pcall(function()
	game:GetService("CoreGui"):FindFirstChild("HappyNotification"):Destroy()
end)

local gui = Instance.new("ScreenGui")
gui.Name = "HappyNotification"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = game:GetService("CoreGui")

local blurBackground = Instance.new("Frame")
blurBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
blurBackground.BackgroundTransparency = 0.4
blurBackground.Size = UDim2.new(1, 0, 1, 0)
blurBackground.Position = UDim2.new(0, 0, 0, 0)
blurBackground.Parent = gui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.4, 0, 0.3, 0)
mainFrame.Position = UDim2.new(0.3, 0, 0.35, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0, 0)
mainFrame.Parent = blurBackground

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

local shadow = Instance.new("UIStroke")
shadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
shadow.Thickness = 1
shadow.Color = Color3.fromRGB(180, 180, 180)
shadow.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Text = "Notification"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.TextColor3 = Color3.fromRGB(30, 30, 30)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0, 20, 0, 10)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainFrame

local message = Instance.new("TextLabel")
message.Text = "HAPPY script has been updated,\nplease receive the new script."
message.Font = Enum.Font.Gotham
message.TextSize = 20
message.TextWrapped = true
message.TextColor3 = Color3.fromRGB(50, 50, 50)
message.BackgroundTransparency = 1
message.Size = UDim2.new(1, -40, 0.5, 0)
message.Position = UDim2.new(0, 20, 0, 60)
message.TextXAlignment = Enum.TextXAlignment.Left
message.TextYAlignment = Enum.TextYAlignment.Top
message.Parent = mainFrame

local copyBtn = Instance.new("TextButton")
copyBtn.Text = "📋 Copy new script"
copyBtn.Font = Enum.Font.GothamMedium
copyBtn.TextSize = 18
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
copyBtn.Size = UDim2.new(0.45, 0, 0, 40)
copyBtn.Position = UDim2.new(0.05, 0, 0.8, 0)
copyBtn.AutoButtonColor = true
copyBtn.Parent = mainFrame

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 8)
copyCorner.Parent = copyBtn

local gotitBtn = Instance.new("TextButton")
gotitBtn.Text = "✅ Got it"
gotitBtn.Font = Enum.Font.GothamMedium
gotitBtn.TextSize = 18
gotitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
gotitBtn.BackgroundColor3 = Color3.fromRGB(34, 139, 34)
gotitBtn.Size = UDim2.new(0.45, 0, 0, 40)
gotitBtn.Position = UDim2.new(0.5, 0, 0.8, 0)
gotitBtn.AutoButtonColor = true
gotitBtn.Parent = mainFrame

local gotitCorner = Instance.new("UICorner")
gotitCorner.CornerRadius = UDim.new(0, 8)
gotitCorner.Parent = gotitBtn

copyBtn.MouseButton1Click:Connect(function()
	setclipboard('loadstring(game:HttpGet("https://happyscript.happy37135535.workers.dev/"))()')
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Copied",
		Text = "Script copied!",
		Duration = 3
	})
end)

gotitBtn.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
