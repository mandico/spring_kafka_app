cd /apps/spring_kafka_app

./eureka.sh $1
if [[ $? -ne 0 ]];
then
    echo "Erro no $1 do servico Eureka."
    exit 1
fi

./gateway.sh $1
if [[ $? -ne 0 ]];
then
    echo "Erro no $1 do servico Gateway."
    exit 2
fi

./kafka-producer.sh $1
if [[ $? -ne 0 ]];
then
    echo "Erro no $1 do servico Kafka Producer."
    exit 3
fi

./kafka-consumer.sh $1
if [[ $? -ne 0 ]];
then
    echo "Erro no $1 do servico Kafka Consumer."
    exit 4
fi