/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select d, p, s, a 
from (
    with occ as 
        (select name, occupation, row_number() over (partition by occupation order by name asc) from occupations) 
        select * from occ 
    pivot( max(name) for occupation in ('Doctor' as d, 'Professor' as p, 'Singer' as s, 'Actor' as a))) 
    order by d, p, s, a;