MACHINE
    Controle /*(preco, lim, // preco = preço por minuto, lim = limite gratuito em minutos
        max_comuns, max_idosos, max_deficientes)*/

SEES TiposComuns

EXTENDS Estacionamento

SETS
    TICKET

ABSTRACT_VARIABLES
    pagou ,  // relação de pagamento de tickets
    chegada , // relação de chegada dos veículos
    hora ,   // hora atual, medida em minutos
    preco ,  // preco por minuto
    lim      // limite gratuito, em minutos

INVARIANT
    hora    : NAT            &
    chegada : TICKET --> NAT &
    pagou   : TICKET --> SIM_NAO &
    preco   : NAT &
    lim     : NAT

INITIALISATION
    hora    := 0              ||
    pagou   := TICKET * { nao } ||
    chegada := {}             ||
    preco   := 1              ||
    lim     := 10

OPERATIONS
    adiantar ( mm ) =
        PRE mm : NAT1 &
            hora + mm < MAXINT THEN
            hora := hora + mm
        END ;

    tt <-- pegar_ticket =
        ANY uu
        WHERE uu : TICKET & uu /: dom ( chegada ) THEN
            tt := uu || chegada ( tt ) := hora || pagou ( tt ) := nao
        END ;

    troco <-- pagar_ticket ( ticket , dinheiro ) =
        PRE troco    : NAT          &
            dinheiro : NAT          &
            ticket   : dom ( chegada )
        THEN
            // Se estiver dentro do limite gratuito
            IF hora - chegada ( ticket ) <= lim THEN
                // Devolve o dinheiro e marca como pago
                troco := dinheiro || pagou ( ticket ) := sim
            // Senão
            ELSE
                // Se o dinheiro dá pra pagar
                IF ( hora - chegada ( ticket ) ) * preco - dinheiro >= 0 THEN
                    // Marca como pago e devolve o troco
                    troco := ( hora - chegada ( ticket ) ) * preco - dinheiro ||
                    pagou ( ticket ) := sim
                // Senão
                ELSE
                    // Devolve o dinheiro
                    troco := dinheiro
                END
            END
        END ;

    abrir_cancela ( tt ) =
        PRE tt : TICKET     &
            tt : dom ( pagou ) &
            pagou ( tt ) = sim THEN
            skip // Abre a cancela física
        END
END
