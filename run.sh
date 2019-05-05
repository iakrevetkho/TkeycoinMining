#!/bin/bash
tkeycoind > tkeycoind.log 2>&1 &

echo "sleep for tkeycoid start"
sleep 30

 #!/bin/bash
 echo "Bash version ${BASH_VERSION}..."
 for i in {0..10..1}
    do
       echo "miner $i start"
       tkeycoin-cli generatetoaddress 10000 t7Bax96H1UyXu44Ro5DwJquMmSG6GuiJef 2147483647
 done
