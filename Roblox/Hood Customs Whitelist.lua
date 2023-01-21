local http_request = syn and syn.request or request;
local hwidPaste = loadstring(game:HttpGet(""))()

local Nord = loadstring(game:HttpGetAsync("https://scripts.nord.vip/NordNotifs.lua", true))();
_G.Config = { ["Theme"] = "Discord" }

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid = decoded.headers['Syn-Fingerprint']

for i, v in pairs(hwidPaste) do
    if v == hwid then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SeasonalKirito/projects/main/Roblox/hood%20customs"))()
    else
        setclipboard(hwid)
        Nord:Notify(nil, "HWID Not detected | Not Whitelisted | HWID Copied to clipboard", "decoded error", 5);
    end
end
