

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "print F9 Console",
    LoadingTitle = "print F9 Console",
    LoadingSubtitle = "print F9 Console",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "print F9 Console"
    }
})
local Tab = Window:CreateTab("Home", 7733960981) -- Title, Image

local Section = Tab:CreateSection("Imformation")

local Label = Tab:CreateLabel("Why would you even use this script? But its pretty simple, type what you want to print.")

local Label = Tab:CreateLabel("If you dont know how to use this you must have under 5 brain cells.")

local Section = Tab:CreateSection("Credits")

local Label = Tab:CreateLabel("Credits to SeasonWare / SeasonWare Extras 's owner SEASONAL")

local Tab = Window:CreateTab("Print", 7734042580) -- Title, Image

local Section = Tab:CreateSection("More")

local Paragraph = Tab:CreateParagraph({Title = "READ ME", Content = "Printing is one of the most easy codeing type functions as it take simple words to execute like print(i cant put quotes in this or the script will mess up) or maybe print(aLocal) to print something auto not manually"})

local Section = Tab:CreateSection("Printing")

local Input = Tab:CreateInput({
    Name = "Print",
    PlaceholderText = "Code Here",
    RemoveTextAfterFocusLost = false,
    Callback = function(Code)
        print(Code)
    end,
 })
