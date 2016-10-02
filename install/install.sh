INSTALLATION_FOLDER=.cbash-gurinderhans;
WD=$HOME/$INSTALLATION_FOLDER;

rm -rf $WD;

mkdir -p $WD;

cd $WD; git clone https://github.com/gurinderhans/.cbash.git;

cd $WD/.cbash/vim; mkdir -p bundle; cd bundle;
	curl -OL https://github.com/VundleVim/Vundle.vim/archive/master.tar.gz;
	tar -xzvf master.tar.gz; mv Vundle.vim-master Vundle.vim; rm master.tar.gz;


# backup previous config and replace with newer one
new_config="export CBASH_DIR=$WD/.cbash/;\
	source $WD/.cbash/profiles/bash_profile" 

if [ -f $HOME/.bash_profile ]; then
	cd $HOME; mv .bash_profile .bash_profile.bk
	echo $new_config > $HOME/.bash_profile
elif [ -f $HOME/.bashrc ]; then
	cd $HOME; mv .bashrc .bashrc.bk
	echo $new_config > $HOME/.bashrc
fi

# try to restore a previous backup

BACKUP_DIR=$HOME/.cbash-gurinderhans.bk

mv $BACKUP_DIR/viminfo $WD/vim
mv $BACKUP_DIR/bin $WD/
mv $BACKUP_DIR/ssh_keys $WD/
