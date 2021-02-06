#!/bin/bash

POOL=stratum+tcp://asia.sparkpool.com:3333
WALLET=0x18800b6782a5014a0d26f0cd460db51b17c2f8b2
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 1 $@
