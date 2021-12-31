select

(SELECT "timestamp"
FROM public.orders
ORDER BY "timestamp" DESC
LIMIT 1)


-

(SELECT "timestamp"
FROM public.orders
ORDER BY "timestamp" ASC    
LIMIT 1)

as DateDifference


select partition, COUNT(*)
from public.orders
group by partition 
order by partition 

select instance, COUNT(*)
from public.orders
group by instance;

select COUNT(*)
from public.orders
where instance = 'kafka-consumer:4cee274f636bce437a072f7c3ac7543d';

select COUNT(*)
from public.orders
where instance = 'kafka-consumer:4cee274f636bce437a072f7c3ac7543d';

select distinct instance from public.orders 