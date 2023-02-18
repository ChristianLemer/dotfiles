if status is-interactive
    # Commands to run in interactive sessions can go here

    # 
    # Update Path
    #
    fish_add_path .local/bin
    fish_add_path .cargo/bin

    #
    # pbcopy on ubuntu
    #
    alias pbcopy="xclip -selection clipboard"
    alias pbpaste="xclip -selection clipboard -o"

    #
    # Aliases
    #
    alias h="history"
    alias ls="exa --git --icons"
    alias la="ls -la"
    alias cat="bat"

    #
    # Abbrevs
    #
    # Fish
    abbr --add fial abbr --list
    abbr --add fis "source ~/.config/fish/config.fish"
    abbr --add fie "pushd ~/.config/fish; hx config.fish; popd"
    abbr --add fiv cat ~/.config/fish/config.fish
    abbr --add .z --position anywhere '| fzf'
    # Chezmoi
    abbr --add cma chezmoi add
    abbr --add cmc chezmoi cd
    abbr --add cmd chezmoi diff
    abbr --add cmm chezmoi managed
    abbr --add cmr chezmoi re-add
    abbr --add cms chezmoi status
    # Git
    abbr --add gis git status
    abbr --add gid git diff    
    # Cargo
    abbr --add cwn cargo watch --clear --exec \"nextest run --nocapture\"
    abbr --add cwr cargo watch --clear --exec \"run -- $CARGO_RUN_ARGS\"
    abbr --add cwt cargo watch --clear --exec test
    abbr --add cwc cargo watch --clear --exec check

    #
    # other utilities
    #
    abbr --add lg lazygit 

    #
    # Starfish prompt
    #
    starship init fish | source
end
