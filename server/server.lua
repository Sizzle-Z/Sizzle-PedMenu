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

RegisterServerEvent('permcheck')
AddEventHandler('permcheck', function()
	  if IsPlayerAceAllowed(source, Config.Ace) then
            TriggerClientEvent('returnPerms', source, true)
      end
end)

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

































































Citizen.CreateThread(function()
        Citizen.Wait(5000)
        
        print('Ped menu made by ^5Sizzle#0007^7')
end)