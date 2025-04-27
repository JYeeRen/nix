{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        jdk23
    ];
}