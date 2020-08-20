# **MIUI Libraries**

## Description
This module will let you be able to use Mi Music Play Store version for any ROM other than MIUI ROM.

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

v1.4
- Remove system.prop to prevent bootloop in some ROMs

v1.5
- Remove unnecessary jars
- Update jar
- Remove mistakes in permissions xml

v1.6
- Fix installation process

v1.7
- Lollipop SDK 21 support
- Remove dex files on module uninstall

## Requirements
- Not in MIUI ROM
- Android Lollipop SDK 21 and Up
- Magisk Installed

## Instructions
- Install this module via Magisk Manager
- Reboot

## Troubleshooting
- If you see Mi Music has double notifications, remove your `ro.miui....` system properties!
- If you can't find Mi Music at Play Store to update or still showing not compatible, clear Play Store data!

## My Channels
- Github: [reiryuki](https://github.com/reiryuki)
- Blog: [reiryuki.blogspot.com](https://reiryuki.blogspot.com)
- FB: [Android Solutions](https://m.facebook.com/reiryukiandroidsolutions/?ref=bookmarks)
- YT: [Rei Ryuki](https://www.youtube.com/channel/UCAZBR3IAu-MSLwGXkZPYxag)

