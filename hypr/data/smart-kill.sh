


#get event flag if this is a confirmation or basic run

popup=$(hyprctl activewindow -j | jq -r '.title')

if [[ $popup != *"Close OS window"* ]]; then 
	hyprctl dispatch killactive
else
	hyprctl dispatch forcekillactive

fi
