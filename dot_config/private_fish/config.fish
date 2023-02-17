if status is-interactive
    # Commands to run in interactive sessions can go here

    # 
    # Update Path
    #
    
    # Add local binaries
    fish_add_path .local/bin
    # Add cargo binaries
    fish_add_path .cargo/bin


    #
    # Abbrefs
    #

    #
    # Fish
    #
    abbr --add fial abbr --list
    abbr --add fis source ~/.config/fish/config.fish
    abbr --add fie hx ~/.config/fish/config.fish
    abbr --add fiv cat ~/.config/fish/config.fish

    #
    # other utilities
    #
    abbr --add lg lazygit 


    #
    # Aliases
    #
    alias h="history | fzf"
    alias env="env | fzf"
    alias ls="exa"
    alias cat="bat"

end
