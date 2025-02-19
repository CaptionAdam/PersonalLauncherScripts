#!/bin/bash
# Script to create menus and take action according to that selected menu item.

# FontMenu
FontMenu () {
    while :
        do
        clear
        echo "         __________________________ "
        echo "        |           Font           |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        | 1)  -  Open Font Folder  |"
        echo "        | 2)  -  Reload Font Cache |"
        echo "        |__________________________|"
        echo "        |           MENU           |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        | m)  -  Main Menu         |"
        echo "        | q)  -  QUIT              |"
        echo "        '--------------------------'"
        echo ""
        echo -n "Enter your menu choice:"
        read yourch
        case $yourch in
        1) xdg-open /usr/local/share/fonts/
            sleep .5 #wait for 1/2 seconds
        ;;
        2) fc-cache
            sleep 0.5 #wait 1 second
            clear
            echo "         __________________________ "
            echo "        |           Font           |"
            #echo "       ______________________________ "
            #echo "      |\>\>\>\>\>\>\>\/</</</</</</</|"
            #echo "      |<\<\<\<\<CACHE RELOADED>/>/>/>|"
            #echo "      |\>\>\>\>\>\>\>\/</</</</</</</|"
            #echo "       ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾ "
            echo "       ______________________________ "
            echo "      |\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ |"
            echo "      |/ / / / /CACHE RELOADED / / / |"
            echo "      |\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ |"
            echo "       ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾ "
            #echo "        |           MENU           |"
            echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
            echo "        | X)  -  XXXX XXXX         |"
            echo "        | X)  -  XXXX              |"
            echo "        '--------------------------'"
            echo ""
            read -p "Continue(Yes[y]) or Exit(No[n])" choice

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
        echo "         __________________________ "
        echo "        |         Settings         |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        |                          |"
        echo "        |__________________________|"
        echo "        |          Configs         |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        | c)  -  auto-cpufreq conf |"
        echo "        |__________________________|"
        echo "        |           MENU           |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        | m)  -  Main Menu         |"
        echo "        | q)  -  QUIT              |"
        echo "        '--------------------------'"
        echo ""
        echo -n "Enter your menu choice:"
        read yourch
        case $yourch in
        c) sudo nano /etc/auto-cpufreq.conf
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
  echo "         ___________________________ "
  echo "        |         Launchers         |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | a)  -  Arduino Docs       |"
  echo "        | b)  -  Bright Space       |"
  echo "        | c)  -  VS Codium          |"
  echo "        | l)  -  Library Services   |"
  echo "        | n)  -  Nait Main Site     |"
  echo "        | f)  -  Foss Torrents      |"
  echo "        |___________________________|"
  echo "        |          Folders          |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | 1)  -  Circuits           |"
  echo "        | 2)  -  Microcontrolers    |"
  echo "        | 3)  -  OS's & Networking  |"
  echo "        | d)  -  Datasheets         |"
  echo "        |---------------------------|"
  echo "        | A)  -  App Folder         |"
  echo "        | AP) -  Appimage Folder    |"
  echo "        |___________________________|"
  echo "        |         SUB MENUS         |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | F)  -  Font Menu          |"
  echo "        | X)  -  Settings/Confs     |"
  echo "        |___________________________|"
  echo "        |        Other Shit         |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | e)  -  Edit               |"
  echo "        | q)  -  QUIT               |"
  echo "        '---------------------------'"
#   echo "        |                           |"
#   echo "        | *)  -  Example            |"
#   echo "        |___________________________|"
#   echo "        |          Example          |"
#   echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"

  echo ""
  echo -n "Enter your menu choice:"
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
    f) xdg-open https://fosstorrents.com/
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
    g) xdg-open https://www.onlinegdb.com
        sleep 1 #sleep for 1 second
        clear
        exit 0
    ;;
    l)  xdg-open https://library.nait.ca/ls
        sleep 1 #sleep for 1 second
        clear
        exit 0
    ;;
    d) xdg-open ~/Documents/Datasheets
        sleep .5
        clear
        exit 0
    ;;
    F) FontMenu
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