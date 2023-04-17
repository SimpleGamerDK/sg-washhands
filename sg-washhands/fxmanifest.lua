fx_version 'cerulean'
game 'gta5'

author 'Simple - Owner of Simple Networks'
version '1.0.1'

dependencies {
    "PolyZone"
}

client_script {
    'locals.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua',
}

shared_script {
    'config.lua'
}