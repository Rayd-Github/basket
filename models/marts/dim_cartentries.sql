with 
    dim_cartentries as (
        select 
            {{ dbt_utils.generate_surrogate_key (['id_pedido_produto']) }} as pk_pedido
            , TS_produto_visualizado
           -- , TS_produto_adicionado
           -- , TS_produto_modificado
            , id_tipo_produto
            , proprietario_item
            , id_entrada_produto
            , produto_selado
            , preco_base_produto
            , preso_calculado_produto
            , ordem_entrada_produto
            , id_produto
            , quantidade_produto
            , preco_total_produto
            , unidade_medida_produto
            , produto_brinde_promocao
            , produto_rejeitado
            , grupo_entrada_produto
            , id_pedido_produto
        from {{ ref('stg_cartentries') }}
    )
select *
from dim_cartentries