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