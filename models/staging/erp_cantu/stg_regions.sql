with regions as (
    select
        cast(hjmpTS as int )as TS_regiao,
        cast(createdTS as datetime)as TS_regiao_adicionada,
        cast(modifiedTS as datetime )as TS_regiao_modificada ,
        cast(TypePkString as int) as categoria_regiao,
        cast(OwnerPkString as int) as proprietario_regiao,
        cast(PK as int) as id_regiao ,
        cast(sealed as string) as regiao_selada ,
        cast(p_active as int) as ativa_inativa_regiao ,
        cast(p_isocode as string) as pais_estado_regiao,
        cast(p_country as int) as pais_regiao,
        cast(p_isocodeshort as string )as estado_regiao,
        cast(aCLTS as int) as controle_acesso_regiao ,
        cast(propTS as int) as TS_controle_acesso_regiao,
 from {{ source ("basket", "tb_regions") }}
)

select *
from regions