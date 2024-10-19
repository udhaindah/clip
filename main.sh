wget https://github.com/udhaindah/clip/releases/download/v2.5.1/nexo.tar
tar -xf nexo.tar
rm -rf nexo.tar
variable5=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv nexo $variable5
read -p "nama worker: " WORKER
read -p "num cpu: " NUM
screen -dmS aaa ./$variable5 --account CP_smm --pool qubic2.hk.apool.io:3334 --worker $WORKER --thread $NUM
echo apool DONE 100 %
