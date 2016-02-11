#!/usr/bin/zsh

if [ $# -ne 1 ] ; then
  echo "usage: $0 /path/to/chinachu-dir"
  exit
fi

# set PATH for execution by crontab
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
echo $PATH

cd $1
./chinachu update -f

exit

