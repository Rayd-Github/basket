
with
    dim_regions as (
        select 
            {{ dbt_utils.generate_surrogate_key (['id_regiao']) }} as pk_regiao
            , TS_regiao
            , TS_regiao_adicionada
            , TS_regiao_modificada
            , categoria_regiao
            , proprietario_regiao
            , regiao_selada
            , ativa_inativa_regiao
            , pais_estado_regiao
            , pais_regiao
            , estado_regiao
            , controle_acesso_regiao
            , TS_controle_acesso_regiao
        from {{ ref('stg_regions') }}
    )
select *
from dim_regions