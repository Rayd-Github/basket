with 
    dim_addresses as (
        select 
            {{ dbt_utils.generate_surrogate_key (['id_endereco']) }} as pk_endereco
            , TS_endereco_criado
            , TS_endereco_modificado
            , id_endereco
            , pais_endereco
            , bairro_endereco
            , cep_endereco
            , regiao_endereco
            , cidade_endereco
        from {{ ref('stg_addresses') }}
    )
select *
from dim_addresses