#!/usr/bin/env bash

defaults write -g InitialKeyRepeat -int 25
defaults write -g KeyRepeat -int 2
defaults write -g ApplePressAndHoldEnabled -bool false

defaults write com.apple.HIToolbox 'AppleFnUsageType' -int 0

defaults write com.apple.Finder AppleShowAllFiles true

# killall Dock
defaults write com.apple.Dock autohide -int 1
defaults write com.apple.dock tilesize -int 35
defaults write com.apple.dock showAppExposeGestureEnabled -int 1
defaults write com.apple.dock mru-spaces -int 0

option_space=524288
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 60 "
  <dict>
    <key>enabled</key><true/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>32</integer>
        <integer>49</integer>
        <integer>${option_space}</integer>
      </array>
    </dict>
  </dict>
"

defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 61 "
  <dict>
    <key>enabled</key><true/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>32</integer>
        <integer>49</integer>
        <integer>${option_space}</integer>
      </array>
    </dict>
  </dict>
"

# killall ControlStrip
defaults write com.apple.controlstrip MiniCustomized '(com.apple.system.screen-lock, com.apple.system.volume, com.apple.system.mute, com.apple.system.search)'
defaults write com.apple.controlstrip FullCustomized '(com.apple.system.group.brightness, com.apple.system.show-desktop, com.apple.system.screencapture, com.apple.system.group.keyboard-brightness, com.apple.system.group.media, com.apple.system.group.volume)'

defaults -currentHost write com.apple.screensaver idleTime -int 1200
