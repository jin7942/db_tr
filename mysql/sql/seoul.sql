use ohmygirl;

select
	a.seq
    ,a.name
    ,b.seq
    ,b.name
from codeGroup a
inner join code b on a.seq = b.seq
;

-- 로그인
select * from member where userID = "jinbuem" and userPW = "1234"
;

-- 메인화면
select 
	a.itemHead
    ,a.itemPrice
    ,a.itemPlace
    ,a.itemRegDatetime
from item a
;

-- item 상세화면
select
	a.itemSaleNY
	,a.itemHead
    ,a.itemPrice
    ,a.itemDescription
    ,b.userName
    ,b.userPlace
from item a
inner join member b on a.seq = b.seq
;