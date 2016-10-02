INSTALLATION_FOLDER=.cbash-gurinderhans
WD=$HOME/$INSTALLATION_FOLDER
BACKUP_DIR=$HOME/.cbash-gurinderhans.bk

# backup config files
mkdir -p $BACKUP_DIR;
mv $WD/vim/viminfo $BACKUP_DIR/
mv $WD/bin $BACKUP_DIR/
mv $WD/ssh_keys $BACKUP_DIR/

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
