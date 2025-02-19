#!/bin/bash
# Script to create menus and take action according to that selected menu item.

# FontMenu
FontMenu () {
    while :
        do
        clear
        echo "         ╔════════════════════════╗ "
        echo "        ╔╝          Font          ╚╗"
        echo "        ╟──────────────────────────╢"
        echo "        ║ 1)  -  Open Font Folder  ║"
        echo "        ║ 2)  -  Reload Font Cache ║"
        echo "        ╠══════════════════════════╣"
        echo "        ║           MENU           ║"
        echo "        ╟──────────────────────────╢"
        echo "        ║ m)  -  Main Menu         ║"
        echo "        ║ q)  -  QUIT              ║"
        echo "        ╚══════════════════════════╝"
        echo ""
        echo -n "Enter your menu choice: "
        read yourch
        case $yourch in
        1) xdg-open /usr/local/share/fonts/
            sleep .5 #wait for 1/2 seconds
        ;;
        2) fc-cache
            sleep 0.5 #wait 1 second
            clear
            echo "         ╔════════════════════════╗ "
            echo "        ╔╝          Font          ╚╗"
            #echo "       ______________________________ "
            #echo "      |\>\>\>\>\>\>\>\/</</</</</</</|"
            #echo "      |<\<\<\<\<CACHE RELOADED>/>/>/>|"
            #echo "      |\>\>\>\>\>\>\>\/</</</</</</</|"
            #echo "       ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾ "
            # echo "      ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓ "
            # echo "      ┃\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ┃"
            # echo "      ┃/ / / / /CACHE RELOADED / / / ┃"
            # echo "      ┃\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ┃"
            # echo "      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
            echo "      ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓ "
            echo "      ┃ ╲ ╱ ╲ ╱ ╲ ╱ ╲  ╱ ╲ ╱ ╲ ╱ ╲ ╱ ┃"
            echo "      ┃  ╳   ╳ CACHE RELOADED ╳   ╳  ┃"
            echo "      ┃ ╱ ╲ ╱ ╲ ╱ ╲ ╱  ╲ ╱ ╲ ╱ ╲ ╱ ╲ ┃"
            echo "      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
            echo "        ║           MENU           ║"
            echo "        ╟──────────────────────────╢"
            echo "        ║ X)  -  XXXX XXXX         ║"
            echo "        ║ X)  -  XXXX              ║"
            echo "        ╚══════════════════════════╝"
            echo ""
            read -p "Continue(Yes[y]) or Exit(No[n]): " choice

            # giving choices there tasks using
            case $choice in
            [yY]* ) return ;;
            [nN]* ) exit 0 ;;
            *) exit ;;
            esac
        ;;
        m) return
        ;;
        q) clear
            exit 0 
        ;;
        *) echo "Opps!!! Please Try Again"
        echo "Press a key. . ."
        read -n 1
        ;;
    esac
  done
}

# Settings & Configs
SettingsMenu () {
    while :
        do
        clear
        echo "         ╔══════════════════════════════╗ "
        echo "        ╔╝       Settings/Configs       ╚╗"
        echo "        ╟────────────────────────────────╢"
        echo "        ║ c)  - auto-cpufreq conf        ║"
        echo "        ║ p)  - plymouthd.conf           ║"
        echo "        ║ l)  - list plymouth themes     ║"
        echo "        ║ o)  - open plymouth themes     ║"
        echo "        ║ r)  - mkinitcpio(initramfs)    ║"
        echo "        ║                                ║"
        echo "        ╠════════════════════════════════╣"
        echo "        ║          Config Reloads        ║"
        echo "        ╟────────────────────────────────╢"
        echo "        ║ R)  - regenerate the initramfs ║"
        echo "        ║                                ║"
        echo "        ╠════════════════════════════════╣"
        echo "        ║               MENU             ║"
        echo "        ╟────────────────────────────────╢"
        echo "        ║ m)  -  Main Menu               ║"
        echo "        ║ q)  -  QUIT                    ║"
        echo "        ╚════════════════════════════════╝"
        echo ""
        echo -n "Enter your menu choice: "
        read yourch
        case $yourch in
        c) sudo nano /etc/auto-cpufreq.conf
        ;;
        p) sudo nano /etc/plymouth/plymouthd.conf
        ;;
        l) ls /usr/share/plymouth/themes
        ;; 
        o) xdg-open /usr/share/plymouth/themes
        ;;
        r) sudo nano /etc/mkinitcpio.conf
        ;;
        R) sudo mkinitcpio -P 
        ;;
        m) return
        ;;
        q) clear
            exit 0 
        ;;
        *) echo "Opps!!! Please Try Again"
        echo "Press a key. . ."
        read -n 1
    esac
  done
}

# Ollama Ai Shit
Ollama () {
    while :
        do
        clear
        echo "         ╔══════════════════════════════╗ "
        echo "        ╔╝            Ollama            ╚╗"
        echo "        ╟────────────────────────────────╢"
        # echo "        ║ D)   - Run Deepseek R1         ║"
        echo "        ║ D1)  - Run Deepseek R1 7B      ║"
        echo "        ║ D2)  - Run Deepseek R1 8B      ║"
        # echo "        ║ D3)  - Run Deepseek R1 14B     ║"
        # echo "        ║ D4)  - Run Deepseek R1 32B     ║"
        echo "        ║                                ║"
        echo "        ╠════════════════════════════════╣"
        echo "        ║             Services           ║"
        echo "        ╟────────────────────────────────╢"
        echo "        ║ 1)  - Start Ollama Service     ║"
        echo "        ║ 2)  - Stop Ollama Service      ║"
        echo "        ║ 3)  - Status of Ollama Service ║"
        echo "        ║                                ║"
        echo "        ╠════════════════════════════════╣"
        echo "        ║               MENU             ║"
        echo "        ╟────────────────────────────────╢"
        echo "        ║ m)  -  Main Menu               ║"
        echo "        ║ q)  -  QUIT                    ║"
        echo "        ╚════════════════════════════════╝"
        echo ""
        echo -n "Enter your menu choice: "
        read yourch
        case $yourch in
        D) ollama run deepseek-r1:671b
        ;;
        D1) ollama run deepseek-r1:7b
        ;;
        D2) ollama run deepseek-r1:8b
        ;;
        1) sudo systemctl start ollama
        ;;
        2) sudo systemctl stop ollama
        ;;
        3) sudo systemctl status ollama
        ;;
        m) return
        ;;
        q) clear
            exit 0 
        ;;
        *) echo "Opps!!! Please Try Again"
        echo "Press a key. . ."
        read -n 1
    esac
  done
}


while :
  do
  clear         
  echo "         ╔═════════════════════════════════════════════════════╗ "
  echo "        ╔╝                      Launchers                      ╚╗"
  echo "        ╟───────────────────────────┬───────────────────────────╢"
  echo "        ║ a)  -  Arduino Docs       │ b)  -  Bright Space       ║"
  echo "        ║ c)  -  VS Codium          │ l)  -  Library Services   ║"
  echo "        ║ n)  -  Nait Main Site     │ f)  -  Foss Torrents      ║"
  echo "        ║                           │                           ║"
  echo "        ╠═══════════════════════════╧═══════════════════════════╣"
  echo "        ║                        Folders                        ║"
  echo "        ╟───────────────────────────┬───────────────────────────╢"
  echo "        ║ 1)  -  Circuits           │ 3)  -  OS's & Networking  ║"
  echo "        ║ 2)  -  Microcontrolers    │ 4)  -  Datasheets         ║"
  echo "        ╟───────────────────────────┼───────────────────────────╢"
  echo "        ║ A)  -  Aplications Folder │ AP) -  Appimage Folder    ║"
  echo "        ║                           │                           ║"
  echo "        ╠═══════════════════════════╧═══════════════════════════╣"
  echo "        ║                       SUB MENUS                       ║"
  echo "        ╟───────────────────────────┬───────────────────────────╢"
  echo "        ║ F)  -  Font Menu          │ X)  -  Settings/Confs     ║"
  echo "        ║ O)  -  Ollama             │                           ║"
  echo "        ║                           │                           ║"
  echo "        ╠═══════════════════════════╧═══════════════════════════╣"
  echo "        ║                      Other Shit                       ║"
  echo "        ╟───────────────────────────┬───────────────────────────╢"
  echo "        ║ g)  -  GUI                │ r)  -  RCT Launcher       ║"
  echo "        ║ e)  -  Edit               │ q)  -  QUIT               ║"
  echo "        ╚═══════════════════════════╧═══════════════════════════╝"
#   echo "        |                           |"
#   echo "        | *)  -  Example            |"
#   echo "        |___________________________|"
#   echo "        |          Example          |"
#   echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"

  echo ""
  echo -n "Enter your menu choice: "
  read yourch
  case $yourch in
    n) xdg-open https://www.nait.ca
        sleep 1 #sleep for 1 second
        clear
        exit 0 
    ;; 
    b) xdg-open https://lms.nait.ca/
        sleep 1 #sleep for 1 second
        clear
        exit 0 
    ;;
    f) xdg-open https://fosstorrents.com/f
        sleep 1 #sleep for 1 second
        clear
        exit 0
    ;;
    A) xdg-open ~/.local/share/applications/
        sleep .5 #sleep for 1/2 seconds
        clear
        exit 0
    ;;
    AP) xdg-open ~/.local/Appimages/
        sleep .5
        clear
        exit 0
    ;;
    a) xdg-open https://docs.arduino.cc/programming/
        sleep 1
        clear
        exit 0
    ;;
    l)  xdg-open https://library.nait.ca/ls
        sleep 1 #sleep for 1 second
        clear
        exit 0
    ;;
    4) xdg-open ~/Documents/Datasheets
        sleep .5
        clear
        exit 0
    ;;
    F) FontMenu
    ;;
    O) Ollama
    ;;
    c)  codium
        sleep .5 #sleep for 1/2 seconds
        clear
        exit 0
    ;;
    1) xdg-open ~/Documents/ElectricCirtcuits-ELTR1201/
        sleep .5 #sleep for 1/2 seconds
        exit 0
    ;;
    2) xdg-open ~/Documents/Microcontrolers-ELTR1202/
        sleep .5 #sleep for 1/2 seconds
        exit 0
    ;;
    3) xdg-open ~/Documents/OperatingSystemsAndNetworking-ELTR1246/
        sleep .5 #sleep for 1/2 seconds
        exit 0
    ;;
    X) SettingsMenu
    ;;
    e) codium ~/.local/Scripts/LazyLauncher.sh
        sleep .5 #sleep for 1/2 seconds
        clear
        exit 0
    ;;
    q) clear
        exit 0 
    ;;
    *) echo "Opps!!! Please Try Again"
       echo "Press a key. . ."
       read -n 1
    ;;
  esac
done