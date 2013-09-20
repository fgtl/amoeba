#!bin/bash

case `uname` in
	Linux)
		file=/etc/bash_completion.d/adm
		;;
	Darwin)
		file=/opt/local/etc/bash_completion.d/adm
		;;
	*)
		echo "Can't recognize the system, please uninstall manually."
        exit 0
esac

if [[ -e $file ]]
then
	echo "Do you want to remove the auto-completion file $file ? (yes/no)"
	read CHOICE
	if [[ -z "$CHOICE" ]]
		then CHOICE="no"
	fi
	if test $CHOICE = "yes" || test $CHOICE = "oui"
		then
			rm "$file"
			echo "$file file removed."
		else
			echo "Removal cancelled."
			exit 0
	fi
fi
echo "Amoeba was successfully uninstalled."
exit 0
