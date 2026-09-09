if status is-interactive
# Commands to run in interactive sessions can go here
end
fastfetch
starship init fish | source
export PATH="$HOME/.local/bin:$PATH"

eval (/opt/homebrew/bin/brew shellenv fish)
