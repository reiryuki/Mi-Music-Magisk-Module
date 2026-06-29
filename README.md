# Mi Music & Dirac or Mi Sound EQ UI Magisk Module

## DISCLAIMER
- Miui apps are owned by Xiaomi™.
- The MIT license specified here is for the Magisk Module only, not for Miui apps.

## Descriptions
- Music app by Xiaomi MIUI ported for any non-Miui ROM
- Dirac/Mi Sound equalizer UI for any ROM that has in-built Dirac/Mi Sound effect only

## Sources
- https://apkmirror.com com.miui.player by Mi Music
- libmagiskpolicy.so: Magisk (stable) 30.7 (30700)

## Changelog

v2.14
- Update libmagiskpolicy.so from Magisk (stable) 30.7 (30700)
- Resets module folders/files permissions at post-fs-data
- Move _uninstall.log to /data/adb/logs/
- Prepare /storage/emulated/"$USR"/Android/data/com.miui.player/files

v2.13
- Update MiuiMusicGlobal.apk v7.21.01.092709i
- Fix permissions
- Minimum SDK 24
- Add Action button to clear app caches
- Fix bug in uninstall.sh

v2.12
- Fix script bug

v2.11
- Fix permissions
- Add Dirac EQ UI for ROM supported Dirac soundfx only
- Fix MagiskHide & SUList
- Change module name

v2.10
- Redirect /sdcard to /data/media/\"$UID\"
- Fix MagiskHide & SUList

v2.9
- Specify UID at script
- Add optional debug.log=1 for more detailed install log
- Move uninstall log to /data/media/.../..._uninstall.log

v2.8
- KernelSU support
- Magisk v26.1 support
- Save install log at /sdcard/..._recovery.log while installing via Recovery
- Save uninstall log at /data/adb/modules/..._uninstall.log
- Fix optional permissive mode
- Sets blacklist/whitelist

v2.7
- Fix resources conflict in some ROMs
- Fix sepolicy denials
- Cleaning protected storage
- Using sys.boot_completed=1 detection

v2.6
- Fix sepolicy denials
- Fix permissions
- Script enhancements

v2.5
- package_cache deletion
- Updated MiuiMusicGlobal.apk version
- Remove Play Store support
- Requires Miui Core v4.3-stable or above
- Allow installation via recovery
- Minimum SDK 21
- Fix permissions
- Removes some ads components
- Remove miui-stat.jar library

## Screenshots
https://t.me/ryukimodsscreenshots/42

## Requirements
- Android 7.0 (SDK 24) and up
- Magisk or Kitsune Mask or KernelSU or Apatch installed
- Dirac/Mi Sound EQ UI requires Miui Core Magisk Module installed and ROM supported in-built Dirac/Mi Sound effect

## Installation Guide & Download Link
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings and install https://github.com/KernelSU-Modules-Repo/meta-overlayfs or https://github.com/KernelSU-Modules-Repo/magic_mount_rs or https://github.com/KernelSU-Modules-Repo/hybrid_mount or https://github.com/maxsteeel/nomount first depending on ROM compatibility
- Install Miui Core Magisk Module first if necessary: https://github.com/reiryuki/Miui-Core-Magisk-Module
- Install this module https://devuploads.com/23buc007g2in via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- If you are using SUList, you need to allow list manually your home launcher app (enable show system apps) and reboot afterwards

## Optionals
Global: https://t.me/ryukinotes/35

## Troubleshootings
Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


