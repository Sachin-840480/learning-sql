-- Conditional Expressions:

-- Null If function():

-- Syntax: NULLIF( Column, Value to Match )

----------------------------------------------------------------------------

-- True Case: Returns back '<null>'

SELECT NULLIF (0,0); -- NULL


-- False Case: Returns back the 1st Value.

SELECT NULLIF('ABC', 'DEF');    -- ABC

----------------------------------------------------------------------------