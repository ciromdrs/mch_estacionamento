MACHINE
    Estacionamento ( max_comuns , max_idosos , max_deficientes ) // quantidade máxima de vagas

CONSTRAINTS
    max_comuns : NAT &
    max_idosos : NAT &
    max_deficientes : NAT

SETS
    VAGA ;                                 // Tipo VAGA
    STATUS_VAGA = { livre , ocupada } ;    // status da vaga
    COR = { azul , amarela , verde , vermelha } // Cor da lâmpada que fica na vaga

ABSTRACT_VARIABLES
    idosos , deficientes , comuns , // Cojuntos que representam as vagas
    status // relação que mapeia de VAGA para STATUS_VAGA

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
    status : VAGA --> STATUS_VAGA
INITIALISATION
    idosos      := {} ||
    deficientes := {} ||
    comuns      := {} ||

    status      := VAGA * { livre }

OPERATIONS
    // Criação de vagas
    criar_comum ( vv ) =
        PRE vv : VAGA         &
            vv /: comuns      &
            vv /: idosos      &
            vv /: deficientes &
            card ( comuns ) < max_comuns
        THEN
            comuns := comuns \/ { vv } ||
            status ( vv ) := livre
        END ;

    criar_idoso ( vv ) =
        PRE vv : VAGA         &
            vv /: comuns      &
            vv /: idosos      &
            vv /: deficientes &
            card ( idosos ) < max_idosos
        THEN
            idosos := idosos \/ { vv } ||
            status ( vv ) := livre
        END ;

    criar_deficiente ( vv ) =
        PRE vv : VAGA         &
            vv /: comuns      &
            vv /: idosos      &
            vv /: deficientes &
            card ( deficientes ) < max_deficientes
        THEN
            deficientes := deficientes \/ { vv } ||
            status ( vv ) := livre
        END ;

    // Ocupação de vagas
    ocupar_comum ( vv ) =
        PRE vv : comuns        &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada
        END ;

    ocupar_deficiente ( vv ) =
        PRE vv : deficientes   &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada
        END ;

    ocupar_idoso ( vv ) =
        PRE vv : idosos        &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada
        END ;

    // Liberação de vagas
    liberar ( vv ) =
        PRE vv : VAGA
        THEN status ( vv ) := livre
        END ;

    cc <-- get_cor_lampada ( vv ) =
        PRE vv : VAGA
        THEN IF status ( vv ) = ocupada THEN
                cc := vermelha
            ELSE IF vv : idosos      THEN
                cc := amarela
            ELSE IF vv : deficientes THEN
                cc := azul
            ELSE // vv : comum
                cc := verde
            END
            END
        END
    END ;

    // Exibição

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
