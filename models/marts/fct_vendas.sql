with
    addresses as (
        select *
        from ref {{ ('dim_addresses')}}
    )
    , cartentries as (
        select *
        from ref {{ ('dim_cartentries')}}
    )
    , carts as(
        select *
        from ref {{ ('dim_carts')}}
    )
    , cmssitelp as (
        select *
        from ref {{('dim_cmssitelp')}}
    )
    , paymentinfos as (
        select *
        from ref {{ ('dim_paymentinfos')}}
    )
    , paymentmodes as (
        select *
        from ref {{ ('dim_paymentmodes')}}
    )
    , dim_regions as (
        select *
        from ref {{ ('dim_regions')}}
    )
    , dim_users as (
        select *
        from ref {{ ('dim_users')}}
    )
    , join_tables as (
        select
        addresses.pk_endereco as endereco_fk
        , addresses.id_endereco
        , addresse.cidade_endereco

        , cartentries.pk_pedido as pedido_fk
        , cartentries.id_pedido_produto
        , cartentries.id_tipo_produto
        , cartentries.preco_base_produto
        , cartentries.id_produto
        , cartentries.quantidade_produto
        , cartentries.preco_total_produto


        , carts.pk_carrinho as carrinho_fk
        , carts.id_carrinho
        , carts.codigo_carrinho
        , carts.preco_total_carrinho
        , carts.id_usuario_carrinho
        , carts.preco_bruto_carrinho
        , carts.id_site_carrinho
        , carts.id_loja_carrinho
        , carts.id_global_carrinho

        , cmssitelp.pk_loja as loja_fk
        , cmssitelp.nome_loja
        , cmssitelp.id_loja

        , paymentinfos.pk_pagamento as pagamento_fk
        ,  paymentinfos.id_pagamento


        , paymentmodes.pk_SAP as modo_pagamento_fk
        , regions.pk_regiao as regiao_fk
        , users.pk_usuario as usuario_fk
        , 
    )