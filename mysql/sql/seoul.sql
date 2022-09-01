use ohmygirl;

select DISTINCT
	a.seq
    ,a.name
    ,(select count(bb.codeGroup_seq) from code bb where bb.codeGroup_seq = a.seq) as sum
from codeGroup a
inner join code b on a.seq = b.codeGroup_seq
;
			

-- 공통코드

		SELECT
			a.seq 
		    ,a.name 
		    ,b.seq 
		    ,b.name
            ,b.codeGroup_seq
		FROM codeGroup a
		INNER JOIN code b on a.seq = b.codeGroup_seq;

select * from code;
select * from codeGroup;

-- 로그인
select 
	userID
    ,userName
from member 
where 1=1 and 
	userID = "jinbuem"
    and
    userPW = "1234"
;

-- 메인화면
select 
	a.itemHead
    ,a.itemPrice
    ,a.itemPlace
    ,a.itemRegDatetime
    ,a.itemSaleNY
from item a
where 1=1 and
	itemSaleNY = 0
;

-- item 상세화면
select
	a.itemHead
    ,a.itemPrice
    ,a.itemDescription
    ,b.userName
    ,b.userPlace
from item a
inner join member b on a.member_seq = b.seq
where 1=1 
and a.seq = 1
;

-- userInfo
select
	a.seq
    ,a.userName
    ,a.userID
    ,a.userEmail
    ,a.userMobile
    ,a.userPlace
from member a
where 1=1
and
	a.seq=2
;

-- userReview
select
	a.seq
    ,a.userComment
    ,a.userScore
    ,b.userName
from userReview a
inner join member b on a.member_seq = b.seq
where 1 = 1
and b.seq = 1
;

-- 내가 등록한 상품
select
	a.itemHead
    ,a.itemPrice
    ,b.seq
from item a
inner join member b on a.member_seq = b.seq
where 1=1
and b.seq = 1
;

-- 구매내역
select
	b.userName
    ,a.itemHead
    ,a.itemPrice
from item a
inner join member b on a.member_seq1 = b.seq
where 1=1
and b.seq = 2
;

-- 장바구니
select
	a.itemHead
    ,a.itemPrice
from item a
inner join cart b on  a.seq = b.item_seq
where 1=1
and b.member_seq = 1
;

-- 회원가입
insert into member(
	userID
    ,userPW
    ,userName
    ,userEmail
    ,domain
    ,userMobile
    ,userPlace
    ,userSignDate
    ,delNY
)
values (
    "test"
    ,"1234"
    ,"김진범"
    ,"infomer@naver.com"
    ,5
    ,01012341234
    ,"수원시 팔달구 지동"
    ,"2022-08-09"
    ,0
)
;

-- ID 중복 검사
select
    a.userID
from member a
where 1=1
and userID = "?"
;

-- 비밀번호 찾기
select
    a.userPW
from member a
where 1=1
and userName = "?"
and userEmail = "?"
;

-- 아이디 찾기
select
    a.userID
from member a
where 1=1
and userName = "?"
and userPW = "?"
and userEmail = "?"
;

-- 아이템 등록
insert into item(
    itemHead
    ,itemPrice
    ,itemDescription
    ,itemPlace
    ,itemRegDatetime
    ,itemSaleNY
    ,member_seq
)
values(
    "유기농 사과 판매합니다"
    ,30000
    ,"무농약 산지직송 유기농 사과"
    ,"수원시 팔달구 지동"
    ,"2022-08-09 12:22:00"
    ,1
    ,3
)
;









