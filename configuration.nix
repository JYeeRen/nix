{ pkgs, lib, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # system.configurationRevision = self.rev or self.dirtyRev or null;

    system.stateVersion = 5;

    nixpkgs.hostPlatform = "aarch64-darwin";

    nixpkgs.config.allowUnfree = true;

    nix.gc = {
        automatic = lib.mkDefault true;
        options = lib.mkDefault "--delete-older-than 7d";
    };
}
