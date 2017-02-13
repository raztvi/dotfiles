#!/usr/bin/env sh

echo "Setting up OSX preferences"
echo "=============================="

echo "Show all filename extensions in Finder"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Show hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

echo "Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "Expand save dialog by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "Show the ~/Library folder in Finder"
chflags nohidden ~/Library

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Enable the 2D Dock"
defaults write com.apple.dock no-glass -bool true

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true

echo "Enable iTunes track notifications in the Dock"
defaults write com.apple.dock itunes-notifications -bool true

echo "Make crash reports appear as notifications"
defaults write com.apple.CrashReporter UseUNC 1

echo "Disable menu bar transparency"
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

echo "Show remaining battery time; hide percentage"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

echo "Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Auto"

echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo "Automatically quit the printer app once the print jobs are completed"
defaults write com.apple.print.PrintingPrefs 'Quit When Finished' -bool true

echo "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# echo "Enable highlight hover effect for the grid view of a stack (Dock)"
# defaults write com.apple.dock mouse-over-hilte-stack -bool true

# echo "Enable spring loading for all Dock items"
# defaults write enable-spring-load-actions-on-all-items -bool true

echo "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

echo "Disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 2

echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

echo "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

 echo "Automatically open a new Finder window when a volume is mounted"
 defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
 defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
 defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

echo "Increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

 echo "Disable the warning when changing a file extension"
 defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

 echo "Show item info below desktop icons"
 /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# echo "Enable snap-to-grid for desktop icons"
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

echo "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "Empty Trash securely by default"
defaults write com.apple.finder EmptyTrashSecurely -bool true

echo "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

echo "Disable Safari’s thumbnail cache for History and Top Sites"
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

echo "Enable Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "Make Safari’s search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

echo "Remove useless icons from Safari’s bookmarks bar"
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

echo "Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

echo "Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "Disable the Ping sidebar in iTunes"
defaults write com.apple.iTunes disablePingSidebar -bool true

echo "Disable all the other Ping stuff in iTunes"
defaults write com.apple.iTunes disablePing -bool true

echo "Make ⌘ + F focus the search input in iTunes"
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

echo "Disable the “reopen windows when logging back in” option"
defaults write com.apple.loginwindow TALLogoutSavesState -bool false
defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

echo "Enable Dashboard dev mode (allows keeping widgets on the desktop)"
defaults write com.apple.dashboard devmode -bool true

echo "Show full URL in Safari's address bar"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

echo "Making Desktop as the default folder when Finder is opened"
defaults write com.apple.finder NewWindowTarget -string 'PfDe'
defaults write com.apple.finder NewWindowTargetPath -string 'file://$HOME/Desktop/'

echo "Enable debug menu in App Store"
defaults write com.apple.appstore ShowDebugMenu -bool true

echo "Turn on auto-update in App Store"
defaults write com.apple.commerce AutoUpdate -bool true

echo "Enable automatic update check in App Store"
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

echo "Download newly available updates in background in App Store"
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

echo "Install System data files and security updates in App Store"
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

echo "Prevent Photos from opening automatically when devices are plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo "Transmission - Don’t prompt for confirmation before downloading"
defaults write org.m0k.transmission DownloadAsk -bool false

echo "Transmission - Don’t prompt for confirmation before downloading for magnet links"
defaults write org.m0k.transmission MagnetOpenAsk -bool false

echo "Transmission - Use '~/Downloads' to store complete downloads"
defaults write org.m0k.transmission DownloadChoice -string 'Constant'
defaults write org.m0k.transmission DownloadFolder -string '$HOME/Downloads'

echo "Transmission - Hide the donate message"
defaults write org.m0k.transmission WarningDonate -bool false

echo "Transmission - Hide the legal disclaimer"
defaults write org.m0k.transmission WarningLegal -bool false

echo "Disable resume system-wide"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

echo "Save screenshots as PNGs"
defaults write com.apple.screencapture type -string 'png'

echo "Remove Dropbox’s green checkmark icons in Finder in App Store"
file=/Applications/Dropbox.app/Contents/Resources/check.icns
[ -e "$file" ] && mv -f "$file" "$file.bak"
unset file

echo "Kill affected applications"
for app in Safari Finder Dock Mail SystemUIServer Photos Transmission; do killall "$app" >/dev/null 2>&1; done
