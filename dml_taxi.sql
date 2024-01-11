/* Queries for CEO */
-- insert new investor

INSERT INTO users(username , userrole ,useremail ,userpassword ,userstatus) 
VALUES (’some name’, ’Investor’, ’email@gmail.com’,’pass’,true);

INSERT INTO investors (userid)
(SELECT userid FROM users u 
WHERE userrole = ’Investor’
EXCEPT
SELECT userid FROM investors i);

--set dividens share

UPDATE investors
SET investmentpercentage = /* share */
WHERE investorid = (select investorid from investorse where name = /* some name */);

-- remove and add stuff

delete from users
where userid = (
select investorid from investorse 
where name = /* some name */);

delete from employees
where userid = (
select employeeid from employees
where name = /* some name */ and roleid = (
select roles from rolename = /* role */ );

INSERT INTO users(username , userrole ,useremail ,userpassword ,userstatus) 
VALUES (’some name’, ’Stuff’, ’email@gmail.com’,’pass’,true);

INSERT INTO employees (userid) 
(SELECT userid FROM users u
WHERE userrole = ’Stuff’ EXCEPT
SELECT userid FROM employees e);

 -- remove and add new car

delete from cars
where carid = (
select carid from car
where licenseplare = /* licnse plate */);

insert into car (brand, model, vin, licenseplate, year, mileage,technicalcondition, paintcondition ,tariff ,permissiontouse ,rentcost ,parkingid)
values ( /* coresponding data */);

 -- remove and add counter-agent

delete from driver
where userid = (
select driverid from driver
where driverlicense = /*licence code*/);

INSERT INTO users(username , userrole ,useremail ,userpassword ,userstatus) 
VALUES (’some name’, ’Driver’, ’email@gmail.com’,’pass’,true);

INSERT INTO driver (userid)
(SELECT userid FROM users u 
WHERE userrole = ’Driver’
EXCEPT
SELECT userid FROM driver d);

/* Queries for Chief Parking officer */
 --add car to parking

 UPDATE car
 SET parkingid = (select parkingid from parkinglot where name = /* some name */) WHERE carid =
 (select carid from car
where licenseplare = /* licnse plate */);

 --add employee to parking

 UPDATE employees
 SET parkingid = (select parkingid from parkinglot where name = /* some name */) WHERE carid =
 (select carid from car
where licenseplare = /* licnse plate */);

 -- supply fuel/spare parts

 insert into Supplies (parkingid , fuealquantity ,sparepartsquantity , supplydate)
 value (/* corresponding values */);

/* Queries for Parking manager */
 --approve repair request

 update repairrequest
set approvalstatus = true;

 --permit or block car to use

 UPDATE car
 SET permissiontouse = /* true or false */
WHERE carid = (select carid from car where licenseplare = /* licnse plate */) ;

 -- permit driver ro work

  UPDATE driver
SET driverstatus = /* true or false */
 WHERE carid = (select carid from car where licenseplare = /* licnse plate */);

 -- logging working start time and end time of a car

insert into rentallog(carid, driverid, rentalstarttime)
values((select carid from car where licenseplare = /* licnse plate */), (select driverid
from driver where name = ’some name’),current_timestamp;

UPDATE rentallog
SET rentalendtime = current_timestamp, totalcost = /* some cost */
where carid = (select carid from car where licenseplare = /* licnse plate */) limit1;


/* Queries for Financial reporting */
-- Profit and Loss report data

SELECT OperationID , OperationTime , InitialBalance , OperationAmount , OperationType , FinalBalance
FROM CompanyBalance
WHERE OperationType = ’PnL’;

 -- retrieve and update payroll information for employees

SELECT EmployeeID , UserID , RoleID , Salary FROM Employees
WHERE RoleID IN (
SELECT RoleID FROM Roles 
WHERE RoleName = ’Employee’);

 -- update the salary for a specific employee

UPDATE Employees
SET Salary = <NewSalary >
WHERE EmployeeID = (
select employeeid from employees 
where name = /*some name*/);

/* Queries for Technician */
 --assign repair request

insert into repairrequest (carid , technicianid ,startdate ,enddate ,usedparts)
values (
(select carid from car 
where licenseplare = /* licnse plate */),
(select employeeid from employees 
where name = /* name */ and roleid = (select roleid from roles 
where name = /* name */),current_date, /* some date */,/* supply id */);

/* Queries for Security guard */
 -- log the entry of a visitor to the parking lot

INSERT INTO SecurityLog (GuardID , VisitorLog , PatrolZone , PatrolStartTime)
VALUES (
(select employee from employees 
where name = /* some name */ and roleid = 
(select roleid from where name = 'Guard'), 
’Visitor entered the parking lot’, ’<PatrolZone >’, CURRENT_TIME);

 -- log the exit of a visitor from the parking lot

INSERT INTO SecurityLog (GuardID , VisitorLog , PatrolZone , PatrolEndTime)
VALUES (
(select employee from employees 
where name = /* some name */ and roleid = 
(select roleid from roles where name = 'Guard'), 
’Visitor exited the parking lot’, ’<PatrolZone >’, CURRENT_TIME);

-- add patrol reports

UPDATE SecurityLog
SET PatrolReports = ’<PatrolReport >’
WHERE GuardID = (select employee from employees where name = /* some name */ and roleid = 
(select roleid from roles where name = 'Guard') AND PatrolStartTime = CURRENT_DATE;

/* Queries for Taxi driver */
-- taxi driver to receive a car

UPDATE Car
SET PermissionToUse = true
WHERE CarID = (select carid from car where licenseplare = /* licnse plate */), AND ParkingID = ( select parkingid from parkinglot where name = /* some name */);

-- Code to allow a taxi driver to return a car

UPDATE Car
SET PermissionToUse = false
WHERE CarID = (select carid from car where licenseplare = /* licnse plate */);

/*Queries for investors*/
-- Query to retrieve financial report for an investor

SELECT
c.OperationTime AS operation_time , c.InitialBalance AS initial_balance ,
c.OperationAmount AS operation_amount , c.OperationType AS operation_type ,
c.FinalBalance AS final_balance FROM
CompanyBalance c
JOIN Investors i ON c.OperationID = i.UserID
WHERE
i.InvestorID = (select invrestorid from investors where name = ’some name’);