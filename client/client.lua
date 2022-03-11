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

-- Main Menu Options --
allowed = false

local menu = MenuV:CreateMenu(false, 'Sizzle Ped Menu', 'centerright', 255, 0, 0, 'fab fa-angellist', 'size-125')

if Config.NeedPerms then
    Citizen.CreateThread(function()
        TriggerServerEvent('permcheck', source)
    end)
else
    allowed = true
end
    
function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry) 
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght) 
	blockinput = true 

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
		Citizen.Wait(0)
	end
		
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500) 
		blockinput = false
		return result
	else
		Citizen.Wait(500) 
		blockinput = false 
		return nil 
	end
end

if Config.SearchPed then
    local menu_button2 = menu:AddButton({ icon = '🔎', label = 'Enter Ped Name', value = false, description = 'Find a ped', select = function(btn)
        local ped = KeyboardInput("Ped Name:", "Ped Name Here", 20)

        changeped(ped) 
    end})
end

Citizen.CreateThread(function()
    for k,v in pairs(Config.Peds) do
        local menu_button1 = menu:AddButton({ icon = v.emoji, label = v.name, value = v.ped, description = v.name, select = function(btn)
            changeped(btn.Value)
        end})
    end
end)
    
function ShowInfo(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(true, false)
end
    
function NotifyPerms(reason)
    if Config.Notify == 'default' then
        if reason == 1 then
    	    ShowInfo(Config.NoPerms)
        else
            ShowInfo(Config.Blacklisted)
        end
   end
   if Config.Notify == 'bulletin' then
        if reason == 1 then
            exports.bulletin:Send({
                message = Config.NoPerms,
                timeout = 5000,
                theme = 'error',
            })
        else
            exports.bulletin:Send({
                message = Config.Blacklisted,
                timeout = 5000,
                theme = 'error',
            })
        end
    end
    if Config.Notify == 't-notify' then
        if reason == 1 then
            exports['t-notify']:Alert({
                style = 'error',
                message = Config.NoPerms,
            })
        else
            exports['t-notify']:Alert({
                style = 'error',
                message = Config.Blacklisted,
            })
        end
    end
    if Config.Notify == 'esx' then
        if reason == 1 then
            ESX.ShowNotification(Config.NoPerms)
        else
            ESX.ShowNotification(Config.Blak)
        end
    end
end



    
RegisterNetEvent('returnPerms')
AddEventHandler('returnPerms', function()
    allowed = true
end)

function changeped(ped)
    
    if not isPedBlacklisted(ped) then
        local hash = GetHashKey(ped)
            RequestModel(hash)
        while not HasModelLoaded(hash) do RequestModel(hash)
            Citizen.Wait(0)
        end	
        SetPlayerModel(PlayerId(), hash)	
    else
        NotifyPerms(2)
    end
end

function isPedBlacklisted(model)
	for _, blacklistedPed in pairs(Config.BlacklistedPed) do
		if model == blacklistedPed then
			return true
		end
	end

	return false
end

RegisterCommand(Config.Command, function()
    if allowed then
        menu:Open()
    else
        NotifyPerms(1)
    end
end, false)

if Config.AssignKey then
	RegisterKeyMapping(Config.Command, 'Open Ped Menu', 'keyboard', Config.Key)
end

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