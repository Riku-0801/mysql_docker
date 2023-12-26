select *
from 部門

except

select 部門.*
from 部門, 従業員
where 部門.部門番号 = 従業員.部門番号
        and 従業員.職級 < 3 ;