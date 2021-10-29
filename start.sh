
#colors
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

#started ftp
string="Установка FTP...."
echo $GREEN $string
echo $WHITE
pkg install busybox
string1="Запуск успешен!"
string2="Инструкцию можете найти в файле README.md"
echo $RED $string2
echo $GREEN $string1
echo $WHITE
busybox tcpsvd -vE 0.0.0.0 1024 busybox ftpd -w ~

