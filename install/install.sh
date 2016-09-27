cd $HOME; curl -OL https://github.com/gurinderhans/.cbash/archive/master.tar.gz 
tar -xzvf $HOME/master.tar.gz
rm $HOME/master.tar.gz
mv $HOME/.bash_profile $HOME/.bash_profile.bk
echo "source ~/.cbash-master/profiles/bash_profile" >> $HOME/.bash_profile
