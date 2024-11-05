with cmssitelp as (
    select
        cast(ITEMPK as int) as id_loja
        , cast(p_name as string) as nome_loja
    from {{ source ("basket", "tb_cmssitelp") }}
)

select *
from cmssitelp