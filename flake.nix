{
  description = "Mic - Mac with nix-darwin, home-manager, homebrew";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-24.11-darwin";
    # nixkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, ... }:
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#renjiedeMac-mini
    darwinConfigurations."renjiedeMac-mini" = nix-darwin.lib.darwinSystem {
      modules = [
        ./configuration.nix
        ./darwin.nix
        ./apps.nix
        ./env/node.nix
        ./zsh.nix
        ./formula.nix

        inputs.home-manager.darwinModules.home-manager
        {
          users.users.chieh.home = "/Users/chieh";
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.chieh = import ./home/home.nix;
        }
      ];
    };
  };
}
