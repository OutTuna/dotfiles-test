function dc --description "Показать кастомные команды"
    printf '\n'
    set_color --bold blue
    printf 'Кастомные команды\n'
    set_color normal
    set -l names c cls up cfg acfg sns dc
    for file in ~/.config/fish/functions/*.fish
        set -l name (string replace -r '\.fish$' '' -- (path basename $file))
        if not string match -q '_*' $name; and not string match -q 'fish_*' $name
            set -a names $name
        end
    end
    for name in (printf '%s\n' $names | sort -u)
        if type -q $name
            set_color green
            printf '  %-10s' $name
            set_color normal
            printf ' %s\n' (functions --details --verbose $name)[5]
        end
    end
    printf '\n'
end
