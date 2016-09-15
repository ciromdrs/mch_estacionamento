MACHINE
    Controle(preco_minuto, lim_gratuito)

INCLUDES Pagamento(preco_minuto, lim_gratuito)
    
PROMOTES calcular_preco

CONSTRAINTS
    preco_minuto : NAT & // preço por minuto
    lim_gratuito : NAT   // limite gratuito (em minutos) 

SETS
    TICKET // tipo TICKET

VARIABLES
    chegada,
    hora     // hora atual, medida em minutos

INVARIANT 
    hora    : NAT &
    chegada : TICKET --> NAT
    
INITIALISATION
    hora    := 0 ||
    chegada := TICKET * {0}

OPERATIONS
    adiantar(mm) = 
        PRE mm : NAT1 THEN
            hora := hora + mm
        END;
    
    tt <-- pegar_ticket =
        ANY uu
        WHERE uu : TICKET & uu /: dom(chegada) THEN
            tt := uu
        END/*;
    
    troco <-- pagar_ticket(ticket, dinheiro) =
        PRE dinheiro : NAT          &
            ticket   : dom(chegada) &
            (dinheiro - calcular_preco(chegada(ticket), hora)) >= 0
        THEN
            troco := dinheiro - calcular_preco(chegada(ticket), hora)
        END*/
END

