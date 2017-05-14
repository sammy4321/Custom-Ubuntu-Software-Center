#!/bin/bash
error_1()
{
clear
echo "ps aux | grep apt"
echo "that will catch processes containing the word apt, at least. If you see an apt-get process or an aptitude process that looks stuck, you can try"
echo "kill processnumber"
echo "and if that doesn't work try"
echo "kill -9 processnumber"
sleep 600
}
error_3()
{
clear
echo "Instead of"
echo "host = socket.gethostname() #Get the local machine name"
echo "port = 12397 # Reserve a port for your service"
echo "s.bind((host,port)) #Bind to the port"
echo "you should try"
echo "port = 12397 # Reserve a port for your service"
echo "s.bind(('', port)) #Bind to the port"
echo "so that the listening socket isn't too restricted. Maybe otherwise the listening only occurs on one interface which, in turn, isn't related with the local network."
echo "One example could be that it only listens to 127.0.0.1, which makes connecting from a different host impossible."
sleep 600
}
error_4()
{
clear
echo "First"
echo
echo "sudo dpkg --add-architecture i386"
echo
echo "after that"
echo
echo "sudo apt-get install ppa-purge"
echo "sudo add-apt-repository ppa:ubuntu-wine/ppa && sudo apt-get update"
echo "sudo apt-get install wine1.5"
sleep 600
}
error_5()
{
clear
echo "Use sudo along with the command"
sleep 10
}
error_6()
{
clear
echo "use chmod +x <*NAME OF FILE*>"
sleep 20
}
error_7()
{
clear
echo "You are not a sudoer request owner to add you as admin and then try again"
sleep 30
}
error_8()
{
clear
echo "The Python module is not installed"
echo "Use sudo apt install python-<*PACKAGE NAME*>"
sleep 10
}
error_9()
{
clear
echo "Click the icon at the very right of the menu bar and select System Settings."
echo "Open Network and select Wireless on the left."
echo "Click the Use as Hotspot button."
echo "If you are already connected to a wireless network, you will be asked if you want to disconnect from that network. A single wireless adapter can only connect to or create one network at a time. Click Create Hotspot to confirm."
sleep 600
}
error_10()
{
clear
echo "sudo rm /var/lib/dpkg/info/oracle-java7-installer* "
echo "sudo apt-get purge oracle-java7-installer"
echo "sudo rm /etc/apt/sources.list.d/*java* "
echo "sudo apt-get update "
echo "sudo add-apt-repository ppa:webupd8team/java "
echo "sudo apt-get update "
echo "sudo apt-get install oracle-java7-installer"
sleep 600
}
error_2()
{
clear
echo "ps aux | grep apt"
echo "that will catch processes containing the word apt, at least. If you see an apt-get process or an aptitude process that looks stuck, you can try"
echo "kill processnumber"
echo "and if that doesn't work try"
echo "kill -9 processnumber"
sleep 600
}
while((1))
do
clear
echo "List Of Some Common Errors : "
echo
echo "    Error 1 : "
echo
echo "E : Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)"
echo "E : Unable to lock the administration directory (/var/lib/dpkg/), is another process using it?"
echo
echo "    Error 2 :"
echo
echo "E: Could not get lock /var/lib/apt/lists/lock - open (11: Resource temporarily unavailable)"
echo "E: Unable to lock directory /var/lib/apt/lists/"
echo "E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)"
echo "E: Unable to lock the administration directory (/var/lib/dpkg/), is another process using it?"
echo
echo "    Error 3 :"
echo
echo "[Errno 111] Connection refused"
echo
echo "    Error 4 :"
echo
echo "The following packages have unmet dependencies:"
echo "wine1.4 : Depends: wine1.4-i386 (= 1.4.1-0ubuntu1) but it is not installable"
echo "           Recommends: gnome-exe-thumbnailer but it is not going to be installed or"
echo "                       kde-runtime but it is not going to be installed"
echo "           Recommends: ttf-droid"
echo "           Recommends: ttf-mscorefonts-installer but it is not going to be installed"
echo "           Recommends: ttf-umefont but it is not going to be installed"
echo "           Recommends: ttf-unfonts-core but it is not going to be installed"
echo "           Recommends: winbind but it is not going to be installed"
echo "           Recommends: winetricks but it is not going to be installed"
echo "E: Unable to correct problems, you have held broken packages."
echo
echo "    Error 5 : "
echo
echo "bash:<*COMMAND*>: command not found"
echo
echo "    Error 6 :"
echo
echo "bash: ./program Permission denied "
echo
echo "    Error 7 :"
echo
echo "Username is not in the sudoers file. This incident will be reported"
echo
echo "    Error 8 :"
echo
echo "Traceback (most recent call last):"
echo "  File \"<stdin>\", line 1, in <module>"
echo "ImportError: No module named <*MODULE*>"
echo
echo "    Error 9 :"
echo
echo "Setup Hotspot"
echo
echo "    Error 10 :"
echo
echo "E: Sub-process /usr/bin/dpkg returned an error code (1)"
echo
printf "Enter 0 to quit or the number of the error : "
read a
case "$a" in
	"1")error_1
	;;
	"2")error_2
	;;
	"3")error_3
	;;
	"4")error_4
	;;
	"5")error_5
	;;
	"6")error_6
	;;
	"7")error_7
	;;
	"8")error_8
	;;
	"9")error_9
	;;
	"10")error_10
	;;
	*)clear
	  echo "Invalid Input"
	sleep 5
	;;
esac
done

