with     
    dim_paymentinfos as (
        select
        {{ dbt_utils.generate_surrogate_key (['id_pagamento']) }} as pk_pagamento
        , TS_pagamento_adicionado
        , TS_pagamento_modificado
        , parcelas_pagamento

    from {{ ref('stg_paymentinfos') }}
    )
select *
from dim_paymentinfos