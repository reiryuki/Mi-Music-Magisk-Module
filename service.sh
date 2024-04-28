MODPATH=${0%/*}

# log
exec 2>$MODPATH/debug.log
set -x

# var
API=`getprop ro.build.version.sdk`

# property
resetprop --delete ro.miui.ui.version.name

# wait
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 10
done

# list
PKGS="`cat $MODPATH/package.txt`
       com.miui.player:remote
       com.miui.player:pushservice
       com.miui.player:crash
       com.miui.player:playcore_missing_splits_activity
       com.miui.player:playcore_dialog_wrapper_activity"
for PKG in $PKGS; do
  magisk --denylist rm $PKG 2>/dev/null
  magisk --sulist add $PKG 2>/dev/null
done
if magisk magiskhide sulist; then
  for PKG in $PKGS; do
    magisk magiskhide add $PKG
  done
else
  for PKG in $PKGS; do
    magisk magiskhide rm $PKG
  done
fi

# grant
PKG=com.miui.player
pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.WRITE_EXTERNAL_STORAGE
if [ "$API" -ge 29 ]; then
  pm grant $PKG android.permission.ACCESS_MEDIA_LOCATION 2>/dev/null
  appops set $PKG ACCESS_MEDIA_LOCATION allow
fi
if [ "$API" -ge 33 ]; then
  pm grant $PKG android.permission.READ_MEDIA_AUDIO
  pm grant $PKG android.permission.READ_MEDIA_VIDEO
  pm grant $PKG android.permission.READ_MEDIA_IMAGES
  pm grant $PKG android.permission.POST_NOTIFICATIONS
  appops set $PKG ACCESS_RESTRICTED_SETTINGS allow
fi
appops set $PKG LEGACY_STORAGE allow
appops set $PKG READ_EXTERNAL_STORAGE allow
appops set $PKG WRITE_EXTERNAL_STORAGE allow
appops set $PKG READ_MEDIA_AUDIO allow
appops set $PKG READ_MEDIA_VIDEO allow
appops set $PKG READ_MEDIA_IMAGES allow
appops set $PKG WRITE_MEDIA_AUDIO allow
appops set $PKG WRITE_MEDIA_VIDEO allow
appops set $PKG WRITE_MEDIA_IMAGES allow
if [ "$API" -ge 30 ]; then
  appops set $PKG MANAGE_EXTERNAL_STORAGE allow
  appops set $PKG NO_ISOLATED_STORAGE allow
  appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
fi
if [ "$API" -ge 31 ]; then
  pm grant $PKG android.permission.BLUETOOTH_CONNECT
  appops set $PKG MANAGE_MEDIA allow
fi
if [ "$API" -ge 34 ]; then
  appops set "$PKG" READ_MEDIA_VISUAL_USER_SELECTED allow
fi
appops set $PKG SYSTEM_ALERT_WINDOW allow
appops set $PKG WRITE_SETTINGS allow
PKGOPS=`appops get $PKG`
UID=`dumpsys package $PKG 2>/dev/null | grep -m 1 Id= | sed -e 's|    userId=||g' -e 's|    appId=||g'`
if [ "$UID" ] && [ "$UID" -gt 9999 ]; then
  appops set --uid "$UID" LEGACY_STORAGE allow
  appops set --uid "$UID" READ_EXTERNAL_STORAGE allow
  appops set --uid "$UID" WRITE_EXTERNAL_STORAGE allow
  if [ "$API" -ge 29 ]; then
    appops set --uid "$UID" ACCESS_MEDIA_LOCATION allow
  fi
  if [ "$API" -ge 34 ]; then
    appops set --uid "$UID" READ_MEDIA_VISUAL_USER_SELECTED allow
  fi
  UIDOPS=`appops get --uid "$UID"`
fi
pm disable $PKG/com.google.android.gms.ads.AdService
pm disable $PKG/com.amazon.device.ads.DTBInterstitialActivity
pm disable $PKG/com.amazon.device.ads.DTBAdActivity
pm disable $PKG/com.google.android.gms.ads.AdActivity
pm disable $PKG/com.zeus.gmc.sdk.mobileads.msa.adjump.AdJumperLoadingActivity
pm disable $PKG/com.xiaomi.mobileads.admob.AppOpen.AdmobAppOpenAdActivity
pm disable $PKG/com.zeus.gmc.sdk.mobileads.columbus.ad.videoads.player.GMCAdActivity
pm disable $PKG/com.google.android.gms.ads.MobileAdsInitProvider
pm disable $PKG/.content.SystemAdContentProvider
pm disable $PKG/com.my.target.common.MyTargetActivity
pm disable $PKG/com.facebook.ads.AudienceNetworkActivity
pm disable $PKG/com.zeus.gmc.sdk.mobileads.columbus.ad.interstitialad.ColumbusActivity
pm disable $PKG/com.facebook.ads.AudienceNetworkContentProvider














