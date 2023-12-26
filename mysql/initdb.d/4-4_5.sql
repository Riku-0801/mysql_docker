select 部品番号, min(単価) as 最低単価, max(単価) as 最高単価, avg(単価) as 平均単価 
from 供給
where 部門番号 = 1
group by 部品番号;