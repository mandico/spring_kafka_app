. ../cfg/environment

export SERVICE_NAME=gateway
SERVICE_START_PORT=8000

for serverInfo in $EUREKA_SERVER
do
    IFS=':' read -ra INFO <<< $serverInfo

    server=${INFO[0]}
    instances=${INFO[1]}
    
    if [[ -z $instances ]]
    then
        instances=1
    fi

    if [[ "$HOSTNAME" == "$server" ]]
    then
        for i in $(seq 1 $instances)
        do
            export SERVICE_PORTS="$SERVICE_PORTS $(($SERVICE_START_PORT - 1 + $instanceTot + $i))"
        done
        ./service.sh $1
        exit $?
    fi
    instanceTot=$(($instanceTot + $instances))
done

exit 0