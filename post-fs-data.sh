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

# CLEAR CACHE
rm -rf /data/data/com.android.systemui/cache/*
rm -rf /data/data/com.android.systemui/code_cache/*
rm -rf /data/user_de/0/com.android.systemui/cache/*
rm -rf /data/user_de/0/com.android.systemui/code_cache/*
rm -rf /data/user/0/com.android.systemui/cache/*
rm -rf /data/user/0/com.android.systemui/code_cache/*

# BLURS DISABLE
su -c cmd window disable-blur 1
su -c wm disable-blur 1

# OPEN AN APP QUICKLY 
am start -n com.example no.app/.MainActivity
