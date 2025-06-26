local localPlr = game:GetService("Players").LocalPlayer

local tool = Instance.new("Tool")
tool.Name = "Teleport Tool"
tool.ToolTip = "1grim"
tool.RequiresHandle = false
tool.Parent = localPlr.Backpack
tool.Activated:Connect(function()
	local humanoid = localPlr.Character:FindFirstChildOfClass("Humanoid")
	local root = humanoid.RootPart
	local hit = localPlr:GetMouse().Hit

	if humanoid.Sit then
		humanoid.Sit = false
		task.wait()
	end

	if root then
		root.CFrame = CFrame.new(hit.X, hit.Y + 3, hit.Z, select(4, localPlr.Character:GetPivot():GetComponents()))
	end
end)
