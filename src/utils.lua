function DisableAC()
  


--███████╗████████╗ ██████╗ ██████╗ ███╗   ███╗██╗    ██╗██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
--██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗████╗ ████║██║    ██║██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
--███████╗   ██║   ██║   ██║██████╔╝██╔████╔██║██║ █╗ ██║███████║███████║██║     █████╔╝ █████╗  ██████╔╝
--╚════██║   ██║   ██║   ██║██╔══██╗██║╚██╔╝██║██║███╗██║██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
--███████║   ██║   ╚██████╔╝██║  ██║██║ ╚═╝ ██║╚███╔███╔╝██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
--╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝


local player = game.Players.LocalPlayer
local storage = game.ReplicatedStorage
local dirtyRemotes = {"NewYear", "hmm", "Whizz", "Kick", "ApplyVel", "YouGotXP", "Flames", "ReplicateGear", "GetMapVote", "Vote", "DoVotekick", "TCtullysBigStinkyEvent2", "TCtullysBigStinkyEvent", "MoreFreeBadgesEnjoy", "COMMAND", "Fire", "BurnMe", "ForceTeam", "SCP", "Glitch", "ThrowBall"}

-- Deleting most bindable events.
for _, v in pairs(player.PlayerGui.Menew:GetChildren()) do
    if v:IsA("BindableEvent") then
        v:Destroy()    
    end
end

-- Deleting most bindable events.
for _, v in pairs(player.PlayerGui:GetChildren()) do
    if v:IsA("BindableEvent") then
        v:Destroy()    
    end
end


-- These events only ban, we don't need them.
for _, v in pairs(storage:GetChildren()) do
    if v:IsA("RemoteEvent") or v:IsA("BindableEvent") then
        v:Destroy()    
    end
end

-- We don't need them aswell. Some of them tho.
for _, v in pairs(storage.Modules:GetChildren()) do
    if v.Name == "ping" or v.Name == "Sound" or v.Name == "Teams" then
        continue
    end
    v:Destroy()
end

for _, v in pairs(storage.SCRIPT:GetChildren()) do
    v:Destroy()
end

for _, v in pairs(storage.Functions:GetChildren()) do
    if v.Name == "Ping" then
        continue
    end
    v:Destroy()
end


for _, v in pairs(storage.Events:GetChildren()) do
    if v:IsA("RemoteFunction") or v:IsA("BindableEvent") then
        if v.Name == "GetPing" or v.Name == "GetInventory" or v.Name == "AssetStreaming" or v.Name == "Redeem" then
            continue
        end
        v:Destroy()
    end
    
    
end

for _, v in pairs(dirtyRemotes) do
    storage.Events[v]:Destroy()
end

for _, v in pairs(storage:GetChildren()) do
    if v:IsA("ModuleScript") then
        if v.Name == "KillEffects" then
            continue    
        end
        v:Destroy()
    end
end

for _, v in pairs(storage:GetChildren()) do
    if v:IsA("Script") then
        v:Destroy()
    end
end

for _, v in pairs(storage:GetChildren()) do
    if v:IsA("RemoteFunction") then
        v:Destroy()
    end
end



-- Packages clean up

game.CorePackages.Packages:Destroy()

end
