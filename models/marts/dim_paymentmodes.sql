with     
    dim_paymentmodes as (
        select
        {{ dbt_utils.generate_surrogate_key (['id_SAP']) }} as pk_SAP
        , TS_carrinho_visualizado
        , TS_pagamento_adicionado
        , TS_pagamento_modificado
        , modo_pagamento
        , responsavel_pagamento
        , id_pagamento
        , pagamento_selado
        , ativo_inativo_pagamento
        , id_modo_pagamento
        , forma_de_pagamento
        , TS_controle_acesso_pagamento
        , TS_controle_atualizacao_pagamento
        , valor_liquido_pagamento
        , ativo_inativo_transacao_pagamento
        , ativo_inativo_parcelamento_pagamento
    from {{ ref('stg_paymentmodes') }}
    )
select *
from dim_paymentmodes