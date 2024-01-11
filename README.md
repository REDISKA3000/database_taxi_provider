# database_taxi_provider

The project is dedicated to the creation of database and management system for provider. For more details watch `db_design.pdf`. To watch the scheme of our database go [here](https://lucid.app/lucidchart/7de51fea-151a-4ab6-afbe-9768e844f2b6/view?page=0_0#)

1. **Introduction:** The text introduces the project, which is to create an online taxi providing company management system. This system will allow various stakeholders, including the network owner, taxi drivers, service personnel, and investors, to manage the enterprise and improve management processes.

2. **List of Users and Their Requirements:** The text lists different user roles and their specific requirements. These roles include the Network Director, Parking Director, Parking Manager, Accountant, Technician, Security Guard, Driver, and Investor. Each role has specific tasks and responsibilities related to managing the taxi company.

3. **Functional Requirements for the System by User Roles:** Detailed functional requirements are outlined for each user role. These requirements specify what actions each role can perform within the system, such as adding or removing investors, managing supplies, approving repair requests, and more.

4. **Description of Additional Entities:** The text describes additional entities like cars and parking lots, which are part of the system's database schema. It includes attributes and constraints related to these entities.

5. **Data Constraints:** Various constraints related to data are defined, such as limits on the number of cars assigned to a driver, access restrictions for different user roles, and constraints on financial data and inventory.

6. **Challenges without Normalization:** The text identifies potential data-related challenges, including data redundancy, dependency on role changes, and other issues that may arise without proper data normalization.

7. **SQL DDL Script for Database Creation:** A SQL Data Definition Language (DDL) script is provided for creating the database tables based on the normalized schema. This script includes the creation of tables for users, investors, employees, roles, cars, parking lots, repair requests, supplies, security logs, sanctions, company balance, and rental logs.

8. **SQL DML Queries that Implement Functional Requirements:** The text includes SQL Data Manipulation Language (DML) queries for different user roles, including CEOs, Chief Parking Officers, Parking Managers, Accountants, Technicians, Security Guards, Taxi Drivers, and Investors. These queries demonstrate how the system handles various tasks and requirements for each role.

9. **Requests Grouped into Transactions:** For specific actions, such as handling rental transactions, the text outlines the process and SQL queries grouped into transactions to ensure data consistency.

Overall, the text provides a comprehensive overview of the taxi company management system, including user roles, their requirements, database schema, constraints, and SQL queries to implement functionality for each role.
