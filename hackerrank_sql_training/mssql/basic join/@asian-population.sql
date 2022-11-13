-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

select sum(a.population) from city a
join country b
on a.countrycode = b.code
where b.continent = 'Asia';