#!/bin/sh

USER_HOME="$(eval echo ~"$USER")"
DIR="$USER_HOME/.ajaxer-org/servers"
FILE=".welcome-message"
BASHRC="$USER_HOME/.bashrc"
FILE_URL="https://raw.githubusercontent.com/ErShakirAnsari/statics/main/servers/linux/.dotfiles/.welcome-message.txt"
#echo $DIR

mkdir -pv $DIR

wget -P $DIR -O "$DIR/$FILE" $FILE_URL

cp $BASHRC "$BASHRC.$(date +%F_%R)"


if [ -f "$DIR/$FILE" ]; then
   echo "cat $DIR/$FILE" >> $BASHRC
fi
