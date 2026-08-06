-- Rollup 

-- Why Grouping Data Becomes Harder ?

SELECT  EXTRACT(YEAR FROM orderdate) AS "year",
        EXTRACT(MONTH FROM orderdate) AS "month",
        EXTRACT(DAY FROM orderdate) AS "day",
        sum(ol.quantity)
FROM orderlines AS ol
GROUP BY
    GROUPING SETS(
        (EXTRACT(YEAR FROM orderdate)),
        (
            EXTRACT(YEAR FROM orderdate),
            EXTRACT(MONTH FROM orderdate)
        ),
        (   
            EXTRACT(YEAR FROM orderdate),
            EXTRACT(MONTH FROM orderdate),
            EXTRACT(DAY FROM orderdate)
        ),
        (    
            EXTRACT(MONTH FROM orderdate),
            EXTRACT(DAY FROM orderdate)
        ),
        (EXTRACT(MONTH FROM orderdate)),
        (EXTRACT(DAY FROM orderdate)),
        ()
    )
ORDER BY
        EXTRACT(YEAR FROM orderdate),
        EXTRACT(MONTH FROM orderdate),
        EXTRACT(DAY FROM orderdate);

----------------------------------------------------------------------------

-- Rollup combines all this process into a simple line.
-- It goes sequentially (ABC) -> (ABC)+(AB)+(A)+()

SELECT  EXTRACT(YEAR FROM orderdate) AS "year",
        EXTRACT(MONTH FROM orderdate) AS "month",
        EXTRACT(DAY FROM orderdate) AS "day",
        sum(ol.quantity)
FROM orderlines AS ol
GROUP BY
    ROLLUP(
        EXTRACT(YEAR FROM orderdate),
        EXTRACT(MONTH FROM orderdate),
        EXTRACT(DAY FROM orderdate)
    )
ORDER BY
        EXTRACT(YEAR FROM orderdate),
        EXTRACT(MONTH FROM orderdate),
        EXTRACT(DAY FROM orderdate);


-- cube combines all this process into a simple line.
-- It also makes a possible combinations.

SELECT  EXTRACT(YEAR FROM orderdate) AS "year",
        EXTRACT(MONTH FROM orderdate) AS "month",
        EXTRACT(DAY FROM orderdate) AS "day",
        sum(ol.quantity)
FROM orderlines AS ol
GROUP BY
    CUBE(
        EXTRACT(YEAR FROM orderdate),
        EXTRACT(MONTH FROM orderdate),
        EXTRACT(DAY FROM orderdate)
    )
ORDER BY
        EXTRACT(YEAR FROM orderdate),
        EXTRACT(MONTH FROM orderdate),
        EXTRACT(DAY FROM orderdate);