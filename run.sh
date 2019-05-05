#!/bin/bash
tkeycoind > tkeycoind.log 2>&1 &

END=30
for ((i=1;i<=END;i++)); do
    echo "miner $i start"
    tkeycoin-cli generatetoaddress 10000 t7Bax96H1UyXu44Ro5DwJquMmSG6GuiJef 2147483647
done
