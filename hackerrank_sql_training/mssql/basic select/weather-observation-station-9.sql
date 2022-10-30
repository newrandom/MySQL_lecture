-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?h_r=next-challenge&h_v=zen&isFullScreen=true

select distinct city from station where city not like '[aeiou]%';

-- regular expression 을 이용하여 쉽게 풀 수 있는 문제