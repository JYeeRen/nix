{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        wireguard-tools
        vim
        git
    ];
}