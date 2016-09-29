INSTALLATION_FOLDER=.cbash-gurinderhans;
WD=$HOME/$INSTALLATION_FOLDER;

rm -rf $WD;

mkdir -p $WD;

cd $WD; git clone https://github.com/gurinderhans/.cbash.git;

cd $WD/.cbash/vim; mkdir -p bundle; cd bundle;
	curl -OL https://github.com/VundleVim/Vundle.vim/archive/master.tar.gz;
	tar -xzvf master.tar.gz; mv Vundle.vim-master Vundle.vim; rm master.tar.gz;

# backup prev config
if [ -f $HOME/.bash_profile ]; then
	cd $HOME; mv .bash_profile .bash_profile.bk
fi

# create new config
echo "export CBASH_DIR=$WD/.cbash/;\
	source $WD/.cbash/profiles/bash_profile" > $HOME/.bash_profile
