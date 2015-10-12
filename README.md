# zabbix-bitcoin-scripts
A collection of scripts written to plug into Zabbix to monitor a bitcoin node


## Dependencies:
*jq* - `sudo apt-get install jq`

## Installation:
* Copy the scripts (sans .sh if you're using the provided template) to /usr/local/bin/

* Ensure the Zabbix user can make calls to bitcoin-cli (set up bitcoin.conf for that user, might have to adjust scripts to match the zabbix user's home directory)

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

#### bitcoin-mempool.sh
Output the size of the mempool

#### zabbix_template.xml
Example Zabbix template to get you started

#### zabbix_screen.xml
Example Zabbix screen to get you started (change the host to match your hostname)
