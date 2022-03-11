
fx_version 'cerulean'
games { 'gta5' }

author 'Shadow Development'
server_scripts{
    'config.lua',
    'server/*.lua'
}

shared_script 'config.lua'

client_scripts{
    '@menuv/menuv.lua',
    'config.lua',
    'client/*.lua'
}