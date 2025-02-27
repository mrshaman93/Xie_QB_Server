fx_version 'cerulean'
game 'gta5'

description 'QB-Inventory'
version '1.1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua',
    '@qb-weapons/config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}
client_script 'client/main.lua'

ui_page {
    'html/ui.html'
}

files {
    'html/ui.html',
    'html/css/main.css',
    'html/js/*.js',
    'html/images/*.png',
    'html/images/*.jpg',
    'html/ammo_images/*.png',
    'html/attachment_images/*.png',
    'html/*.ttf',
    'html/*.mp3'
}

lua54 'yes'

dependency '/assetpacks'