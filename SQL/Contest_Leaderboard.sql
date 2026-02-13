SELECT
h.hacker_id, h.name,sum(mscore) as ssum
from hackers h
join (
    select hacker_id, challenge_id, Max(score) as mscore
    from submissions 
    group by 1,2
)best 
on h.hacker_id=best.hacker_id
group by 1,2
having ssum>0
order by ssum desc,1 asc