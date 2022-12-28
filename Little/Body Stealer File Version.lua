--[[ this is greys out so the getgenv's are on the surface and this is the inner.

For people looking at my code i will explain it as i have notes to the side of it.

getgenv().FILE = "" -- This is the name of the file. Make sure to have .txt or .lua at the end or it may not work
                    -- ONLY USE LETTERS NO SYMBOLS OR THE SCRIPT WILL BREAK, periods are an end type statement
getgenv().URL = "https://example.com" -- The Website Which you want to steal the body from
loadstring(Whatever)


]]-- -- This is what people are gonna see on script blox

local PlayerName = game.Players.LocalPlayer.Name -- This is for the print "print("Process Has Been Confirmed Done, Thanks", PlayerName)" this is for cosmetics

local Response = syn.request({ -- This is requesting to get the body from the website
    Url = getgenv().URL, -- This is calling getgenv().URL as you should have put the website their
    Method = "GET" -- Its getting the body of the website, i could do post and ect to send discord webhook messages or something.
})

print("Process Has Been Confirmed Done, Thanks", PlayerName) -- This is what i explained at the local PlayerName thing.

writefile(getgenv().FILE, Response.Body) -- This is createing the file, the resonse body is what is what i am getting from the syn request so the body of the website,
                                         -- the getgenv().FILE is the name of this file as you need to know what to open up to find the whole purpose of this script.

-- Bro im so fucking annoyed rn why did scriptblox take down my print script i just wanted to show people a simple nit needed script.

-- Go check out SeasonWare my scripthub "https://dsc.gg/season-ware"