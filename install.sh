#!bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

case `uname` in
	Linux)
		file=/etc/bash_completion.d/adm12.04
		;;
	Darwin)
		file=/opt/local/etc/bash_completion.d/adm12.04
		;;
	*)
		echo "Your system is not supported yet."
		echo "If you want to support Amoeba, fill a bug report on https://github.com/fgtl/amoeba/issues with the result of the following command: uname. We'll be delighted to add support for your OS as soon as we hear from you!"
		echo "Meanwhile, you can install Amoeba by yourself: copy the adm file and paste it in your shell completion folder."
        exit 0
esac

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
cp "$DIR/adm12.04" "$file"
echo "Installation completed."
exit 0
