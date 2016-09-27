INSTALLATION_FOLDER=.cbash-gurinderhans
WD=$HOME/$INSTALLATION_FOLDER
rm -rf $WD

if [ -f $HOME/.bash_profile ]; then
	rm -rf $HOME/.bash_profile
fi

if [ -f $HOME/.bash_profile.bk ]; then
	mv $HOME/.bash_profile.bk $HOME/.bash_profile
fi

