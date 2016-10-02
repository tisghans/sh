INSTALLATION_FOLDER=.cbash-gurinderhans
WD=$HOME/$INSTALLATION_FOLDER
APP_DIR=$WD/.cbash
BACKUP_DIR=$HOME/.cbash-gurinderhans.bk

# backup config files
mkdir -p $BACKUP_DIR;
cp $APP_DIR/vim/viminfo $BACKUP_DIR
cp $APP_DIR/bin $BACKUP_DIR
cp $APP_DIR/ssh_keys $BACKUP_DIR

rm -rf $WD

if [ -f $HOME/.bash_profile ]; then
	rm -rf $HOME/.bash_profile
else if [ -f $HOME/.bashrc ]; then
	rm -rf $HOME/.bashrc
fi

if [ -f $HOME/.bash_profile.bk ]; then
	mv $HOME/.bash_profile.bk $HOME/.bash_profile
else if [ -f $HOME/.bashrc.bk ]; then
	mv $HOME/.bashrc.bk $HOME/.bashrc
fi
