--[[
  __  __           _        _              _____ _         _      
 |  \/  |         | |      | |            / ____(_)       | |     
 | \  / | __ _  __| | ___  | |__  _   _  | (___  _ _______| | ___ 
 | |\/| |/ _` |/ _` |/ _ \ | '_ \| | | |  \___ \| |_  /_  / |/ _ \
 | |  | | (_| | (_| |  __/ | |_) | |_| |  ____) | |/ / / /| |  __/
 |_|  |_|\__,_|\__,_|\___| |_.__/ \__, | |_____/|_/___/___|_|\___|
                                   __/ |                          
                                  |___/                           
--]]

Config = {}

Config.Peds = {
	{name = 'Clown', emoji = '🤡', ped = 's_m_y_clown_01'}, -- Ped #1
    {name = 'Chef', emoji = '🧑‍🍳', ped = 's_m_y_chef_01'}, -- Ped #2
}

Config.BlacklistedPed = {
    's_m_y_chef_01', -- Cannot use this ped
}

Config.Notify = 'default' -- default, bulletin, t-notify, esx

Config.Command = 'pedmenu'
Config.AssignKey = true -- Assigns a key to open the menu
Config.Key = 'F5' -- Key to open the menu // Only works if Assign Key is Enabled // https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.NeedPerms = false -- Need perms to open the menu
Config.Ace = 'sizzle.peds' -- The ace they need to open the ped menu

Config.SearchPed = true -- Search for Custom Ped's

Config.NoPerms = 'You do not have permission to open the ped menu!' -- Message that shows if they dont have permission to open ped menu
Config.Blacklisted = 'This is a blacklisted ped!' -- Message that shows if the ped is blacklisted

--[[
  __  __           _        _              _____ _         _      
 |  \/  |         | |      | |            / ____(_)       | |     
 | \  / | __ _  __| | ___  | |__  _   _  | (___  _ _______| | ___ 
 | |\/| |/ _` |/ _` |/ _ \ | '_ \| | | |  \___ \| |_  /_  / |/ _ \
 | |  | | (_| | (_| |  __/ | |_) | |_| |  ____) | |/ / / /| |  __/
 |_|  |_|\__,_|\__,_|\___| |_.__/ \__, | |_____/|_/___/___|_|\___|
                                   __/ |                          
                                  |___/                           
--]]