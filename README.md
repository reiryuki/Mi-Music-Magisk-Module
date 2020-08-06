# **MIUI Libraries**

## Description
This module will let you be able to use Mi Music for any ROM other than MIUI and make it updatable in Play Store.

You can install another MIUI apps but it may not be compatible.

## Changelog
v1.1
- Initial release

v1.2
- Add Mi Music to /system/app
- Exclude Mi Music from battery optimization
- Remove unused running services
- Remove Play Store updatable

v1.3
- Move Mi Music to /system/priv-app
- Include back to battery optimization
- Get back Mi Music Play Store version
- Add xml priv-app permissions for compatibility

## Requirements
- Not in MIUI ROM
- Android Marshmallow and Up
- Magisk Installed

## Instructions
- Install this module via Magisk Manager
- Reboot

## Troubleshooting
- If you find that Mi Music has double notifications, remove your `ro.miui....` system properties!
- If Mi Music can't delete your music file which in your external storage, then run this at Terminal Emulator:
- `su`
- `appops set com.miui.player WRITE_MEDIA_AUDIO allow`

## My Channels
- Github: [reiryuki](https://github.com/reiryuki/MIUI-Libraries-Magisk-Module)
- Blog: [reiryuki.blogspot.com](https://reiryuki.blogspot.com)
- FB: [Android Solutions](https://m.facebook.com/rikiirawan99/?ref=bookmarks)
- YT: [Rei Ryuki](https://www.youtube.com/channel/UCAZBR3IAu-MSLwGXkZPYxag)

