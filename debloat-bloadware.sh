#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Bloatware Debloat Script"
echo "### by A2L5E0X1             "
sleep 1

# Warning
echo "IMPORTANT: Read README.md before you continue!"
echo "Make sure USB-Debugging is enabled on your phone and it's connected to your PC."
echo "If your PC can't find the phone, make sure your PC is authorized."
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
# adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

# Bloadware
adb shell pm uninstall --user 0 com.hp.android.printservice #HP Printservice
adb shell pm uninstall --user 0 com.mobilesrepublic.appy #NewsRepublic
adb shell pm uninstall --user 0 com.facebook.katana #Facebook
adb shell pm uninstall --user 0 com.facebook.orca #Messanger
adb shell pm uninstall --user 0 com.twitter.android #Twitter
adb shell pm uninstall --user 0 com.microsoft.office.word #MS Word
adb shell pm uninstall --user 0 com.microsoft.office.onenote #MS OneNote
adb shell pm uninstall --user 0 com.microsoft.office.excel #MS Excel
adb shell pm uninstall --user 0 com.dropbox.android #Dropbox
adb shell pm uninstall --user 0 com.microsoft.skydrive #OneDrive
adb shell pm uninstall --user 0 com.microsoft.office.powerpoint #MS Powerpoint
adb shell pm uninstall --user 0 com.microsoft.office.outlook #MS Outlook
adb shell pm uninstall --user 0 com.skype.raider #Skype

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
