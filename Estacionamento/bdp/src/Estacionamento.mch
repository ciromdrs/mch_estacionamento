MACHINE
    Estacionamento ( max_comuns , max_idosos , max_deficientes ) // quantidade máxima de vagas

CONSTRAINTS
    max_comuns : NAT &
    max_idosos : NAT &
    max_deficientes : NAT

SETS
    VAGA ;                                 // Tipo VAGA
    STATUS_VAGA = { livre , ocupada } ;    // status da vaga
    CORES = { azul , amarela , verde , vermelha } // Cor da lâmpada que fica na vaga

ABSTRACT_VARIABLES
    idosos , deficientes , comuns , // Cojuntos que representam as vagas
    status , // relação que mapeia de VAGA para STATUS_VAGA
    cor // relação que mapeia de VAGA para CORES

INVARIANT
    // Declaração dos tipos
    idosos      <: VAGA &
    deficientes <: VAGA &
    comuns      <: VAGA &

    // Uma vaga só pode estar em um dos três conjuntos
    idosos /\ deficientes = {} &
    idosos /\ comuns      = {} &
    deficientes /\ comuns = {} &

    // Restrições
    card ( comuns )   <= max_comuns      &
    card ( idosos )   <= max_idosos      &
    card ( deficientes ) <= max_deficientes &

    // Relações
    status : VAGA --> STATUS_VAGA &
    cor    : VAGA --> CORES

INITIALISATION
    idosos      := {} ||
    deficientes := {} ||
    comuns      := {} ||

    status      := VAGA * { livre } ||
    cor         := VAGA * { verde }

OPERATIONS
    // Criação de vagas
    criar_comum ( vv ) =
        PRE vv : VAGA         &
            vv /: comuns      &
            vv /: idosos      &
            vv /: deficientes &
            card ( comuns ) < max_comuns
        THEN
            comuns := comuns \/ { vv }
        END ;

    criar_idoso ( vv ) =
        PRE vv : VAGA         &
            vv /: comuns      &
            vv /: idosos      &
            vv /: deficientes &
            card ( idosos ) < max_idosos
        THEN
            idosos  := idosos \/ { vv } ||
            cor ( vv ) := azul
        END ;

    criar_deficiente ( vv ) =
        PRE vv : VAGA         &
            vv /: comuns      &
            vv /: idosos      &
            vv /: deficientes &
            card ( deficientes ) < max_deficientes
        THEN
            deficientes := deficientes \/ { vv } ||
            cor ( vv )  := amarela
        END ;

    // Ocupação de vagas
    ocupar_comum ( vv ) =
        PRE vv : comuns        &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada ||
             cor ( vv ) := vermelha
        END ;

    ocupar_deficiente ( vv ) =
        PRE vv : deficientes   &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada ||
             cor ( vv ) := vermelha
        END ;

    ocupar_idoso ( vv ) =
        PRE vv : idosos        &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada ||
             cor ( vv ) := vermelha
        END ;

    // Liberação de vagas
    liberar ( vv ) =
        PRE vv : VAGA
        THEN status ( vv ) := livre ||
            IF vv : idosos THEN
                cor ( vv ) := azul
            ELSE IF vv : deficientes THEN
                cor ( vv ) := amarela
            ELSE // vv : comum
                cor ( vv ) := verde
            END
            END
        END ;

    // Consultas
    cc <-- get_cor_lampada ( vv ) =
        PRE vv : VAGA
        THEN cc := cor ( vv )
    END ;

    /* qc: Quantidade de vagas Comuns
       oc: quantidade de vagas Ocupadas Comuns
       as demais são análogas para deficientes e idosos.
    */
    qc , oc , qi , oi , qd , od <-- get_info_painel =
    PRE oc : NAT
    THEN
        qc := card ( comuns )                          ||
        oc := card ( comuns <| status |> { ocupada } ) ||

        qi := card ( idosos )                          ||
        oi := card ( idosos <| status |> { ocupada } ) ||

        qd := card ( deficientes )                     ||
        od := card ( deficientes <| status |> { ocupada } )
    END
END
