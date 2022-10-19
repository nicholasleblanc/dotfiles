#!/usr/bin/env bash

# Move dock to bottom of the screen
defaults write com.apple.dock "orientation" -string "bottom"

# Autohide the dock and control timing
defaults write com.apple.dock autohide -bool "true"
defaults write com.apple.dock autohide-delay -float 0;
defaults write com.apple.dock autohide-time-modifier -float 0.90

# Set dock icon size
defaults write com.apple.dock tilesize -int 65

# Hide recents in Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Se minimize application effect to scale
defaults write com.apple.dock "mineffect" -string "scale"

# Set appearance to auto
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Save to disk or iCloud by default
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

# Keep folders on top in Finder
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# Finder default view to list
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Show path bar in Finder
defaults write com.apple.finder "ShowPathbar" -bool "true"

# Disable shadows in screenshots
defaults write com.apple.screencapture "disable-shadow" -bool "true"

# Save screenshots to Pictures folder
defaults write com.apple.screencapture "location" -string "~/Pictures"

# Don't use new volumes for Time Machine backups
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

# Restart system services affected
killall Finder
killall Dock
killall SystemUIServer
