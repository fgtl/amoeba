#!bin/bash

file=/etc/bash_completion.d/adm
if [[ -e $file ]]
then
	echo "Do you want to remove the existing $file file ? (yes/no)"
	read CHOICE
	if [[ -z "$CHOICE" ]]
		then CHOICE="no"
	fi
	if test $CHOICE = "yes" || test $CHOICE = "oui"
		then
			rm "$file"
			echo "Old $file file removed."
		else
			echo "Installation cancelled."
			exit 0
	fi
fi
cp ./adm "$file"
echo "Installation completed."
exit 0
