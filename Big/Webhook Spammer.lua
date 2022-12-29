HttpService = game:GetService("HttpService")
getgenv().Spammer = false







local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Webhook Spammer",
    LoadingTitle = "Webhook Spammer",
    LoadingSubtitle = "by Seasonal",
    Discord = {
       Enabled = true,
       Invite = "TqHYYVyyJR", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    }
 })

 local Tab = Window:CreateTab("Home", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Credits")

 local Paragraph = Tab:CreateParagraph({Title = "Credits", Content = "This was made by Seasonal / SeasonWare / Seasonware Extras, use this if you want but i will be adding more message fields later. Have a good Day / Night"})

 local Tab = Window:CreateTab("Spammer", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Information")

 local Input = Tab:CreateInput({
    Name = "Title",
    PlaceholderText = "Input Title",
    RemoveTextAfterFocusLost = false,
    Callback = function(Title)
        getgenv().Title = Title
    end,
 })

 local Input = Tab:CreateInput({
    Name = "Description",
    PlaceholderText = "Input Description",
    RemoveTextAfterFocusLost = false,
    Callback = function(Description)
        getgenv().Description = Description
    end,
 })

 local Input = Tab:CreateInput({
    Name = "Color",
    PlaceholderText = "Try *0xffffff*",
    RemoveTextAfterFocusLost = false,
    Callback = function(Color)
        getgenv().Color = Color
    end,
 })

 local Section = Tab:CreateSection("Webhook")

 local Input = Tab:CreateInput({
    Name = "Webhook",
    PlaceholderText = "Input Webhook",
    RemoveTextAfterFocusLost = false,
    Callback = function(Webhook)
        getgenv().URL = Webhook
        Rayfield:Notify({
            Title = "Successful",
            Content = "The operation of Inputting the webhook was Successful",
            Duration = 3,
            Image = 7733924046,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Alright!",
                  Callback = function()
                  
               end
            },
         },
         })
    end,
 })

 local Section = Tab:CreateSection("Spammer")

 local Toggle = Tab:CreateToggle({
    Name = "Spam",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().Spammer = Value
        if Value then
            spammer(spammer)
        end
    end,
 })

 local Paragraph = Tab:CreateParagraph({Title = "Spam Information", Content = "This is using the wait() method if you want, go into the code and change line 126 to task.wait() it might be faster than wait()"})

 function spammer(spammer)
    spawn(function()
        while getgenv().Spammer == true do
                        ---
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
            ["title"] = getgenv().Title,

            ["description"] = getgenv().Description,

            ["type"] = "rich",

            ["color"] = tonumber(getgenv().color),

        }}
    })
}
)
                    ---
            wait()
        end
    end)
end