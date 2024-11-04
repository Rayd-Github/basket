with cartentries as (
    select  
        cast (hjmpTS as int) as TS_produto_visualizado, 
        cast(createdTS as datetime) as TS_produto_adicionado,
        cast(modifiedTS as datetime) as TS_produto_modificado,
        cast(TypePkString as int) as tipo_produto,
        cast(OwnerPkString as float64) as proprietario_item,
        cast(PK as int) as id_entrada_produto,
        cast(sealed as float64) as produto_selado,
        cast(p_baseprice as float64) as preco_base_produto,
        cast(p_calculated as float64) as preso_calculado_produto,
        cast(p_entrynumber as float64) as ordem_entrada_produto,
        cast(p_product as float64) as id_produto,
        cast(p_quantity as float64) as quantidade_produto,
        cast(p_totalprice as float64) as preco_total_produto,
        cast(p_unit as float64) as unidade_medida_produto,
        cast(p_giveaway as float64) as produto_brinde_promocao,
        cast(p_rejected as float64) as produto_rejeitado,
        cast(p_entrygroupnumbers as float64) as grupo_entrada_produto,
        cast(p_order as float64) as id_pedido_produto
    from {{ source ("basket", "tb_cartentries") }}
    )

select *
from cartentries
