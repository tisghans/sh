git clone --recursive -j8 git@github.com:gurinderhans/.cbash.git $HOME/.cbash
mv $HOME/.bash_profile $HOME/.bash_profile.bk
echo "source ~/.cbash/profiles/bash_profile" >> $HOME/.bash_profile
