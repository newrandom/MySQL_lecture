-- https://school.programmers.co.kr/learn/courses/30/lessons/131697
-- 가장 비싼 상품 구하기

select price as max_price from product order by price desc limit 1;

-- 단순한 조건문
-- 가장 높은 판매가를 출력하기 위해
-- order by price desc 를 이용하였고,
-- price 필드의 이름을 max_price로 지정하였고,
-- limit 1 을 붙여서 하나의 값만 나타내게 함.