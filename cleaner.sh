PKG=com.miui.player
for PKGS in $PKG; do
  rm -rf /data/user/*/$PKGS/cache/*
done


