local Webhook = "https://discord.com/api/webhooks/1233833967036268597/KcfE6Q2vb59v-atzcPoI-nF65uSwo0NMn1MCb5_lBl5ApSo_75oyjWxk9LH7mOhR-s5O" -- your webhook
_G.Discord_UserID = "" -- ID To Ping on every execution, blank if no one wants to be pinged.

local player = game:GetService"Players".LocalPlayer
local joinTime = os.time() - (player.AccountAge*86400)
local joinDate = os.date("!*t", joinTime)
local premium = false
local alt = true
if player.MembershipType == Enum.MembershipType.Premium then
   premium = true
end

if not premium and player.AccountAge >= 70 then
    alt = "Possible"
elseif premium and player.AccountAge >= 70 then
   alt = false
end

local executor = identifyexecutor() or "Unknown"
local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
local AvatarImage = Thing.imageUrl
local msg = {
   ["username"] = "Being a pedo",
   ["avatar_url"] = "https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif",
   ["content"] = ( _G.Discord_UserID ~= "" and  _G.Discord_UserID ~= nil) and tostring("<@".._G.Discord_UserID..">") or " ",
   ["embeds"] = {
       {
           ["color"] = 13261055, --decimal
           ["title"] = "This Bozo executed.",
           ["thumbnail"] = {
               ["url"] = AvatarImage,
           },
           ["fields"] = {
                {
                   ["name"] = "Username",
                   ["value"] = "||"..player.Name.."||",
                   ["inline"] = true
                },
                {
                   ["name"] = "Display Name",
                   ["value"] = player.DisplayName,
                   ["inline"] = true
                },
                {
                   ["name"] = "UID",
                   ["value"] = "||["..player.UserId.."](" .. tostring("https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile")..")||",
                   ["inline"] = true
                },
                {
                   ["name"] = "Game Id",
                   ["value"] = "["..game.PlaceId.."](" .. tostring("https://www.roblox.com/games/" .. game.PlaceId) ..")",
                   ["inline"] = true
                },
                {
                   ["name"] = "Game Name",
                   ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                   ["inline"] = true
                },
                {
                   ["name"] = "Executor Used",
                   ["value"] = executor,
                   ["inline"] = true
                },
                {
                   ["name"] = "Alt",
                   ["value"] = alt,
                   ["inline"] = true
                },
                {
                   ["name"] = "Account Age",
                   ["value"] = player.AccountAge.."day(s)",
                   ["inline"] = true
                },
                {
                   ["name"] = "Date Joined",
                   ["value"] = joinDate.day.."/"..joinDate.month.."/"..joinDate.year,
                   ["inline"] = true
                },
                {
                   ["name"] = "JobId",
                   ["value"] = game.JobId,
                   ["inline"] = true
                },
           },
           ['timestamp'] = os.date("%Y-%m-%dT%X.000Z")
       }
   }
}

request = http_request or request or HttpPost or syn.request
request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})