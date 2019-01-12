#!/bin/bash

pettyl="https://sourceforge.net/projects/moto-e5-firmware/files/PETTYL/XT1920/XT1920_PETTYL_RETAIL_8.1.0_OPGS28.54-19-2_cid50.zip"
rjames="https://sourceforge.net/projects/moto-e5-firmware/files/RJAMES/XT1921-1/XT1921-1_RJAMES_RETCA_8.0.0_OPP27.91-157_cid50.zip"
cricks="https://sourceforge.net/projects/moto-e5-firmware/files/JAMES/XT1921-2/XT1921-2_JAMES_A_CRICKET_8.0.0_OCPS27.91-32-5_cid1.zip"
tmobil="https://sourceforge.net/projects/moto-e5-firmware/files/JAMES/XT1921-3/XT1921-3_JAMES_TMO_8.0.0_OCP27.91-150_cid21.zip"
sribvm="https://sourceforge.net/projects/moto-e5-firmware/files/JAMES/XT1921-5/XT1921-5_JAMES_SPRINT_8.0.0_OCPS27.91-140-1_cid50.zip"
verizo="https://sourceforge.net/projects/moto-e5-firmware/files/RJAMES/XT1921-6/XT1921-6_RJAMES_VZW_8.0.0_ODPS27.91-121-2_cid2.zip"

EDITOR=nano
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	echo "one() called"
        pause
}

two(){
	echo "two() called"
        pause
}

show_menus() {
	clear
echo ''' 
         __  __       _          _____ ____    ____            _
	|  \/  | ___ | |_ ___   | ____| ___|  / ___|  ___ _ __(_) ___  ___ 
 	| |\/| |/ _ \| __/ _ \  |  _| |___ \  \___ \ / _ \ __| |/ _ \/ __|
 	| |  | | (_) | || (_) | | |___ ___) |  ___) |  __/ |  | |  __/\__ \
 	|_|  |_|\___/ \__\___/  |_____|____/  |____/ \___|_|  |_|\___||___/
                                                                   
 	 _____ _                                         
 	|  ___(_)_ ____      ____ _ _ __ ___  
 	| |_  | | __ \ \ /\ / / _ | __/ _ \ | 
        |  _| | | |   \ V  V / (_| | | |  __/    
 	|_|   |_|_|    \_/\_/ \___|_|  \___|   
                                               . '''                            
		
	echo "1. Set Terminal"
	echo "2. Reset Terminal"
	echo "3. Exit"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
