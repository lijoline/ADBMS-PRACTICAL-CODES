CREATE TABLE Numbers (Num1 DECIMAL(10,2),Num2 DECIMAL(10,2));
INSERT INTO Numbers VALUES (25.75, 4.20);
SELECT
    Num1,
    Num2,
    ROUND(Num1) AS Rounded_Value,
    CEIL(Num1) AS Ceiling_Value,
    FLOOR(Num1) AS Floor_Value,
    ABS(-Num1) AS Absolute_Value,
    POWER(Num1, 2) AS Power_Value,
    SQRT(Num1) AS Square_Root
FROM Numbers;
