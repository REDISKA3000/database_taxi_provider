
 
--1. Table Users:
CREATE TABLE Users (
UserID SERIAL PRIMARY KEY ,
UserName VARCHAR(255), UserRole VARCHAR(50),
UserEmail VARCHAR(255), UserPassword VARCHAR(255),
UserStatus BOOLEAN );
--2. Table Investors:
CREATE TABLE Investors ( InvestorID SERIAL PRIMARY KEY ,
 UserID INTEGER REFERENCES Users(UserID), InvestmentPercentage FLOAT
 );
 --3. Table Employees:
CREATE TABLE Employees (
 EmployeeID SERIAL PRIMARY KEY ,
UserID INTEGER REFERENCES Users(UserID),
 RoleID INTEGER REFERENCES Roles(RoleID),
 ParkingID INTEGER REFERENCES ParkingLot(ParkingID), Salary DECIMAL(15, 2)
 );
 --4. Table Roles:
CREATE TABLE Roles (
 RoleID SERIAL PRIMARY KEY , RoleName VARCHAR (50)
 );
 --5. Table Driver:
CREATE TABLE Driver (
 DriverID SERIAL PRIMARY KEY ,
UserID INTEGER REFERENCES Users(UserID),
 DriverLicense VARCHAR(20), DriverStatus BOOLEAN ,
 ParkingID INTEGER REFERENCES ParkingLot(ParkingID) );
 --6. Table Car:
 CREATE TABLE Car (
CarID SERIAL PRIMARY KEY ,
 Brand VARCHAR(50), Model VARCHAR(50),
 VIN VARCHAR(17), LicensePlate VARCHAR(15),
 Year SMALLINT , Mileage INT ,
 TechnicalCondition VARCHAR(20), PaintCondition VARCHAR(20),
 Tariff VARCHAR(10), PermissionToUse BOOLEAN ,
 RentCost DECIMAL(10, 2),
ParkingID INTEGER REFERENCES ParkingLot(ParkingID)
 );
 --7. Table ParkingLot:
CREATE TABLE ParkingLot (
 ParkingID SERIAL PRIMARY KEY , Name VARCHAR(255),
 Address VARCHAR(255), Capacity SMALLINT ,
 EmployeeCount SMALLINT , PatrolZones SMALLINT
 );
 --8. Table RepairRequest:
CREATE TABLE RepairRequest (
 RequestID SERIAL PRIMARY KEY ,
CarID INTEGER REFERENCES Car(CarID),
 TechnicianID INTEGER REFERENCES Employees(EmployeeID), ApprovalStatus BOOLEAN ,
 StartDate DATE , EndDate DATE ,
 UsedParts SERIAL REFERENCES Supplies(SupplyID) );
 --9. Table Supplies:
 CREATE TABLE Supplies (
SupplyID SERIAL PRIMARY KEY ,
 ParkingID INTEGER REFERENCES ParkingLot(ParkingID), FuelQuantity DECIMAL(10, 2),
SparePartsQuantity SMALLINT , SupplyDate DATE
);
--10. Table SecurityLog:
CREATE TABLE SecurityLog (
LogID SERIAL PRIMARY KEY ,
GuardID INTEGER REFERENCES Employees(EmployeeID),
VisitorLog TEXT ,
PatrolZone VARCHAR(50), PatrolStartTime TIME ,
PatrolEndTime TIME , PatrolReports TEXT
);
--11. Table Sanctions:
CREATE TABLE Sanctions (
SanctionID SERIAL PRIMARY KEY ,
DriverID INTEGER REFERENCES Driver(DriverID),
Type VARCHAR(50), PercentageChange DECIMAL(5, 2),
WorkSuspension BOOLEAN );
--12. Table CompanyBalance:
CREATE TABLE CompanyBalance ( OperationID SERIAL PRIMARY KEY ,
OperationTime TIMESTAMP , InitialBalance DECIMAL(15, 2),
OperationAmount DECIMAL(15, 2), OperationType VARCHAR(10),
FinalBalance DECIMAL(15, 2) );
--13. Table RentalLog:
CREATE TABLE RentalLog ( RentalID SERIAL PRIMARY KEY ,
DriverID INTEGER REFERENCES Driver(DriverID), CarID INTEGER REFERENCES Car(CarID),
RentalStartTime TIMESTAMP , RentalEndTime TIMESTAMP ,
TotalCost DECIMAL(15, 2) );