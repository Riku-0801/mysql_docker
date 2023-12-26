select 部品番号, 部品名, min(単価) as 最低単価, max(単価) as 最高単価
from 供給 natural join 部品
group by 部品番号
having max(単価) - min(単価) >= 100;