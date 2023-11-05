#!/usr/bin/env bash

defaults write -g InitialKeyRepeat -int 25
defaults write -g KeyRepeat -int 2
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.Finder AppleShowAllFiles true
defaults write com.apple.HIToolbox 'AppleFnUsageType' -int 0
defaults write com.apple.Dock autohide -int 1
defaults write com.apple.dock tilesize -int 35
defaults write com.apple.dock showAppExposeGestureEnabled -int 1
defaults -currentHost write com.apple.screensaver idleTime -int 1200

defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 60 "
  <dict>
    <key>enabled</key><true/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>32</integer>
        <integer>49</integer>
        <integer>524288</integer>
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
        <integer>524288</integer>
      </array>
    </dict>
  </dict>
"