-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

-- 기본적으로 이렇게 쓰면 되는데
select distinct city from station
where (city like 'a%' or
        city like 'e%' or
        city like 'i%' or
        city like 'o%' or
        city like 'u%') and
        (city like '%a' or
            city like '%e' or
            city like '%i' or
            city like '%o' or
            city like '%u');


-- regular expression 을 이용하여 풀수도 있다.
select city from station where city like '[aeiou]%' and city like '%[aeiou]';

--(참조)
--https://docko.tistory.com/entry/MSSQL-Like-%EB%AC%B8%EC%97%90-%EC%A0%95%EA%B7%9C%EC%8B%9D-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0