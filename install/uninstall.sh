INSTALLATION_FOLDER=.cbash-gurinderhans
WD=$HOME/$INSTALLATION_FOLDER
APP_DIR=$WD/.cbash
BACKUP_DIR=$HOME/.cbash-gurinderhans.bk

# backup config files

mkdir -p $BACKUP_DIR;
if [ -f $APP_DIR/vim/viminfo ]; then
	mv $APP_DIR/vim/viminfo $BACKUP_DIR/viminfo
fi

if [ -d $APP_DIR/bin ]; then
	mv $APP_DIR/bin $BACKUP_DIR/bin;
fi

if [ -d $APP_DIR/ssh_keys ]; then
	mv $APP_DIR/ssh_keys $BACKUP_DIR/ssh_keys
fi

rm -rf $WD

if [ -f $HOME/.bash_profile ]; then
	rm -rf $HOME/.bash_profile
elif [ -f $HOME/.bashrc ]; then
	rm -rf $HOME/.bashrc
fi

if [ -f $HOME/.bash_profile.bk ]; then
	mv $HOME/.bash_profile.bk $HOME/.bash_profile
elif [ -f $HOME/.bashrc.bk ]; then
	mv $HOME/.bashrc.bk $HOME/.bashrc
fi

