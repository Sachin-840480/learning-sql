SELECT 
    CASE 
        WHEN 'abc' > 'ace' THEN 'True'
        ELSE 'False'
    -- You can name the output column using an alias
    END AS comparison_result;