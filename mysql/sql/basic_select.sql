use ohmygirl;

select
	a.seq
    ,a.userName
    ,a.userPlace
    ,b.itemHead
    ,b.itemPrice
    ,b.itemPlace
    ,b.itemDescription
    ,b.member_seq
from member a
inner join item b on a.seq = b.seq
;