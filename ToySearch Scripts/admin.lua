local admins = {"FreakingHulk", "nutkitten"}
local datastore = game:GetService("DataStoreService")
game.Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg)
        if msg:lower():sub(1,6) == ":kick " then
            local plr = msg:lower()
            if plr:sub(7,10) == "all" then 
                for _,players in pairs(game.Players:GetPlayers()) do 
                    players:Kick("All players have been kicked.")
                end
            end
            local plrs = game.Players:GetPlayers()
            for _,players in pairs(plrs) do
                if players.Name == plr then 
                    if admins[players.Name] then
                        warn("Player tried to kick admin.")
                        players.PlayerGui:SetCore("Notification", {
                            Title = "Cannot kick admin;",
                            Text = "You just tried to kick an admin! Admins can't be kicked."
                        })
                    else
                        players:Kick("You have been kicked by a moderator.")
                    end

                end
            end
        else
            
        end
    end)
end)