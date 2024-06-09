# ILLUMI
# DEMONICA
# www.bento.me/illumi

# POST-FS-DATA.SH
# MODDIR
MODDIR=${0%/*}

# BOOT
while [ -z "$(resetprop sys.boot_completed)" ]; do
  sleep 1
done

# WAIT
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 1
done

# WAIT V2
wait_until_boot_complete() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 1
  done
}
wait_until_boot_complete

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# DISABLE BLURS
setprop ro.sf.blurs_are_expensive 0
setprop ro.sf.blurs_are_caro 1
setprop ro.miui.has_real_blur 0
setprop ro.launcher.blur.appLaunch 0
setprop ro.surface_flinger.supports_background_blur 0
setprop persist.sys.background_blur_supported false
setprop persist.sys.sf.disable_blurs true
setprop enable_blurs_on_windows 0
setprop disableBlurs true
setprop disableBackgroundBlur true

su -c cmd window disable-blur 1
su -c wm disable-blur 1
