#echo "Switch and format display output to large monitor."
#This xrandr command is run only once to properly orient the display. This assumes that the 60" display is already connected to the host netbook via VGA and is already mirroring the output of the netbook monitor.
#xrandr --output LVDS1 --rotate right
#sleep 120


#In experience it's easier to simply open firefox manually and brose to the LIVE digital display slideshow link below.
#echo "Launch browser and navigate to slideshow presentation."
#firefox -url https://docs.google.com/presentation/d/109a9k2CV_zDc7WdzpLTZdETfBoWCTUsgs2rdD5vnQaM/pub?start=true&loop=true&delayms=3000&slide=id.g11747db846_2_39
#sleep 120

#This block focuses the open firefox browser and the active tab. xdotool allows you to simulate a keystoke in order to full screen the slideshow.
echo "bring up the browser"
RELOAD_KEYS="SHIFT+CTRL+R"
BROWSER=firefox
MYWINDOW=$(xdotool getactivewindow)
xdotool search --desktop 0 --name ${BROWSER} windowactivate --sync
echo "Set slideshow to full screen."
xdotool key F11


#Here is our main purpose of the script. In an infinite loop we refresh the slideshow page every 30mins so as to grab whatever slide changes to the slideshow.
while sleep 5s 
do
	clear
	echo "Wait 30mins."
	sleep 1800 
	echo "Refresh page."
	xdotool key F5
done
