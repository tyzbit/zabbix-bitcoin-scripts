#!/bin/bash
HOME="/home/zabbix/"
USER="zabbix"
PWD="/home/zabbix/"
blockfile='/tmp/.bitcoinblock'
blocktime='/tmp/.bitcointime'
blockage='/tmp/.bitcoinage'

function getblock {
	bitcoin-cli getinfo | jq '.blocks'
}

if [ ! -f ${blockfile} ]; then
	getblock > ${blockfile}
	echo "$(date +%s)" > ${blocktime}
	echo "1" > ${blockage}
else
	oldblock="$(cat ${blockfile})"
	newblock="$(getblock)"
	if [[ ${oldblock} -ne ${newblock} ]]; then
		echo "${newblock}" > ${blockfile}
		echo "$(date +%s) - $(cat ${blocktime})" | bc > ${blockage}
		echo "$(date +%s)" > ${blocktime}
	fi
fi

echo $(cat ${blockage})
