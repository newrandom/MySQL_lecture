-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

-- 1
select case when (b.grade >= 8) then a.name
            else null
            end name,
        b.grade, a.marks
from students a
join grades b
on a.marks between b.min_mark and b.max_mark
order by b.grade desc, a.name, a.marks;

-- 2
select * from (select a.name, b.grade, a.marks from students a
join grades b
on a.marks between b.min_mark and b.max_mark
where b.grade >= 8
order by b.grade desc, a.name);

select * from (select 'NULL', b.grade, a.marks from students a
join grades b
on a.marks between b.min_mark and b.max_mark
where b.grade < 8
order by b.grade desc, a.marks);


