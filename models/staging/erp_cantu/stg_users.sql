with users as (
    select
        cast(hjmpTS as int) as TS_usuario,
        cast(createdTS as datetime) as TS_usuario_adicionado,
        cast(modifiedTS as datetime) as TS_usuario_modificado,
        cast(TypePkString as int) as categoria_usuario,
        cast(OwnerPkString as int) as adminitrador_usuario,
        cast(PK as int) as id_usuario ,
        cast(p_uid as string) as ui_usuario,
        cast(p_sessionlanguage as int) as idioma_usuario ,
        cast(p_sessioncurrency as int) as moeda_usuario,
        cast(p_logindisabled as string) as ativo_inativo_usuario,
        cast(p_lastlogin as string) as login_usuario ,
        cast(p_originaluid as string) as historico_ui_usuario,
        cast(p_type as string) as tipo_usuario,
        cast(p_emailpreference as string) as email_usuario,
        cast(p_smspreference as string) as sms_usuario,
        cast(p_basestore as string) as loja_usuario,
        cast(p_dddphone as string) as telefone_usuario,
        cast(p_dddcellphone as string) as celular_usuario,
        cast(p_dddcellphoneaditional as string) as celular_adicional_usuario,
        cast(p_birthday as string) as aniversario_usuario,
        cast(p_subscribenewsletter as string) as inscrito_newsletter_usuario,
        cast(p_registerdatetime as string) as registro_sistema_usuario,
        cast(p_sapconsumerid as string) as id_SAP_usuario,
        cast(p_sapcontactid as string) as id_SAP_contato_usuario,
        cast(p_sapisreplicated as string) as id_SAP_replicado_usuario,
    from {{ source ("basket", "tb_users") }}
)

select *
from users