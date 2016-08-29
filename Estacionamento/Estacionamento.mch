MACHINE
    Estacionamento (max_comuns, max_idosos, max_deficientes) // quantidade máxima de vagas
                                                             // comuns e reservadas para idosos
                                                             // ou deficientes
                                                             
CONSTRAINTS
    max_comuns : NAT &
    max_idosos : NAT &
    max_deficientes : NAT
    
SETS
    VAGA // Tipo VAGA
    
VARIABLES
    IDOSOS, DEFICIENTES, COMUNS

INVARIANT
    // Declaração dos tipos
    IDOSOS      <: VAGA &
    DEFICIENTES <: VAGA &
    COMUNS      <: VAGA &
    
    // Restrições
    card(COMUNS)      <= max_comuns &
    card(IDOSOS)      <= max_idosos &
    card(DEFICIENTES) <= max_deficientes

INITIALISATION
    IDOSOS      := {} ||
    DEFICIENTES := {} ||
    COMUNS      := {}

OPERATIONS
    // Ocupação de vagas
    ocupar_comum(vv) =
        PRE card(COMUNS) < max_comuns &
            vv:VAGA
        THEN COMUNS := COMUNS \/ {vv}
        END;
    ocupar_deficiente(vv) =
        PRE card(DEFICIENTES) < max_deficientes &
            vv:VAGA
        THEN DEFICIENTES := DEFICIENTES \/ {vv}
        END;
    ocupar_idoso(vv) =
        PRE card(IDOSOS) < max_idosos &
            vv:VAGA
        THEN IDOSOS := IDOSOS \/ {vv}
        END;
        
    // Liberação de vagas
    liberar_comum(vv) = 
        PRE vv:VAGA
        THEN COMUNS := COMUNS - {vv}
        END;
        
    liberar_idoso(vv) = 
        PRE vv:VAGA
        THEN IDOSOS := IDOSOS - {vv}
        END;
        
    liberar_deficiente(vv) = 
        PRE vv:VAGA
        THEN DEFICIENTES := DEFICIENTES - {vv}
        END;
    
    // Exibição
    qc, oc, qi, oi, qd, od <-- get_info_painel =
    BEGIN
        qc := max_comuns        ||
        oc := card(COMUNS)      ||
        qi := max_idosos        ||
        oi := card(IDOSOS)      ||
        qd := max_deficientes   ||
        od := card(DEFICIENTES)
    END
END
