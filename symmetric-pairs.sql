select distinct f.x, f.y 
from functions f 
inner join functions f1 on f1.x = f.y and f1.y = f.x
group by f.x, f.y
having count(f.x) > 1 
or f.x < f.y
order by f.x;