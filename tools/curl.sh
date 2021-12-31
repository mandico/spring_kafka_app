END=1000

for i in $(seq 1 $END); 
do 
    date=$(date '+%Y-%m-%d %HH:%MM:%ss')
    curl -X POST -H "Content-Type: application/json" \
    -d '{"message": "Kafka Message '"$i"' '"$date"'"}' \
    http://localhost:8000/message
done
