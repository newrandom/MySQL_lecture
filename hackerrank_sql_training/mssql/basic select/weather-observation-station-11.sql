-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem?h_r=next-challenge&h_v=zen&isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select distinct city from station 
where city not like '[aeiou]%[aeiou]';

-- regular Express