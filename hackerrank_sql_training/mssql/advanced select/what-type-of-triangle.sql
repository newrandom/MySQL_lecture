-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true


select
    case when (a=b and a=c) then 'Equilateral'
        when (a=b or b=c or a=c) and a+b > c then 'Isosceles'
        when a+b > c then 'Scalene'
        else 'Not A Triangle'
    end
from triangles;

-- 복합 조건 쿼리 만들기
-- case when (조건문) then 'value'
--      when (조건문2) then 'value2'
--      else 'value3'
-- end 'field_name'
