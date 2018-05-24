-- Insert script into HopperBin.

script.Parent.Selected:connect(function(m)
	m.Button1Down:connect(function()
		local p = game.Players:FindFirstChild(m.Target.Parent.Name)
		if p then
			p:Kick("Kicked by Moderator.")
		end
	end)
end)
