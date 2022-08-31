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
    ,(
		select 
			userComment 
            ,userScore
            ,member_seq
		from userReview
    )
from member a 
inner join item b on a.seq = b.seq
order by member_seq asc
;

select
	a.itemPlace
from item a
union all
select
	b.userPlace
from member b
;
    
    
    
    
    
    
    
    
    
    
