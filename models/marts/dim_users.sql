with
    dim_users as (
        select 
            {{ dbt_utils.generate_surrogate_key (['id_usuario']) }} as pk_usuario
            , TS_usuario
            , TS_usuario_adicionado
            , TS_usuario_modificado
            , categoria_usuario
            , adminitrador_usuario
            ,  ui_usuario
            , idioma_usuario
            , moeda_usuario
            , ativo_inativo_usuario
            , login_usuario
            , historico_ui_usuario
            , tipo_usuario
            , email_usuario
            , sms_usuario
            , loja_usuario
            , telefone_usuario
            , celular_usuario
            , celular_adicional_usuario
            , aniversario_usuario
            , inscrito_newsletter_usuario
            , registro_sistema_usuario
            , id_SAP_usuario
        from {{ ref('stg_users') }}
    )
select *
from dim_users