{ pkgs, ... }:
{
    programs.zsh = {
        enable = true;

        history.size = 10000;
        history.ignoreAllDups = true;
        history.path = "$HOME/.zsh_history";
        history.ignorePatterns = ["rm *" "pkill *" "cp *"];

        antidote = {
            enable = true;
            plugins = [''
                romkatv/powerlevel10k

                ohmyzsh/ohmyzsh path:lib
                ohmyzsh/ohmyzsh path:plugins/git
                ohmyzsh/ohmyzsh path:plugins/command-not-found
                ohmyzsh/ohmyzsh path:plugins/extract
                zsh-users/zsh-autosuggestions
                zsh-users/zsh-syntax-highlighting
                zsh-users/zsh-history-substring-search
            ''];
        };
    };

}