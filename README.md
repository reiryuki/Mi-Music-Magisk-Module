# **MIUI Libraries**

## Description
This module will let you be able to use Mi Music for any ROM other than MIUI.

You can install another MIUI apps but it may not be compatible.

## Changelog
v1.1
- Initial release

v1.2
- Add Mi Music to /system/app
- Exclude Mi Music from battery optimization
- Remove unused running services
- Remove Play Store updatable

## Requirements
- Android Marshmallow and Up
- Magisk Installed

## Instructions
- Install this module via Magisk Manager
- Reboot
- If you are in Android 10 and Up and Mi Music can't read any of your music files, then run this at Terminal Emulator:

- su
- sm set-isolated-storage off

- It will reboot automatically!
- If you find that Mi Music has double notifications, then run this at Terminal Emulator:

- su
- appops set com.miui.player START_FOREGROUND ignore

- If Mi Music can't delete your music file that's in your external sdcard, then run this at Terminal Emulator:

- su
- appops set com.miui.player WRITE_MEDIA_AUDIO allow


## My Channels
- Github: [reiryuki](https://github.com/reiryuki/MIUI-Libraries-Magisk-Module)
- Blog: [reiryuki.blogspot.com](https://reiryuki.blogspot.com)
- FB: [Android Solutions](https://m.facebook.com/rikiirawan99/?ref=bookmarks)
- YT: [Rei Ryuki](https://www.youtube.com/channel/UCAZBR3IAu-MSLwGXkZPYxag)

