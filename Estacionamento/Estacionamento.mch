MACHINE
    Estacionamento (max_comuns, max_idosos, max_deficientes) // quantidade máxima de vagas
                                                             
CONSTRAINTS
    max_comuns : NAT &
    max_idosos : NAT &
    max_deficientes : NAT
    
SETS
    VAGA;                                  // Tipo VAGA
    STATUS_VAGA = {livre, ocupada};        // status da vaga
    COR = {azul, amarela, verde, vermelha} // Cor da lâmpada que fica na vaga
    
VARIABLES
    idosos, deficientes, comuns, // Cojuntos que representam as vagas
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
    card(comuns)      <= max_comuns      &
    card(idosos)      <= max_idosos      &
    card(deficientes) <= max_deficientes &

    // Relações
    status : VAGA --> STATUS_VAGA
INITIALISATION
    idosos      := {} ||
    deficientes := {} ||
    comuns      := {} ||
    
    status      := VAGA * {livre}

OPERATIONS
    // Ocupação de vagas
    ocupar_comum(vv) =
        PRE card(comuns) < max_comuns & // Não é card(comuns)
            vv : comuns               &
            status(vv) = livre
        THEN status(vv) := ocupada
        END;
        
    ocupar_deficiente(vv) =
        PRE card(deficientes) < max_deficientes &
            vv : deficientes                    &
            status(vv) = livre
        THEN status(vv) := ocupada
        END;
        
    ocupar_idoso(vv) =
        PRE card(idosos) < max_idosos &
            vv : idosos               &
            status(vv) = livre
        THEN status(vv) := ocupada
        END;
        
    // Liberação de vagas
    liberar(vv) = 
        PRE vv:VAGA
        THEN status(vv) := livre
        END;
        
    cc <-- get_cor_lampada(vv) =
        PRE vv : VAGA 
        THEN IF status(vv) = ocupada  THEN
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
    END
    
    // Exibição
    /*qc, oc, qi, oi, qd, od <-- get_info_painel =
    BEGIN
        qc := max_comuns        ||
        oc := card(comuns)      ||
        qi := max_idosos        ||
        oi := card(idosos)      ||
        qd := max_deficientes   ||
        od := card(deficientes)
    END;*/
END
