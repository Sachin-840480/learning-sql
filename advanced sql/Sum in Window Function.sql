-- "Sum" window Function:

-- Question: Wanting to know how much cumulatively a customer has ordered at our store.

-- It is always better to "MIN", "MAX", "AVG", "SUM" rather than "first_value", "last_value".

----------------------------------------------------------------------------

-- Getting Info About the Table.

-- select customerid, orderid, orderdate, totalamount from orders
-- order by customerid;
-- 
-- SELECT customerid, sum(totalamount) FROM orders
-- GROUP BY customerid
-- ORDER BY customerid;
-- 
----------------------------------------------------------------------------

-- Solution:-

-- My try: (YES It's Correct).

SELECT customerid, orderid, orderdate, totalamount,
    sum(totalamount) OVER (
        PARTITION BY customerid
        ORDER BY orderid
)
FROM orders
ORDER BY customerid;

----------------------------------------------------------------------------

-- If we remove the "order_by" then it will just give the total sum.

SELECT customerid, orderid, orderdate, totalamount,
    sum(totalamount) OVER (
        PARTITION BY customerid
)
FROM orders
ORDER BY customerid;

-- FIX: Just add "Order by" 'orderid'.

----------------------------------------------------------------------------

-- If we partition by order_id.

-- It will cause an problem, as it will partition with order by which are uniques and we wont be able to get the cummulative sum of the orders done by cusomter.

-- It won't be fixed even if we add "order by orderid" or "order by customerid".

SELECT customerid, orderid, orderdate, totalamount,
    sum(totalamount) OVER (
        PARTITION BY orderid
)
FROM orders
ORDER BY customerid;