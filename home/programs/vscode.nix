{ pkgs, ... }:
{
    programs.vscode = {
        enable = true;

        extensions = with pkgs.vscode-extensions; [
            eamodio.gitlens
            bbenoist.nix
            github.github-vscode-theme
            pkief.material-icon-theme
            formulahendry.auto-close-tag
            # belows not exists on nix pkgs
            # antfu.unocss 
            # antfu.iconify
            # geekabe.iconify-search
            # ms-vscode.vscode-typescript-next
        ];
    };
}
