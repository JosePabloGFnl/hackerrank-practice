/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/
SELECT 
CASE WHEN ((A+B<=C) OR (A+C<=B) OR (C+B<=A)) THEN 'Not A Triangle' ELSE
CASE WHEN (A=B) AND (B=C) THEN 'Equilateral' ELSE
CASE WHEN (A=B) OR (B=C) OR (A=C) THEN 'Isosceles' ELSE
'Scalene' 
END
END
END
FROM TRIANGLES;
