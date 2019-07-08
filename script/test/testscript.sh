#!/bin/sh
DIALOG=${DIALOG=dialog}

$DIALOG --title " Brew service Tor on all processus is about to start "  --clear \
	--yesno "   Do you want to stop launch of service tor? " 10 30

case $? in
	0)	echo "Oui choisi. ";;
	1)	echo "Non choisi. ";;
	255)	echo "Appuyé sur Echap. ";;
esac
end
