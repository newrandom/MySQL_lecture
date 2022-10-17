-- 3월에 태어난 여성 회원 목록 출력하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131120


-- 정답 :
select member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d')
from member_profile
where date_of_birth like '%-03-%'
and gender = 'w'
and tlno is not null
order by member_id

-- DATE_FORMAT(DATETIME, '%Y-%m-%d')
-- DateTime 형식을 Date 로 변환하는 방법을 알아보는 문제

-- 날짜 변환하는 함수를 기억하고 있어야겠다.