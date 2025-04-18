{
    system.defaults.dock = {
        show-recents = false;
        showhidden = true;
        autohide = false;
        launchanim = true;
        orientation = "bottom";
        tilesize = 48;
    };

    system.defaults.finder = {
        _FXShowPosixPathInTitle = false;
        AppleShowAllExtensions = true;
        FXEnableExtensionChangeWarning = true;
        # ShowPathbar = true;
        # ShowStatusBar = true;
    };

    system.defaults.controlcenter = {
        Sound = true; # show sound control in menu bar
    };

    system.defaults.NSGlobalDomain = {
        AppleShowAllExtensions = true;
        ApplePressAndHoldEnabled = false;

        # 120, 90, 60, 30, 12, 6, 2
        # KeyRepeat = 2;

        # 120, 94, 68, 35, 25, 15
        # InitialKeyRepeat = 15;

        # "com.apple.mouse.tapBehavior" = 1;
        # "com.apple.sound.beep.volume" = 0.0;
        # "com.apple.sound.beep.feedback" = 0;
      };

    system.defaults.trackpad = {
        Clicking = true;
        TrackpadThreeFingerDrag = true;
    };
}