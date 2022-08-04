-- ohmygirl database 사용 선언
use ohmygirl;

-- 테이블 수정 전 반드시 ERD 부터 수정

-- 전체 컬럼 조회
SELECT * FROM member2;

-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN nickname varchar(45);

ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER name;

-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nickname INT;

-- 컬럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
ALTER TABLE member2 DROP COLUMN nick;

-- row 삭제
DELETE FROM member2 WHERE seq = 2;

-- commit / rollback

select * from member2;

-- 데이터 수정
UPDATE member2 SET
	name = "TOny",
    nameEng = "Great"
WHERE seq = 1;

-- where
SELECT * FROM member2
WHERE 1 = 1
AND name like 'ji%'
-- AND name like '%bu%'
-- AND name like '%ji%'
;

SELECT * FROM member2
WHERE 1 = 1
-- AND delNy = 0
-- AND delNy > 0
-- AND delNy >= 0
AND delNY between 0 and 1
;

SELECT * FROM member2
WHERE 1 = 1
AND nameEng is null
;

select * from member;

select * from member
where 1 = 1
and user_name like '%ji%'
;

select * from member
where 1 = 1
and seq >= 8
;

select * from member
where 1 = 1
and seq between 3 and 8
;

select * from member2
where 1 = 1
and name = ""
;

select
a.seq
from member a;
-- alias