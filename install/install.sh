INSTALLATION_FOLDER=.cbash-gurinderhans
WD=$HOME/$INSTALLATION_FOLDER
rm -rf $WD
mkdir -p $WD;
cd $WD; curl -OL https://github.com/gurinderhans/.cbash/archive/master.tar.gz;
	tar -xzvf master.tar.gz; rm -rf master.tar.gz

# install Vundle
cd $WD/.cbash-master/vim; mkdir -p bundle; cd bundle;
	curl -OL https://github.com/VundleVim/Vundle.vim/archive/master.tar.gz;
	tar -xzvf master.tar.gz; mv Vundle.vim-master Vundle.vim; rm master.tar.gz;

# install vundle plugins
vim +PluginInstall +qall

# backup prev config
if [ -f $HOME/.bash_profile ]; then
	cd $HOME; mv .bash_profile .bash_profile.bk
fi

# create new config
echo "export CBASH_DIR=$WD/.cbash-master/;\
	source $WD/.cbash-master/profiles/bash_profile" > $HOME/.bash_profile
