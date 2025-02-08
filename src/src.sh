sudo make -s -C ~/my-suckless-tools/src/dwm/ clean install &> /dev/null 
cd $HOME/my-suckless-tools/src/stt/ && sudo make -s clean install &> /dev/null
cd $HOME/my-suckless-tools/src/slstatus && sudo make -s clean install &> /dev/null
cd $HOME/my-suckless-tools/src/dmenu && sudo make -s clean install &> /dev/null
# rm *.o and config.h
cd $HOME/my-suckless-tools/src/dwm/ ; rm -rvfi *.o config.h 
cd $HOME/my-suckless-tools/src/stt/ ; rm -rvfi *.o config.h 
cd $HOME/my-suckless-tools/src/slstatus ; rm -rvfi *.o config.h 
cd $HOME/my-suckless-tools/src/dmenu ; rm -rvfi *.o config.h 
