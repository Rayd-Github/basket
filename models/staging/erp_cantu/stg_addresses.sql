with 
    addresses as (
        select
            cast(createdTS as datetime) as TS_endereco_criado,
            cast(modifiedTS as datetime) as TS_endereco_modificado,
            cast(PK as int) as id_endereco,
            cast(p_country as int) as pais_endereco,
            cast(p_district as string) as bairro_endereco,
            cast(p_postalcode as string) as cep_endereco,
            cast(p_region as float64) as regiao_endereco,
            cast(p_town as string) as cidade_endereco,
            cast (p_ibgecode as string) as codigoIBGE_endereco,
            cast(p_reference as string) as referencia_endereco
        from {{ source ("basket", "tb_addresses") }}
    )

select *
from addresses