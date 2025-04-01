if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls lsd
    alias code 'code --enable-features=UseOzonePlatform --ozone-platform=wayland'
    alias v 'nvim .'
    alias cat bat
    alias kbcp 'cp -r ~/coding/qmk_layout/ ~/Ops/qmk_firmware/keyboards/sofle/keymaps/'
    alias kbrun 'qmk compile -kb sofle/rev1 -km default -e CONVERT_TO=helios'
    alias ltspice 'wine ~/.wine/drive_c/Program\ Files/ADI/LTspice/LTspice.exe --enable-features=UseOzonePlatform --ozone-platform=wayland'
end

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/jadera/.local/share/coursier/bin"
# <<< coursier install directory <<<

starship init fish | source
zoxide init fish | source
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
set -x EDITOR nvim
