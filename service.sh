# ILLUMI
# DEMONICA
# www.bento.me/illumi

# SERVICE.SH
# MODDIR
MODDIR=${0%/*}

# DETECT BOOT IF COMPLETE OR NOT FROM KTWEAK (TYTYDRACO) , THANKS
while [[ "$(getprop sys.boot_completed)" -ne 1 ]] && [[ ! -d "/sdcard" ]]
do
       sleep 1
done

# WAIT FOR BOOT TO FINISH COMPLETELY
dbg "Sleeping until boot completes."
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# WAIT TO THE BOOT BE COMPLETED
sleep_needed_time() {
until [[ $(getprop sys.boot_completed) -eq 1 || $(getprop dev.bootcomplete) -eq 1 ]]; do
sleep 1
done
}

sleep_needed_time

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# DISABLE BLURS
resetprop -n ro.sf.blurs_are_expensive 0
resetprop -n ro.sf.blurs_are_caro 1
resetprop -n ro.miui.has_real_blur 0
resetprop -n ro.launcher.blur.appLaunch 0
resetprop -n ro.surface_flinger.supports_background_blur 0
resetprop -n persist.sys.background_blur_supported false
resetprop -n persist.sys.sf.disable_blurs true
resetprop -n persist.sys.sf.disable_blurs 1
resetprop -n persist.sysui.disableBlur true
resetprop -n disableBlurs true
resetprop -n disableBackgroundBlur true
resetprop -n enable_blurs_on_windows 0
