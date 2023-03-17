WITH 
    cte_tab1 
AS
    (SELECT
        min(t_date) as start_a,
        max(t_date) as end_a,
        count(*) as total
    from
        (select 
                id, 
                t_date,
                ROW_NUMBER() over (order by t_date) as seq,
                t_date-ROW_NUMBER() over (order by t_date) as grp,
                total_ammount
            from TRANSACTION
            where total_ammount>1000
            )
    group by grp
    having count(*)>2)

select 
    * 
from 
    transaction
where
    t_date between (select start_a from cte_tab1) and (select end_a from cte_tab1);