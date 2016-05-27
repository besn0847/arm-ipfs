#!/bin/ash

if [ ! -d $IPFS_PATH/config ]
then
	ipfs init
	ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001
	ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080
fi

ipfs daemon
