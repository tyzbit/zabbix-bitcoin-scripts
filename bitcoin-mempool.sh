#!/bin/bash
HOME="/home/zabbix/"
USER="zabbix"
PWD="/home/zabbix/"

bitcoin-cli getmempoolinfo | jq '.bytes'