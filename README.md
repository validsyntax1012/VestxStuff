# Use this for hot/cold masternode setup

Send exactly 15 millions coins to yourself in 1 input

Rent a VPS make sure its running Ubuntu 18.04

log into the vps and input:

wget https://raw.githubusercontent.com/validsyntax1012/VestxStuff/master/vestxnode.sh

chmod +x vestxnode.sh

./vestxnode.sh

Next:


Wait for script to complete and follow instructions at the end 
Go to your home wallet open the debug console input: masternode outputs
Copy the 2 lines in the masternode.config while following directions on the script. 
After all is synced and you have proper confirmation go to debug console and type : 
masternode start-alias MyMN



Another guide given by community member's that also details how to log onto a vps from windows was given here. 


https://docs.google.com/document/d/1faR_nlavlR1-DFlbQWM7LmFz4mFyAd-gsnlR5l9lLqs/edit#
