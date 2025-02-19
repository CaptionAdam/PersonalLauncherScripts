#!/bin/bash

#Each Menu Option Takes 50 Hieght 100 For Top and -50 to hide exit option

while true; do
choice="$(zenity --width=300 --height=450 --list --column "Main" --title="Launchers" \
"Arduino Docs" "Bright Space" \
"Ender3-Ke #2" \
"Ender3-Ke #3" \
"Ender3-Ke #4" \
"Ender3-Ke #5" \
"Ender3-Ke #6" \
"LaserCutter" \
"OMW(Server)" \
"Router" \
"SSH Launcher" \
"Mount ShopServer" \
"Unmount ShopServer" \
"edit")"

case "${choice}" in
    "Arduino Docs")
    xdg-open https://docs.arduino.cc/programming/
    exit 0 
    ;;
    "Bright Space")
    xdg-open https://lms.nait.ca/
    exit 0 
    ;;
    "Ender3-Ke #2")
    xdg-open http://ender3-2:4409
    ;;
    "Ender3-Ke #3")
    xdg-open http://ender3-3:4409
    ;;
    "Ender3-Ke #4")
    xdg-open http://ender3-4:4409
    ;;
    "Ender3-Ke #5")
    xdg-open http://ender3-5:4409
    ;;
    "Ender3-Ke #6")
    xdg-open http://ender3-6:4409
    ;;
    "OMW(Server)")
    xdg-open http://rctshoppi1
    ;;
    "LaserCutter")
    xdg-open http://laserpi
    ;;
    "Mount ShopServer")
    mount /mnt/ShopServer/
    ;;
    "Unmount ShopServer")
    umount /mnt/ShopServer/
    ;;
    "SSH Launcher" )
        while true; do
        choice2="$(zenity --width=300 --height=400 --list --column "SSH" --title="WorkLauncherUlility" \
        "Ender3-Ke #1 SSH(PW: Creality2023)" \
        "Ender3-Ke #2 SSH(PW: Creality2023)" \
        "Ender3-Ke #3 SSH(PW: Creality2023)" \
        "Ender3-Ke #4 SSH(PW: Creality2023)" \
        "Ender3-Ke #5 SSH(PW: Creality2023)" \
        "Ender3-Ke #6 SSH(PW: Creality2023)" \
        "OMV(Server) SSH(PW: RCT2024)" \
	"LaserCutter SSH(PW:RCT2024)")" 

        case "${choice2}" in
            "Ender3-Ke #1 SSH(PW: Creality2023)")
            echo password: Creality2023
            exo-open --launch TerminalEmulator ssh root@ender3-1
            ;;
            "Ender3-Ke #2 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-2
            ;;
            "Ender3-Ke #3 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-3
            ;;
            "Ender3-Ke #4 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-4
            ;;
            "Ender3-Ke #5 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-5
            ;;
            "Ender3-Ke #6 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-6
            ;;
            "OMV(Server) SSH")
            exo-open --launch TerminalEmulator ssh pi@rctshoppi1
            ;;
	    "LaserCutter SSH")
	    exo-open --launch TerminalEmulator ssh LaserPi@laserpi
	    ;;
            *)
            break
            ;;
            esac
            done
    ;;
    "edit")
    codium ~/.local/Scripts/LazyLauncherGUI.sh
    sleep .5 #sleep for 1/2 seconds
    exit 0 
    ;;
    *)
    break
    ;;
    esac
    done