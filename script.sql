connect 'localhost:C:\Users\Danya\Documents\BD\Optimisation\Bank_term.FDB' user 'SYSDBA' password 'masterkey';
drop database; 
commit;

create database 'localhost:C:\Users\Danya\Documents\BD\Optimisation\Bank_term.FDB' user 'SYSDBA' password 'masterkey';
connect 'localhost:C:\Users\Danya\Documents\BD\Optimisation\Bank_term.FDB' user 'SYSDBA' password 'masterkey';
commit;

input Bank_term.sql;
commit;

input data\5_currency_gen.sql;
input data\10000_cli_gen.sql;
input data\10000_bill_gen.sql;
input data\12500_card_gen.sql;
input data\5000_cred_gen.sql;
input data\5000_dep_gen.sql;
input data\20_exca_gen.sql;
input data\4_op_type_gen.sql;
input data\5_banks_gen.sql;
--input data\procedures.sql;
input data\bank_proc.sql;
input data\25000_op_gen.sql;
commit;