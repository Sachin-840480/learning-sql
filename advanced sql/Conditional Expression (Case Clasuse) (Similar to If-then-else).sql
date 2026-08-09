-- Conditional Expressions:

-- Case Clause:

-- True Case.

SELECT 2,
    CASE 
        WHEN 1 = 2 THEN 'one'
        WHEN 2 = 2 THEN 'two'
    END
;

-- If all "False" and no "Else", then it gives 'NULL'.

SELECT 2,
    CASE 
        WHEN 1 = 2 THEN 'one'
        WHEN 3 = 2 THEN 'two'
    END
;

-- If all "False" but "Else" condition is present, it gives the 'Else's' output.

SELECT 2,
    CASE 
        WHEN 1 = 2 THEN 'one'
        WHEN 2 = 3 THEN 'two'
        ELSE 'other'
    END
;

