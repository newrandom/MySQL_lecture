-- 131536
-- https://school.programmers.co.kr/learn/courses/30/lessons/131536
-- 재구매가 일어난 상품과 회원 리스트 구하기


-- 정답
select user_id, product_id
from online_sale
group by user_id, product_id
having count(product_id) > 1
order by user_id, product_id desc;

-- 헷갈렸던 부분 :
-- 동일한 회원이 동일한 상품을 재구매한 데이터를 구하라

-- group by 를 쓰는게 맞는거 같은데 조건부로 계속 where 를 사용하였던 오류를 범함
-- group by 는 having 조건부를 써야한다.

-- group by 로 user_id, product_id 를 기준으로 잡고,
-- count(product_id)가 1을 넘는 것 (재구매)을 출력하니 성공하였다.