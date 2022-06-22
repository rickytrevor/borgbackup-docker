mkdir ~/.ssh
cp -r /keys/* ~/.ssh/
export BORG_CACHE_DIR=""   
unset BORG_CACHE_DIR
if [ $mode == "client" ] 
then
    borg create -p --stats --compression $compressionst,$compressionlv ssh://$user@$ip:$port$backuprmt::$name '/data'

    exit 0
fi
if [ $mode == "server" ] 
    then
    echo "server mode"
    exit 0

fi


echo "error, specify a valid mode"
printf "usage: -e mode=client || -e mode=server \n"