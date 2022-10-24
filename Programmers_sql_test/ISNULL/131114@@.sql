-- https://school.programmers.co.kr/learn/courses/30/lessons/131114
-- 경기도에 위치한 식품창고 목록 출력하기

select warehouse_id, warehouse_name, address, ifnull(freezer_yn, 'N')
from food_warehouse
where address like '%경기도%'
order by warehouse_id asc;

-- ifnull(A, B) 함수 : A가 NULL이면 B, 아니면 A
-- MSSQL 에서는 isnull(A,B) / ORACLE에서는 NVL(A, B)로 사용된다.

-- 냉동시설의 여부가 null인 경우 'N'으로 출력하는 쿼리