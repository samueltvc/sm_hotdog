fx_version 'cerulean'
lua54 'yes'
game 'gta5'

author 'SamuelTV'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

client_scripts {
    '@es_extended/imports.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'client/*.lua'
}

server_scripts {
    '@es_extended/imports.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'server/*.lua'
}

escrow_ignore {
    'config.lua',
	'cl_blip.lua',
	'inventory-addons/items.lua'
}

dependencies {
	'nh-context',
	'ox_target',
    'ox_lib',
    'ox_inventory'
}
