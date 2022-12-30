HttpService = game:GetService("HttpService")
getgenv().URL = "https://discord.com/api/webhooks/1058058638142492692/S2egciQpdW50fRDxbFLnkAj0QNY9KwaH09oyitPMtuzaLy3oTKUhUsVcpEOrQAxmePw_"


local Response = syn.request(
{
    Url = getgenv().URL,
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Your script has been executed**",

            ["description"] = game.Players.LocalPlayer.DisplayName.." has executed the script.",

            ["type"] = "rich",

            ["color"] = tonumber(0xffffff),

            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
            },

            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Asset.ashx?Width=768&Height=432&AssetID="..game.PlaceId
            },
            
            ["fields"] = {
                {
                    ["name"] = "Hardware ID",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
        }}
    })
}
)