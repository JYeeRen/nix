{
    
    home.enableNixpkgsReleaseCheck = false;

    home.username = "chieh";
    home.homeDirectory = "/Users/chieh";

    home.stateVersion = "24.11";

    imports = [
        ./programs/zsh.nix
	    ./programs/vscode.nix
        ./programs/alacritty.nix
        ./programs/git.nix
    ];
}
