#!/bin/bash
# Script to Initiate SSH Conections
#


while :
    do
    clear
    echo " ........................................................"
    echo " :           Select Device to Connect VIA SSH           :"
    echo " :......................................................:"
    echo "              ........................."
    echo "              :-------Printers--------:"
    echo "              : 1  - #1 Ender 3 V3 KE :"
    echo "              : 2  - #2 Ender 3 V3 KE :"
    echo "              : 3  - #3 Ender 3 V3 KE :"
    echo "              : 4  - #4 Ender 3 V3 KE :"
    echo "              : 5  - #5 Ender 3 V3 KE :"
    echo "              : 6  - #6 Ender 3 V3 KE :"
    echo "              :------Other Shit-------:"
    echo "              : o  - OMV              :"
    echo "              : l  - Laser Control    :"
    echo "              :--------Options--------:"
    echo "              : m  - Main Menu        :"
    echo "              : c  - CMD List         :"
    #echo "              : q  - EXIT             :"
    echo "              :.......................:"
    echo -n "Enter your menu choice:"
    read yourch
    case $yourch in
    1) echo password: Creality2023
        ssh root@ender3-1
    ;;
    2) echo password: Creality2023
        ssh root@ender3-2
    ;;
    3) echo password: Creality2023
        ssh root@ender3-3
    ;;
    4) echo password: Creality2023
        ssh root@ender3-4
    ;;
    5) echo password: Creality2023
        ssh root@ender3-5
    ;;
    6) echo password: Creality2023
        ssh root@ender3-6
    ;;
    o) echo password: RCT2024
        ssh pi@rctshoppi1
    ;;
    l) echo password: RCT2024
        ssh LaserPi@laserpi
    ;;
    m) exit 0
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