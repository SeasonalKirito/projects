-- getgenv().webhook = ""




























































HttpService = game:GetService("HttpService")
local plrs = game.Players
local lp = plrs.LocalPlayer
NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()

NotificationLibrary:SendNotification("Success", "Friend Detector has been loaded!", 5)

plrs.PlayerAdded:Connect(function(plr)
if plr:IsFriendsWith(lp.UserId) then
NotificationLibrary:SendNotification("Info", "Your friend "..plr.Name.." has joined the game, Webhook should have been sent to your discord webhook set", 5)
task.wait()





local Response = syn.request(
{
    Url = getgenv().webhook,
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Friend Joined your server**",

            ["description"] = plr.Name.." has joined your game.",

            ["type"] = "rich",

            ["color"] = tonumber(0xffffff),

            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
            },

            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Asset.ashx?Width=768&Height=432&AssetID="..game.PlaceId
            },
            
        }}
    })
}
)

end
end)

plrs.PlayerRemoving:Connect(function(plr)
if plr:IsFriendsWith(lp.UserId) then
NotificationLibrary:SendNotification("Warning", "Your friend "..plr.Name.." has left the game", 5)
end
end)
