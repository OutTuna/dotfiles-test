# 🗂️ Dotfiles

Конфиги для разных платформ, разложенные по отдельным веткам.

## 🌿 Структура веток

| Ветка | Платформа | Состав |
| :--- | :--- | :--- |
| [`macos`](https://github.com/OutTuna/dotfiles-test/tree/macos) | **macOS** | Fish shell, Kitty terminal (`.config/`) |
| [`linux`](https://github.com/OutTuna/dotfiles-test/tree/linux) | **Linux** | Fish shell, Kitty terminal (`.config/`) |
| [`windows`](https://github.com/OutTuna/dotfiles-test/tree/windows) | **Windows** | Alacritty (`alacritty.toml`) |

---

## 🐧 Linux

```bash
# 1. Клонирование ветки linux
git clone -b linux --single-branch https://github.com/OutTuna/dotfiles-test.git /tmp/dotfiles

# 2. Создание целевой папки при необходимости
mkdir -p ~/.config

# 3. Копирование конфигов
cp -R /tmp/dotfiles/.config/fish ~/.config/
cp -R /tmp/dotfiles/.config/kitty ~/.config/

# 4. Очистка временных файлов
rm -rf /tmp/dotfiles
```

---

## 🍏 macOS

```bash
# 1. Клонирование ветки macos
git clone -b macos --single-branch https://github.com/OutTuna/dotfiles-test.git /tmp/dotfiles

# 2. Создание целевой папки при необходимости
mkdir -p ~/.config

# 3. Копирование конфигов
cp -R /tmp/dotfiles/.config/fish ~/.config/
cp -R /tmp/dotfiles/.config/kitty ~/.config/

# 4. Очистка временных файлов
rm -rf /tmp/dotfiles
```

---

## 🪟 Windows (Alacritty / PowerShell)

```powershell
# 1. Клонирование ветки windows
git clone -b windows --single-branch https://github.com/OutTuna/dotfiles-test.git $env:TEMP\dotfiles

# 2. Создание папки конфига alacritty
New-Item -ItemType Directory -Force -Path "$env:APPDATA\alacritty"

# 3. Копирование файла конфигурации
Copy-Item "$env:TEMP\dotfiles\alacritty.toml" "$env:APPDATA\alacritty\alacritty.toml" -Force

# 4. Очистка временных файлов
Remove-Item -Recurse -Force "$env:TEMP\dotfiles"
```
