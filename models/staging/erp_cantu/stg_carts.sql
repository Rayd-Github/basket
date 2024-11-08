with carts as (
    select
    cast (hjmpTS as int ) as TS_carrinho_visualizado
    , cast(createdTS as datetime) as TS_carrinho_adicionado
    , cast(modifiedTS as datetime) as TS_carrinho_modificado
    , cast(TypePkString as float64) as tipo_carrinho
    , cast(OwnerPkString as float64) as proprietario_carrinho
    , cast(PK as int) as id_carrinho
    , cast(sealed as float64) as carrinho_selado
    , cast(p_calculated as float64) as preco_calculado_carrinho
    , cast(p_code as float64) as codigo_carrinho
    , cast(p_currency as float64) as currency_carrinho
    , cast(p_deliveryaddress as float64) as endereco_entrega_carrinho
    , cast(p_deliverycost as float64) as custo_entrega_carrinho
    , cast(p_deliverymode as float64) as modo_entrega_carrinho
    , cast(p_deliverystatus as float64) as status_entrega_carrinho
    , cast(p_description as float64) as descrica_adicional_carrinho
    , cast(p_expirationtime as float64) as periodo_expiracao_carrinho
    , cast(p_name as float64) as nome_carrinho
    , cast(p_net as float64) as valor_liquido_carrinho
    , cast(p_paymentaddress as float64) as endereco_pagamento_carrinho
    , cast(p_paymentcost as float64 ) as custo_pagamento_carrinho
    , cast(p_paymentinfo as float64) as bandeira_pagamento_carrinho
    , cast(p_paymentmode as float64) as modo_pagamento_carrinho
    , cast(p_paymentstatus as float64) as status_pagamento_carrinho
    , cast(p_status as float64) as status_carrinho
    , cast(p_exportstatus as float64) as informacao_integracao_carrinho
    , cast(p_statusinfo as float64) as adicional_informacao_carrinho
    , cast(p_totalprice as float64) as preco_total_carrinho
    , cast(p_totaldiscounts as float64) as desconto_custo_entrega_carrinho
    , cast(p_totaltax as float64) as impostos_carrinho
    , cast(p_user as float64) as id_usuario_carrinho 
    , cast(p_subtotal as float64) as preco_bruto_carrinho
    , cast(p_discountsincludedeliverycost as float64) as desconto_adicional_custo_entrega_carrinho 
    , cast(p_discountsincludepaymentcost as float64) as desconto_adicional_custo_pagamento_carrinho
    , cast(p_previousdeliverymode as float64) as historico_modo_entrega_carrinho
    , cast(p_site as float64) as id_site_carrinho 
    , cast(p_store as float64) as id_loja_carrinho
    , cast(p_guid as string) as id_global_carrinho
    , cast(p_deliveryinfo as float64) as adicional_informacao_entrega_carrinho
    , cast(p_subtotalservice as float64) as adicional_servico_carrinho
    --, cast(p_zipcodecalculatedelivery as float64) as base_calculo_custo_entrega
    , cast(p_subtotalwithoutdiscounts as float64) as valor_bruto_carrinho
    from {{ source ("basket", "tb_carts") }}
    )

select *
from carts
