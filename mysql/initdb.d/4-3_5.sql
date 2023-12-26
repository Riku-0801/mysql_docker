select 部門番号 
from 供給
where 業者番号 = 3

union 

select 部門番号
from 従業員
where 職級 >= 3;