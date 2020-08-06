-- 1. 없어진 기록 찾기
SELECT animal_id,name
from animal_outs
where animal_id not in (select animal_id from animal_ins)
order by animal_id;

-- 2. 있었는데요 없었습니다
select a.animal_id, a.name
from animal_ins a, animal_outs b
where a.animal_id = b.animal_id and a.datetime>b.datetime
order by a.datetime;

-- 3. 오랜 기간 보호한 동물(1)
SELECT a.name, a.datetime
from animal_ins a
where a.animal_id not in (select animal_id from animal_outs)
order by a.datetime
limit 3;

-- 4. 보호소에서 중성화한 동물
SELECT a.animal_id, a.animal_type, a.name
from animal_ins a, animal_outs b
where a.animal_id = b.animal_id and a.sex_upon_intake!=b.sex_upon_outcome