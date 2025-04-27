{
    homebrew = {
        enable = true;

        onActivation = {
            autoUpdate = true;
            upgrade = true;
            cleanup = "zap";
        };

        masApps = {
            "微信" = 836500024;
            "企业微信" = 1189898970;
            "The Unarchiver" = 425424353;
            "Bob - 翻译和 OCR 工具" = 1630034110;
        };

        brews = [
            "mas"
        ];

        casks = [
            "google-chrome"
            "visual-studio-code"
            "snipaste"
            # "iina"
            "obsidian"
            "alacritty"
            "insomnia" # REST client
            # "wireshark" # network analyzer
            "font-jetbrains-mono-nerd-font"
            "appcleaner"
            "yubico-yubikey-manager"
            "clash-verge-rev"
            "bilibili"
            "wpsoffice"
        ];
    };
}