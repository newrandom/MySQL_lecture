-- https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 가격대 별 상품 개수 구하기

with recursive test_table as (
    select (select truncate(min(price), -4) from product) as price_group
    union all
    select price_group + 10000 from test_table
    where price_group < (select max(price) from product) - 10000
    )

-- select a.price_group, count(b.price)
-- from test_table a , product b
-- where b.price between a.price_group and a.price_group + 9999
-- group by a.price_group
-- order by a.price_group;

-- 0 : 0, 1 : 2, 2 : 2, 3:3, 4:4, 5:6, 6:7, 7:2, 8:4

-- select a.price_group, b.price
-- from test_table a, product b
-- where b.price between a.price_group and a.price_group + 9999
-- order by a.price_group

select a.price_group as PRICE_GROUP, count(b.price) as PRODUCTS
from test_table a
left join product b
-- on b.price between a.price_group and a.price_group + 9999
-- group by a.price_group
-- order by a.price_group;
ON b.price between price_group and price_group + 9999
group by price_group
order by price_group;


-- with recursive 구문 + truncate() 함수 + max()함수를 이용하는 sub쿼리 복합
-- 만원 단위의 가격대 별로 상품 개수 출력하기
-- 가격대를 기준으로 오름차순 정렬하기

-- product 테이블의 최소 금액을 시작으로, 최대 금액을 끝으로 정할 필요가 있음
-- truncate(min(price), -4) : product 테이블의 최소 금액 단위, 정수 4번째 자리에서 내림처리
-- select max(price) from product - 10000 : 최대금액 단위 산정을 위해 정한 것으로, with문의 재귀의 조건이 
-- price_group < (select max(price) from product) - 10000 이 되어야 최대 범위를 넘기지 않는다.

-- 해당 문제애서는 최대 값의 단위가 90000원을 넘지 않는데, 위의 10000을 빼지 않으면
-- 재귀 조건으로 인해 최대 범위가 90000 까지 잡게 된다.

-- 재귀 테이블에 price 테이블을 left join 하여 결과물을 출력하는데,
-- 해당 조건을 b.price between a.price_group and a.price_group + 9999 라는 범위를 지정하여 설정하였다.

-- 시간이 걸렸지만 with recursive 구문을 이용하여 풀 수 있었던 좋은 문제