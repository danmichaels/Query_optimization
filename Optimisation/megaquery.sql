select FIRST 5 Clients.id,
 Clients.name,
 sum(Operations.amount/getrurchange(Bill.currency_id)) AS sum_operations_rur,
 Bill.balance/getrurchange(Bill.currency_id) as bill_balance_rur,
 Credits.rate
from Clients,Bill,Operations,Credits
where Clients.id = Bill.client_id and
Operations.for_id = Bill.id and
Credits.bill_id = Bill.id and
Operations.id IN
 (SELECT Operations.id
 FROM Operations,Credits
 WHERE Operations.date BETWEEN Credits.start_date AND '30.05.2015')
GROUP BY Clients.id,
bill_balance_rur,
Credits.rate
ORDER BY sum_operations_rur DESC;

