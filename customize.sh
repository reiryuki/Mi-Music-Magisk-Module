# check android
if [ "$API" -lt 25 ]; then
  ui_print "- ! Unsupported sdk: $API"
  abort "- You have to upgrade your Android version at least Marshmallow sdk API 25 to use this module!"
else
  ui_print "- Device sdk: $API"
fi

# check architecture
ui_print "- Device platform: $ARCH"
if [ "$ARCH" == "arm" ]; then
  ui_print "- Deleting arm64 odex file"
  rm -f -R $MODPATH/system/framework/oat/arm64
elif [ "$ARCH" != "arm" ] && [ "$ARCH" != "arm64" ]; then
  ui_print "- Deleting arm64 & arm odex files"
  rm -f -R $MODPATH/system/framework/oat
fi

# remove unused file
rm -f $MODPATH/LICENSE

# instruction
ui_print "- Please clear Play Store data manually after reboot!"
