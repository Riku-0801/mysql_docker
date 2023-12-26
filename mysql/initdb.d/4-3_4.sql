select x.業者番号 
from 供給 as x, 供給 as y 
where x.部品番号 = 5 
    and y.業者番号 = 3 
    and y.部門番号 = 7 
    and y.部品番号 = 5 
    and x.単価 < y.単価;