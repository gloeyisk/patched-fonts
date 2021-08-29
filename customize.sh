#!/sbin/sh

#
# Patched Fonts by the
# open source loving 'GL-DP' and all contributors;
# Patches default Android fonts
#

# Checking for installation environment
if [ $BOOTMODE = true ]; then
ROOT=$(find `magisk --path` -type d -name "mirror" | head -n 1)
    ui_print "- Root path: $ROOT"
 else
ROOT=""
fi

# Patch default fonts
PATH=/system/fonts
    ui_print "- Patching fonts"
mkdir -p $MODPATH$PATH
mv -f $MODPATH/patches/* $MODPATH$PATH

# Clean up
rm -rf $MODPATH/patches
