# zabbix-bitcoin-scripts
A collection of scripts written to plug into Zabbix to monitor a bitcoin node

## Installation:
* Copy the scripts (sans .sh if you're using the provided template) to /usr/local/bin/

* Ensure the Zabbix user can make calls to bitcoin-cli (set up bitcoin.conf for that user)

* Ensure the Zabbix user can write to the /tmp/ directory

#### bitcoin-blocks.sh 
Outputs the current block height
#### bitcoin-blocktime.sh
Outputs the age of the last block
#### bitcoin-connections.sh
Outputs the number of connections to the bitcoin node
#### bitcoin-difficulty.sh
Output the current difficulty
#### bitcoin-hashrate.sh
Output the estimated hashrate calculated from the difficulty

#### zabbix_template.xml
Example Zabbix template to get you started

#### zabbix_screen.xml
Example Zabbix screen to get you started (change the host to match your hostname)
