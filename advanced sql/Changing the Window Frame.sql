-- Frame Clause in Window Function:

----------------------------------------------------------------------------

-- Frame Syntax:- 

-- window_function() over(
--     [ PARTITION by <col> ]
--     order by <col>
--     [ Rows | Range | Groups ] Between frame_start and frame_end
-- )


-- Types of Frames:

-- 1. Rows.
-- 2. Range.
-- 3. Groups.

----------------------------------

-- Frame Boundary:-

-- 1. frame_start.
-- 2. frame_end.


-- Frame Boundary Types for (frame_start & frame_end):- 

-- 1. Current Row - Include the current row.
-- 2. Unbounded Preceding - Includes all rows from the start of the partition up to the current row.
-- 3. Unbounded Following - Includes all rows from the current row to the end of the partition.
-- 4. N Preceding - Between given range Before the current row.
-- 5. M following - Between given range after the current row.

----------------------------------------------------------------------------

-- Adding a 'Partition By' to it.

SELECT emp_no,
    salary,
    count(salary) OVER(
        PARTITION BY emp_no
        ORDER BY emp_no
    )
FROM salaries;


-- Ordering by Salary.

SELECT emp_no,
    salary,
    count(salary) OVER(
        PARTITION BY emp_no
        ORDER BY salary
    )
FROM salaries;

----------------------------------------------------------------------------

-- Changing the "Window Frame."

----------------------------------------------------------------------------

-- Take in the whole partition using "Range".

SELECT emp_no,
    salary,
    count(salary) OVER(
        PARTITION BY emp_no
        ORDER BY salary
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
FROM salaries;


-- Take it the whole partition using "Rows".

SELECT emp_no,
    salary,
    count(salary) OVER(
        PARTITION BY emp_no
        ORDER BY salary
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
FROM salaries;


-- It gives the same effect as "order by" wihtout having to use "order_by". (IT DOES NOTHING, BUT Changing it to "ROWS do it.)

SELECT emp_no,
    salary,
    count(salary) OVER(
        PARTITION BY emp_no
        RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    )
FROM salaries;



-- It gives the same effect as Order by

SELECT emp_no,
    salary,
    count(salary) OVER(
        PARTITION BY emp_no
        ORDER BY salary
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    )
FROM salaries;