#!/bin/bash
bgblue='\e[1;44m'
BICyan='\033[1;96m'       # Cyan
red='\033[0;31m'
green='\033[0;32m'
Lyellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[0;37m"
NC="\e[0;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"
Greenlight="\e[92;1m"
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Getting
# Getting
MYIP1=$(wget -qO- ipinfo.io/ip);
MYIP=$(curl -LksS ipv4.icanhazip.com)
username1=$(cat /usr/bin/user)
passcode=$(cat /etc/profileds/rc0.d)
IPVPS_SAVE=$(cat /usr/bin/IPVPS_SAVE)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY () {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl -LksS https://saktitunneling.networkstoreid.asia:81/updateip/ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $4}')
    Exp1web=$(curl -LksS https://www.belivpn.networkstoreid.asia/validasi-ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $4}')
    if [[ $today < $Exp1 || $today < $Exp1web ]]; then
    echo -e "\e[32mYOUR SCRIPT ACTIVE..\e[0m"
    else
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${Lred}                PERMISSION DENIED ! ${NC}"
echo -e "${Lyellow}     Your VPS ${NC}( ${green}$MYIP${NC} ) ${Lyellow}Has been Banned "
echo -e "         Buy access permissions for scripts "
echo -e "                 Contact Admin :"
echo -e "             ${green}Telegram t.me/NewtworkStore_ID "
echo -e "             WhatsApp wa.me/0859106848595"
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    exit 0
fi
}
IZIN=$(curl -LksS https://saktitunneling.networkstoreid.asia:81/updateip/ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $5}')
IZINWEB=$(curl -LksS https://www.belivpn.networkstoreid.asia/validasi-ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $5}')
if [[ $IPVPS_SAVE = $IZIN || $IPVPS_SAVE = $IZINWEB ]]; then
echo -e "\e[32mPermission Accepted...\e[0m" >/dev/null 2>&1
VALIDITY
else
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${Lred}                PERMISSION DENIED ! ${NC}"
echo -e "${Lyellow}     Your VPS ${NC}( ${green}$MYIP${NC} ) ${Lyellow}Has been Banned "
echo -e "         Buy access permissions for scripts "
echo -e "                 Contact Admin :"
echo -e "             ${green}Telegram t.me/NewtworkStore_ID "
echo -e "             WhatsApp wa.me/0859106848595"
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
exit 0
fi
echo -e "\e[32mloading...\e[0m"
function lane() {
  echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
}

function Credit_Sakti() {
  sleep 1
  echo -e ""
  echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
  echo -e "      ${ungu}Thank You For Using This Script-"
  echo -e "         Script Provided by Sakti"
  echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
  echo -e ""
  exit 0
}

function LOGO() {
  clear
  echo -e ""
  echo -e "┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐" | lolcat
  echo -e "|              ${ungu}Sakti Tunneling${BlueCyan}              |" | lolcat
  echo -e "└━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘" | lolcat
  echo -e ""
}
clear
LOGO
totalcountdroplet=$(cat /etc/ssh/.mainpanel.db | wc -l)
if [ "$totalcountdroplet" == 1 ]; then
    service_stat="${Greenlight}ON${reset}"
    Panels=$(grep -E "^### " "/etc/ssh/.mainpanel.db" | cut -d ' ' -f 2 | sort | uniq)
    Passwd1=$(grep -E "^### " "/etc/ssh/.mainpanel.db" | cut -d ' ' -f 3 | sort | uniq)
    Balance1=$(grep -E "^### " "/etc/ssh/.mainpanel.db" | cut -d ' ' -f 4 | sort | uniq)
    TotDrop1=$(grep -E "^### " "/etc/ssh/.mainpanel.db" | cut -d ' ' -f 5 | sort | uniq)
    PPVCC1=$(grep -E "^### " "/etc/ssh/.mainpanel.db" | cut -d ' ' -f 6 | sort | uniq)
else
    service_stat="${Red}OFF${reset}"
    Panels="Input Dulu API Panelnya Kak!"
    Passwd1="Input Dulu API Panelnya Kak!"
    Balance1="Input Dulu API Panelnya Kak!"
    TotDrop1="Input Dulu API Panelnya Kak!"
    PPVCC1="Input Dulu API Panelnya Kak!"
fi
echo -e "         ${ungu}MENU DIGITALOCEAN ACCESS${ungu}"
lane
echo -e "     ${ungu}Panel         :${ungu} ${Lyellow}$Panels ${Lyellow}"
echo -e "     ${ungu}Password      :${ungu} ${Lyellow}$Passwd1 ${Lyellow}"
echo -e "     ${ungu}Balance       :${ungu} ${Lyellow}$Balance1 ${Lyellow}"
echo -e "     ${ungu}Total Droplet :${ungu} ${Lyellow}$TotDrop1 ${Lyellow}"
echo -e "     ${ungu}Paypal/VCC    :${ungu} ${Lyellow}$PPVCC1 ${Lyellow}"
echo -e "     ${ungu}SERVICE       :${ungu} $service_stat  "
lane
echo
echo -e "    ${Lyellow}1.${Lyellow} ${NC}Input Your API Panel${NC}"
echo -e "    ${Lyellow}2.${Lyellow} ${NC}Choose a Panel${NC}"
echo -e "    ${Lyellow}3.${Lyellow} ${NC}Input/Update Balance/Saldo${NC}"
echo -e "    ${Lyellow}4.${Lyellow} ${NC}Show All Panel Details${NC}"
echo -e "    ${Lyellow}5.${Lyellow} ${NC}Delete a Panel${NC}"
echo -e "    ${Lyellow}6.${Lyellow} ${NC}Menu Droplet${NC}"
echo -e "    ${Lyellow}x.${Lyellow} ${NC}Exit${NC}"
echo -e ""
lane
echo
read -rp "Select From Options [1-6 or x] : " menu1
echo
case $menu1 in
1)
    New_Panel
    ;;
2)
    Choose_Panel
    ;;
3)
    Remarks_Panel
    ;;
4)
    All_Panel_Details
    ;;
5)
    Delete_Panel
    ;;
6)
    Menu_Droplet
    ;;
x)
    exit 0
    ;;
*)
    menu_panel
    ;;
esac
