# Shared shell behavior with the macOS branch, using Linux paths.
fish_add_path -g "$HOME/.local/bin"
if test -d "$HOME/.dotnet/tools"
    fish_add_path -g "$HOME/.dotnet/tools"
end
if test -d "$HOME/.lmstudio/bin"
    fish_add_path -g "$HOME/.lmstudio/bin"
end
if test -f "$HOME/.cargo/env.fish"
    source "$HOME/.cargo/env.fish"
end

if status is-interactive
    if type -q fastfetch
        fastfetch
    end
    if type -q starship
        starship init fish | source
    end
end
