# Write your MySQL query statement below
#1.用IFNULL 函数解决出现NULL的问题
#2.一般排序要排distinct
SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
