MACHINE
    Controle/*(preco, lim, // preco = preço por minuto, lim = limite gratuito em minutos
        max_comuns, max_idosos, max_deficientes)*/

SEES TiposComuns

EXTENDS Estacionamento({idoso |-> 5, comum |-> 5, deficiente |-> 5})

CONSTANTS
    preco, lim, max_comuns, max_idosos, max_deficientes

PROPERTIES
    preco           : NAT &
    lim             : NAT &
    max_comuns      : NAT &
    max_idosos      : NAT &
    max_deficientes : NAT
SETS
    SIM_NAO = {sim, nao};
    TICKET // tipo TICKET

VARIABLES
    pagou,   // relação de pagamento de tickets
    chegada, // relação de chegada dos veículos
    hora     // hora atual, medida em minutos

INVARIANT 
    hora    : NAT            &
    chegada : TICKET --> NAT &
    pagou   : TICKET --> SIM_NAO
    
INITIALISATION
    hora    := 0              ||
    pagou   := TICKET * {nao} ||
    chegada := {}

OPERATIONS
    adiantar(mm) = 
        PRE mm : NAT1 &
            hora + mm < 1000000 THEN
            hora := hora + mm
        END;
    
    tt <-- pegar_ticket =
        ANY uu
        WHERE uu : TICKET & uu /: dom(chegada) THEN
            tt := uu || chegada(tt) := hora || pagou(tt) := nao
        END;        
    
    troco <-- pagar_ticket(ticket, dinheiro) =
        PRE troco    : NAT          &
            dinheiro : NAT          &
            ticket   : dom(chegada)
        THEN
            // Se estiver dentro do limite gratuito
            IF hora - chegada(ticket) <= lim THEN
                // Devolve o dinheiro e marca como pago
                troco := dinheiro || pagou(ticket) := sim 
            // Senão
            ELSE
                // Se o dinheiro dá pra pagar
                IF (hora - chegada(ticket)) *  preco - dinheiro >= 0 THEN
                    // Marca como pago e devolve o troco
                    troco := (hora - chegada(ticket)) *  preco - dinheiro ||
                    pagou(ticket) := sim
                // Senão
                ELSE
                    // Devolve o dinheiro
                    troco := dinheiro
                END
            END
        END;
        
    abrir_cancela(tt) =
        PRE tt : TICKET     &
            tt : dom(pagou) &
            pagou(tt) = sim THEN
            skip // Abre a cancela física
        END
END

