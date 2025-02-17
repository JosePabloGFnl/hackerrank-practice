'''
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.

Note: Print NULL when there are no more names corresponding to an occupation.
'''
WITH occ AS(
SELECT ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS rn, Name,  Occupation
FROM OCCUPATIONS
ORDER BY Name
)
SELECT 
    MAX(IF(Occupation = 'Doctor',Name,NULL)) as Doctor,
    MAX(IF(Occupation = 'Professor',Name,NULL)) as Professor,
    MAX(IF(Occupation = 'Singer',Name,NULL)) as Singer,
    MAX(IF(Occupation = 'Actor',Name,NULL)) as Actor
FROM occ
GROUP BY rn
