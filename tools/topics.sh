### TEST 1
### 1 API + 1 BACK
### 1 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=1 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: 00:00:23.041
###            00:00:21.679

--------------------------------

### TEST 2
### 2 API + 1 BACK
### 1 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=1 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: 00:00:17.777
###            00:00:18.612

--------------------------------

### TEST 3
### 1 API + 2 BACK
### 1 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=1 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: NAO É POSSIVEL DEVIDO A ASSINATURA DE PARTICOES.
###            

--------------------------------

### TEST 4
### 1 API + 1 BACK
### 2 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=2 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: 00:00:18.006
###            00:00:18.131

### PARTITION 0 = 496
### PARTITION 1 = 504

--------------------------------

### TEST 5
### 2 API + 1 BACK
### 2 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=2 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: 00:00:19.995
###            00:00:17.351

### PARTITION 0 = 500
### PARTITION 1 = 500

--------------------------------

### TEST 6
### 1 API + 2 BACK
### 2 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=2 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: 00:00:19.102
###            00:00:18.346

### PARTITION 0 = 500
### PARTITION 1 = 500

### INSTANCE kafka-consumer:8bb71dbc9fd4d3d1165f233683b5432f = 500
### INSTANCE kafka-consumer:672b855d6a077a03f00a19cee9fb9e80 = 500

--------------------------------


### TEST 7
### 1 API + 2 BACK
### 20 PARTICAO

./kafka-topics.sh --bootstrap-server localhost:9092 --create --topic orders_new --partitions=20 --replication-factor=1

### MENSAGEMS: 1000
### RESULTADO: 00:00:18.19
###            

### PARTITION 0	    326
### PARTITION 1	    316
### PARTITION 2	    24
### PARTITION 3	    17
### PARTITION 4	    20
### PARTITION 5	    22
### PARTITION 6	    22
### PARTITION 7	    24
### PARTITION 8	    21
### PARTITION 9	    20
### PARTITION 10	14
### PARTITION 11	29
### PARTITION 12	21
### PARTITION 13	12
### PARTITION 14	19
### PARTITION 15	13
### PARTITION 16	24
### PARTITION 17	24
### PARTITION 18	14
### PARTITION 19	18

### INSTANCE kafka-consumer:4cee274f636bce437a072f7c3ac7543d	188
### INSTANCE kafka-consumer:56613518fa665984539bc4c1806dc64c	812

--------------------------------