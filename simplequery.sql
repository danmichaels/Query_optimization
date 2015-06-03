


select first 5
    "Clients"."id",
    "Clients"."name",
    sum( "Operations"."amount" / "Excange"."ratio") as SUM_OPERATIONS_RUR,
    --      "Bill"."balance"/"Excange"."ratio" as BILL_BALANCE_RUR,
    "Credits"."rate"
from "Excange",
"Currencies",
"Credits",
"Bill",
"Operations",
"Clients"
where 
   (
      ("Clients"."id" = "Bill"."client_id")
   and 
      ("Operations"."for_id" = "Bill"."id")
   and 
      ("Credits"."bill_id" = "Bill"."id")

   and 
      ("Excange"."currency_sell" = "Bill"."currency_id")
   and 
      ("Excange"."currency_buy" = "Currencies"."cur_id")
   and 
      ("Currencies"."abbr" = 'RUR')

   and 
      ("Operations"."for_id" in
      (select"Operations"."for_id" from"Operations"
      where"Operations"."date" between'01.01.2010' and '30.05.2015' and
      "Operations"."date" between"Credits"."start_date" and '30.05.2015'))
   --and
   --   ("Bill"."id" in
   --   (select"Credits"."bill_id" from "Credits"
   --   where"Credits"."last_update" between'01.01.2010' and '30.05.2015'))
   )
group by
"Clients"."id",
"Clients"."name",
"Credits"."rate"
ORDER BY SUM_OPERATIONS_RUR DESC;
