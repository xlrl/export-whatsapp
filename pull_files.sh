#!/bin/sh
test -f msgstore.db.crypt12 && rm msgstore.db.crypt12
test -f key && rm key
test -f wa.db && rm wa.db
adb shell "rm /sdcard/key"
adb shell "rm /sdcard/msgstore.db.crypt12"
adb shell "rm /sdcard/wa.db"
adb shell "cp /sdcard/WhatsApp/Databases/msgstore.db.crypt12 /sdcard"
adb shell "su -c cp /data/data/com.whatsapp/files/key /sdcard"
adb shell "su -c cp /data/data/com.whatsapp/databases/wa.db /sdcard"
adb pull /sdcard/msgstore.db.crypt12
adb pull /sdcard/key
adb pull /sdcard/wa.db
