MODPATH=${0%/*}
API=`getprop ro.build.version.sdk`

# debug
exec 2>$MODPATH/debug.log
set -x

# property
resetprop --delete ro.miui.ui.version.name

# wait
sleep 60

# grant
PKG=com.miui.player
UID=`pm list packages -U | grep $PKG | sed -n -e "s/package:$PKG uid://p"`
pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.WRITE_EXTERNAL_STORAGE
appops set --uid $UID LEGACY_STORAGE allow
appops set $PKG READ_EXTERNAL_STORAGE allow
appops set $PKG WRITE_EXTERNAL_STORAGE allow
appops set $PKG ACCESS_MEDIA_LOCATION allow
appops set $PKG READ_MEDIA_AUDIO allow
appops set $PKG READ_MEDIA_VIDEO allow
appops set $PKG READ_MEDIA_IMAGES allow
appops set $PKG WRITE_MEDIA_AUDIO allow
appops set $PKG WRITE_MEDIA_VIDEO allow
appops set $PKG WRITE_MEDIA_IMAGES allow
if [ "$API" -gt 29 ]; then
  appops set $PKG MANAGE_EXTERNAL_STORAGE allow
  appops set $PKG NO_ISOLATED_STORAGE allow
  appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
fi
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


