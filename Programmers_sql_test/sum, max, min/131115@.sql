-- https://school.programmers.co.kr/learn/courses/30/lessons/131115
-- 가격이 제일 비싼 식품의 정보 출력하기

SELECT product_id, product_name, product_cd, category, price
from food_product
order by price desc limit 1

-- 가격이 제일 비싼 (order by price desc limit 1) 물품 구하기 쿼리