function c --description "Очистить терминал"
    command clear $argv
end

function cls --description "Очистить терминал"
    command clear $argv
end

function up --description "Время работы Mac"
    command uptime $argv
end

function cfg --description "Конфиг fish в nvim"
    command nvim ~/.config/fish/config.fish $argv
end

function acfg --description "Алиасы fish в nvim"
    command nvim ~/.config/fish/conf.d/aliases.fish $argv
end

function sns --description "Подключиться к серверу"
    command ssh sns $argv
end
