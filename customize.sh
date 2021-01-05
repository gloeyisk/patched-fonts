#!/system/bin/sh

#
# Patched Fonts by the
# open source loving 'GL-DP' and all contributors;
# Patches default Android fonts
#

# Checking for installation environment
sleep 1
if [ $BOOTMODE = true ]; then
 ROOT=$(find `magisk --path` -type d -name "mirror" | head -n 1)
ui_print "- Root path: $ROOT"
else
 ROOT=""
fi

# Search fonts location
sleep 1
ui_print "- Searching fonts file location"
 if [ -d /system/fonts ]; then
 PATH=/system/fonts
sleep 1
ui_print "   Fonts found in: $PATH" 
 elif [ -d /system/product/fonts ]; then
 PATH=/system/product/fonts
sleep 1
ui_print "   Fonts found in: $PATH"
 break
 else
sleep 1
ui_print "   Fonts not found"
sleep 1
   abort "   Aborting"
 fi

# Patch default fonts
sleep 1
ui_print "- Patching fonts"
 mkdir -p $MODPATH$PATH
 mv -f $MODPATH/patches/* $MODPATH$PATH
sleep 1
ui_print "   Patched"

# Clean up
sleep 1
ui_print "- Cleaning up"
 rm -rf $MODPATH/patches

sleep 1
# Executing...
# Done
