MACHINE
    Estacionamento

SEES TiposComuns

SETS
    VAGAS  // conjunto das VAGAS

ABSTRACT_VARIABLES
    status , // status da vaga
    tipo    // tipo da vaga

INVARIANT
    // Tipos
    status : VAGAS +-> STATUS &
    tipo   : VAGAS +-> TIPOS  &

    // Restrições    
    dom ( status ) = dom ( tipo ) &

    card ( tipo |> { comum } ) <= MAX ( comum ) &
    card ( tipo |> { idoso } ) <= MAX ( idoso ) &
    card ( tipo |> { deficiente } ) <= MAX ( deficiente )

INITIALISATION
    status := {} ||
    tipo   := {}

OPERATIONS
    // Controle de VAGAS
    criar ( tt ) =
        PRE tt : TIPOS &
            card ( tipo |> { tt } ) < MAX ( tt )
        THEN
            ANY vv WHERE
                vv : VAGAS        &
                vv /: dom ( tipo ) &
                vv /: dom ( status )
            THEN
                tipo ( vv ) := tt ||
                status ( vv ) := livre
            END
        END ;

    excluir ( vv ) =
        PRE vv : VAGAS       &
            vv : dom ( tipo ) &
            vv : dom ( status ) &
            status ( vv ) = livre
        THEN
            tipo   := { vv } <<| tipo ||
            status := { vv } <<| status
        END ;

    // Ocupação e liberação de VAGAS
    ocupar ( vv ) =
        PRE vv : dom ( status ) &
            status ( vv ) = livre
        THEN status ( vv ) := ocupada
        END ;

    liberar ( vv ) =
        PRE vv : dom ( status ) &
            status ( vv ) = ocupada
        THEN status ( vv ) := livre
        END ;

    // Consultas
    cc <-- get_cor_lampada ( vv ) =
        PRE vv : dom ( status ) &
            vv : dom ( tipo ) &
            cc : CORES
        THEN
            IF status ( vv ) = livre THEN
                CASE tipo ( vv ) OF EITHER idoso THEN
                    cc := azul
                OR deficiente THEN
                    cc := amarela
                ELSE // comum
                    cc := verde
                END
                END
            ELSE // status(vv) = ocupada
                cc := vermelha
            END
        END ;

    tt <-- get_tipo_vaga ( vv ) =
        PRE vv : dom ( tipo ) &
            tt : TIPOS
        THEN
            tt := tipo ( vv )
        END ;

    /* qc: Quantidade de VAGAS Comuns
       oc: quantidade de VAGAS Ocupadas Comuns
       as demais são análogas para deficientes e idosos.
    */
    qc , oc , qi , oi , qd , od <-- get_info_painel =
        PRE qc : NAT & oc : NAT &
            qi : NAT & oi : NAT &
            qd : NAT & od : NAT
        THEN
            qc := card ( tipo |> { comum } )                        ||
            oc := card ( dom ( tipo |> { comum } ) <| status |> { ocupada } ) ||

            qi := card ( tipo |> { idoso } )                        ||
            oi := card ( dom ( tipo |> { idoso } ) <| status |> { ocupada } ) ||

            qd := card ( tipo |> { deficiente } )                   ||
            od := card ( dom ( tipo |> { deficiente } ) <| status |> { ocupada } )
        END ;

    vv <-- indicar ( tt ) =
        PRE vv : VAGAS &
            tt : TIPOS &
            card ( dom ( tipo |> { tt } ) <| status |> { livre } ) > 0 THEN
            ANY uu
            WHERE uu : dom ( dom ( tipo |> { tt } ) <| status |> { livre } ) THEN
                vv := uu
            END
        END
END
