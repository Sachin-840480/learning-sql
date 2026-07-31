-- Between keyword.

-- It is much more Readable and Maintainable.

-- Normal way to write ranges.

SELECT * FROM customers
WHERE income >= 50000 AND income <= 100000;

----------------------------------------------------------------------------

-- Same as this !!

SELECT * FROM customers
WHERE income BETWEEN 50000 AND 100000;