with paymentinfos as (
    select
        cast(createdTS as datetime) as TS_pagamento_adicionado,
        cast(modifiedTS as datetime) as TS_pagamento_modificado,
        cast(PK as int) as id_pagamento,
        cast(p_installments as float64) as parcelas_pagamento
    from {{ source ("basket", "tb_paymentinfos") }}
)

select *
from paymentinfos