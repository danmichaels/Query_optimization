
connect 'Bank_term.FDB' user 'SYSDBA' password 'masterkey';

-- select * from getrurchange(0);

-- create index operat_ind on "Operations" ("date");
-- create index cred_ind on "Credits" ("start_date");

   create index c_id on "Clients" ("id");
   create index b_c_id on "Bill" ("client_id");
   create index operat_for_id on "Operations"("for_id");
   create index b_id on "Bill"("id");
   create index cr_id on "Credits"("bill_id");
   create index c_name on "Clients" ("name");
   create index c_rate on "Credits" ("rate");

   create index b_currency_id on "Bill" ("currency_id");
   create index Exc_c_s on "Excange" ("currency_sell");
   create index Exc_c_b on "Excange" ("currency_buy");
   create index Currenc_c_id on "Currencies" ("cur_id");
   create index Curr_abbr on "Currencies" ("abbr");

   drop index c_id;
   drop index b_c_id;
   drop index operat_for_id;
   drop index b_id;
   drop index cr_id;
   drop index c_name;
   drop index c_rate;

   drop index b_currency_id;
   drop index Exc_c_s;
   drop index Exc_c_b;
   drop index Currenc_c_id;
   drop index Curr_abbr;

-- drop index operat_ind;
-- drop index cred_ind;

-- input simplequery.sql;
commit;