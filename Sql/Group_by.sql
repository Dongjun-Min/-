-- 1. 고양이와 개는 몇 마리 있을까
SELECT  animal_type,count(*) as count from animal_ins group by animal_type order by animal_type;

-- 2. 동명 동물 수 찾기
SELECT name, count(*) as count 
from animal_ins 
where name is not null
group by name having count(name)>1
order by name;

-- 3. 입양 시각 구하기
SELECT hour(datetime) as hour, count(*)
from animal_outs
group by hour 
having hour>=9 and hour<20
order by hour;