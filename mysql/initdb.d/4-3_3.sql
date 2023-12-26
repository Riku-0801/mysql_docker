select 部門番号, 部門名 
from 部門 natural join 従業員 
where 職級 <= 2;