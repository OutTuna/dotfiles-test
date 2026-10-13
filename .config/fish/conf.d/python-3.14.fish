# Prefer Homebrew Python 3.14; fall back to the Python.org installation.
for python_bin in /opt/homebrew/opt/python@3.14/libexec/bin /usr/local/opt/python@3.14/libexec/bin /Library/Frameworks/Python.framework/Versions/3.14/bin
    if test -x "$python_bin/python3"
        fish_add_path --move -g "$python_bin"
        break
    end
end
