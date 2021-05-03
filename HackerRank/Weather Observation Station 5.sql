/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select * from (select CITY, length(city) from station order by length(city),city ) where rownum = 1;
select * from (select CITY, length(city) from station order by length(city) desc,city desc) where rownum = 1;
