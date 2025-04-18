{
    homebrew = {
        enable = true;

        onActivation = {
            autoUpdate = true;
            upgrade = true;
            cleanup = "zap";
        };

        masApps = {};

        brews = [];

        casks = [
            "google-chrome"
            # "visual-studio-code"
            "snipaste"
            # "iina"
            "obsidian"
            # "alacritty"
            # "insomnia" # REST client
            # "wireshark" # network analyzer
            "font-jetbrains-mono-nerd-font"
            "appcleaner"
            "yubico-yubikey-manager"
            "clash-verge-rev"
        ];
    };
}