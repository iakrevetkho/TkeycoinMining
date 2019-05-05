tkeycoind &> tkeycoind.log

#!/bin/bash
for i in {1..30}
do
   echo "miner $i start"
   tkeycoin-cli generatetoaddress 10000 t7Bax96H1UyXu44Ro5DwJquMmSG6GuiJef 2147483647
done
