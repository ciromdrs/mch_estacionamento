MACHINE
    Estacionamento ( qtd_comuns , qtd_idosos , qtd_deficientes ) // quantidade de vagas comuns e reservadas para idosos ou deficientes

CONSTRAINTS
    qtd_comuns : NAT &
    qtd_idosos : NAT &
    qtd_deficientes : NAT

SETS
    COMUNS ; IDOSOS ; DEFICIENTES // conjuntos que modelam as vagas comuns, de idosos e deficientes

INVARIANT
    // Declaração dos tipos
    //qtd_comuns      : NAT &
    //qtd_idosos      : NAT &
    //qtd_deficientes : NAT &

    // Restrições
    card ( COMUNS )   <= qtd_comuns &
    card ( IDOSOS )   <= qtd_idosos &
    card ( DEFICIENTES ) <= qtd_deficientes

OPERATIONS
    // Ocupação de vagas
    ocupar_comum ( vv ) =
        PRE card ( COMUNS ) < qtd_comuns
        THEN COMUNS := COMUNS \/ { vv }
        END ;
    ocupar_deficiente ( vv ) =
        PRE card ( DEFICIENTES ) < qtd_deficientes
        THEN DEFICIENTES := DEFICIENTES \/ { vv }
        END ;
    ocupar_idoso ( vv ) =
        PRE card ( IDOSOS ) < qtd_idosos
        THEN IDOSOS := IDOSOS \/ { vv }
        END ;

    // Liberação de vagas
    liberar_comum ( vv ) =
        COMUNS := COMUNS - { vv } ;

    liberar_idoso ( vv ) =
        IDOSOS := IDOSOS - { vv } ;

    liberar_deficiente ( vv ) =
        DEFICIENTES := DEFICIENTES - { vv } ;

    // Exibição
    qc , oc , qi , oi , qd , od <-- get_info_painel =
    BEGIN
        qc := qtd_comuns        ||
        oc := card ( COMUNS )   ||
        qi := qtd_idosos        ||
        oi := card ( IDOSOS )   ||
        qd := qtd_deficientes   ||
        od := card ( DEFICIENTES )
    END
END
