-- Group By:

-- -- ERROR:  column "dept_emp.dept_no" must appear in the GROUP BY clause or be used in an aggregate function 
-- -- -- SELECT dept_no, count(emp_no) from dept_emp;

-- Fix:


-- select count(emp_no) from dept_emp;  -- Just for checking.


-- select dept_no from dept_emp
-- order by dept_no;


-- select dept_no, emp_no
-- from dept_emp
-- group by dept_no, emp_no;


-- Best

-- select dept_no, count(emp_no) from dept_emp
-- group by dept_no;