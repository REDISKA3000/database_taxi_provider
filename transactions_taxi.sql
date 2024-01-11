begin;
update rentallog set renatlendtme = current_timestamp, total cost = /* some cost */ 
where carid = 
(select carid from licenseplate = /* licence code */);

transaction time = current_timestamp;

insert into companybalance (operationtime , initialbalance , operationtype)
values transactiontime, 
(select finalbalance from company balance 
ORDER BY operationtime DESC limit 1), /*Income*/;

update companybalance set totalbalance = initialbalance + 
(select totalcost from rentallog 
where carid = 
(select carid from car 
where licenseplate = /* license code*/ limit 1), operationamount = 
(select totalcost from rentallog 
where carid = 
(select carid from car 
where licenseplate = /* license code*/ limit 1) 
where operationtime = transactiontime));

if (select finalbalance from companybalance order by operationtime desc limit 1) - 
(select finalbalance from companybalance 
order by operationtime desc limit 1) = 0 or 
(select operationamount from companybalance 
order by operationtime desc limit 1)=0 
then rollback; 
endif;

commit;