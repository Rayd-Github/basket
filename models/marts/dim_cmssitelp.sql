with     
    dim_cmssittelp as (
        select
        {{ dbt_utils.generate_surrogate_key (['id_loja']) }} as pk_loja
        , nome_loja
    from {{ ref('stg_cmssitelp') }}
    )
select *
from dim_cmssittelp
    