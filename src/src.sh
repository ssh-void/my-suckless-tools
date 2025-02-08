sudo make -s -C ~/my-suckless-tools/src/dwm/ clean install 
cd $HOME/my-suckless-tools/src/stt/ && sudo make -s clean install 
cd $HOME/my-suckless-tools/src/slstatus && sudo make -s clean install 
cd $HOME/my-suckless-tools/src/dmenu && sudo make -s clean install 
cd $HOME/my-suckless-tools/src/dwm/ ; rm -rf *.o config.h 
cd $HOME/my-suckless-tools/src/stt/ ; rm -rf *.o config.h 
cd $HOME/my-suckless-tools/src/slstatus ; rm -rf *.o config.h 
cd $HOME/my-suckless-tools/src/dmenu ; rm -rf *.o config.h 

