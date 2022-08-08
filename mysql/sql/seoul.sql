use ohmygirl;

-- 공통코드

select
	a.seq
    ,a.name
    ,b.seq
    ,b.name
from codeGroup a
inner join code b on a.seq = b.codeGroup_seq
;

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
