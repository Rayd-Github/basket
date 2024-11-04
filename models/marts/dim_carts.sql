with 
    dim_carts as (
        select 
            {{ dbt_utils.generate_surrogate_key (['id_global_carrinho']) }} as pk_carrinho
            , TS_carrinho_visualizado
            , TS_carrinho_adicionado
            , TS_carrinho_modificado
            , tipo_carrinho
            , proprietario_carrinho
            , id_carrinho
            , carrinho_selado
            , preco_calculado_carrinho
            , codigo_carrinho
            , currency_carrinho
            , endereco_entrega_carrinho
            , custo_entrega_carrinho
            , modo_entrega_carrinho
            , status_entrega_carrinho
            , descrica_adicional_carrinho
            , periodo_expiracao_carrinho
            , nome_carrinho
            , valor_liquido_carrinho
            , endereco_pagamento_carrinho
            , custo_pagamento_carrinho
            , bandeira_pagamento_carrinho
            , modo_pagamento_carrinho
            , status_pagamento_carrinho
            , status_carrinho
            , informacao_integracao_carrinho
            , adicional_informacao_carrinho
            , preco_total_carrinho
            , desconto_custo_entrega_carrinho
            , impostos_carrinho
            , id_usuario_carrinho
            , preco_bruto_carrinho
            , desconto_adicional_custo_entrega_carrinho
            , desconto_adicional_custo_pagamento_carrinho
            , historico_modo_entrega_carrinho
            , id_site_carrinho
            , id_loja_carrinho
            , id_global_carrinho
            , adicional_informacao_entrega_carrinho
            , adicional_servico_carrinho
            --, base_calculo_custo_entrega
            , valor_bruto_carrinho
        from {{ ref('stg_carts')}}
    )
select *
from dim_carts