--[[ This is what you should use when executing

getgenv().URL = "https://example.com"


--]]

local PlayerName = game.Players.LocalPlayer.Name

local Response = syn.request({
    
    
    Url = getgenv().URL,
    
    
    Method = "GET"
    
    
})

print("Process Has Been Confirmed Done, Thanks", PlayerName)

local function rprint(color, msg) 
    rconsoleprint("@@"..color.."@@")
    rconsoleprint(msg)
end

-- Title
do
    rconsoleclear()
    rprint(Response.Body)
end
