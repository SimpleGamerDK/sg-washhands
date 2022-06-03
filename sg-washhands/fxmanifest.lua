fx_version 'cerulean'
game 'gta5'

author 'Simple - Owner of Simple Networks'
version '1.2.0'

dependencies {
    "PolyZone"
}

client_script {
    'client.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',

}

shared_script 'config.lua'