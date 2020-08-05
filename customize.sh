# check android
if [ "$API" -lt 25 ]; then
  ui_print "- ! Unsupported sdk: $API"
  abort "- You have to upgrade your Android version at least Marshmallow SDK API 25 to use this module!"
else
  ui_print "- Device sdk: $API"
fi

# check architecture
ABI=$(getprop ro.product.cpu.abi)
if [ "$ABI" == "armeabi" ] || [ "$ABI" == "armeabi-v7a" ]; then
  ARCHM=arm
elif [ "$ABI" == "arm64-v8a" ]; then
  ARCHM=arm64
elif [ "$ABI" == "x86" ]; then
  ARCHM=x86
elif [ "$ABI" == "x86_64" ]; then
  ARCHM=x64
elif [ "$ABI" == "mips" ]; then
  ARCHM=mips
elif [ "$ABI" == "mips64" ]; then
  ARCHM=mips64
fi
ui_print "- Device platform: $ARCHM"
if [ "$ARCHM" == "arm" ]; then
  ui_print "- Deleting arm64 odex file"
  rm -f -R $MODPATH/system/framework/oat/arm64
elif [ "$ARCHM" != "arm" ] && [ "$ARCHM" != "arm64" ]; then
  ui_print "- Deleting arm64 & arm odex files"
  rm -f -R $MODPATH/system/framework/oat
fi

# extract lib
ui_print "- Extracting lib"
unzip -d $MODPATH/system/app/MiMusic -o $MODPATH/system/app/MiMusic/MiMusic.apk lib/$ABI/*
mv $MODPATH/system/app/MiMusic/lib/$ABI $MODPATH/system/app/MiMusic/lib/$ARCHM

# remove unused file
rm -f $MODPATH/LICENSE
