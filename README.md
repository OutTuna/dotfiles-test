## 🌿 Структура веток

| Ветка | Платформа | Состав |
| :--- | :--- | :--- |
| [`macos`](https://github.com/OutTuna/dotfiles-test/tree/macos) | **macOS** | Fish shell, Kitty terminal (`.config/`) |
| [`linux`](https://github.com/OutTuna/dotfiles-test/tree/linux) | **Linux** | Fish shell, Kitty terminal (`.config/`) |
| [`windows`](https://github.com/OutTuna/dotfiles-test/tree/windows) | **Windows** | Alacritty (`alacritty.toml`) |

---

## 🚀 Быстрый старт

### Клонирование только нужной ветки (Single Branch)

Чтобы не вытягивать историю и файлы других операционных систем:

```fish
# macOS
git clone -b macos --single-branch git@github.com:OutTuna/dotfiles-test.git ~/.dotfiles

# Linux
git clone -b linux --single-branch git@github.com:OutTuna/dotfiles-test.git ~/.dotfiles

# Windows (PowerShell / Git Bash)
git clone -b windows --single-branch git@github.com:OutTuna/dotfiles-test.git ~/dotfiles
