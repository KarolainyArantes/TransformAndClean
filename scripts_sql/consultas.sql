UPDATE employee SET Super_ssn = '888665555' WHERE Ssn = '888665555';

SELECT e1.Fname AS Fname_employee, e2.Fname AS Fname_super FROM employee e1 LEFT JOIN employee e2 ON e1.Super_ssn = e2.Ssn;

SELECT Fname FROM employee WHERE Ssn IN ( SELECT super_ssn FROM employee);

SELECT Fname, Ssn  FROM employee WHERE Ssn IN ( SELECT super_ssn FROM employee);
