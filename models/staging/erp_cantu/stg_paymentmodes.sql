with paymentmodes as (
    select
        cast(hjmpTS as int) as TS_carrinho_visualizado,
        cast(createdTS as datetime) as TS_pagamento_adicionado,
        cast(modifiedTS as datetime) as TS_pagamento_modificado,
        cast(TypePkString as int) as modo_pagamento,
        cast(OwnerPkString as string ) as responsavel_pagamento,
        cast(PK as int ) as id_pagamento ,
        cast(sealed as string) as pagamento_selado ,
        cast(p_active as int) as ativo_inativo_pagamento,
        cast(p_code as string) as id_modo_pagamento,
        cast(p_paymentinfotype as int ) as forma_de_pagamento,
        cast(aCLTS as int) as TS_controle_acesso_pagamento,
        cast(propTS as int) as TS_controle_atualizacao_pagamento,
        cast(p_net as int ) as valor_liquido_pagamento ,
        cast(p_sapcode as string) as id_SAP,
        cast(p_b2bactive as int) as ativo_inativo_transacao_pagamento ,
        cast(p_showinstallmentspdp as int ) as ativo_inativo_parcelamento_pagamento
    from {{ source ("basket", "tb_paymentmodes")  }}
)

select *
from paymentmodes