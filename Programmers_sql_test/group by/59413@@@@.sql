-- https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- 입양 시각 구하기(2)

WITH RECURSIVE HOURS AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR+1 FROM HOURS
    WHERE HOUR < 23
    )
select a.hour HOUR, count(date_format(b.datetime, '%H') ) Count
from hours a 
left join animal_outs b
on HOUR = date_format(b.datetime,'%H')
group by HOUR
order by HOUR;


-- LEFT JOIN 을 쓰게 되었다.

-- LEFT JOIN을 쓰지 않고, where 만 사용하면 HOUR의 전체가 나오지 않고, 해당되는 부분만 나왔다.

-- 메인 컬럼을 유지하려면 LEFT JOIN을 이용하는 것이 좋다는 것이 이번 문제의 핵심으로 보인다.

-- WITH RECURSIVE 문도 주의해서 보자
-- 해당 구문은 MySql 뿐만 아니라 MSSQL에도 사용되니 꼭 숙지하자!