/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select distinct (CITY) from station where lower(substr(city,1,1)) in ('a','e','i','o','u');