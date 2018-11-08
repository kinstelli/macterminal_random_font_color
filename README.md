
### What is this?
A simple shell script for OS X that randomly picks a font color whenever you open a new Terminal.app window or tab.

### But why, tho?
Because sometimes you have so many Terminal windows open, it's nice to have some visual mnemonic about which is which -- especially when, for example <_cough_ _cough_> one shell is logged into a QA server, and one is logged into production. 

### Acknowledgements
_Credit for this goes to some various people on the internet who've done something similar and shared a few osascript tips_

### Usage
- save the script to somewhere with a global path, preferably in a dir that's already in your `$PATH` (e.g., `/usr/local/bin/termfontcolorswitcher.sh` )
- Make it executable `chmod +x /usr/local/bin/termfontcolorswitcher.sh`
- Put the full executable path in your `.bash_profile`, preferably near the top
- Open some windows and enjoy all the colors!

### Issues
1. One day, I'm going to tune the randomization to ensure more saturation, but that day is not today.
2. The randomization also sometimes goes out of bounds. I'll fix that one day, too.
