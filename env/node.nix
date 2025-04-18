{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        nodejs_22
        pnpm_10
        nodePackages.ts-node
    ];
}