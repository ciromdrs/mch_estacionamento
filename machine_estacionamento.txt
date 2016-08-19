MACHINE
    Estacionamento
VARIABLES
    qtd_comuns, qtd_idosos, qtd_deficientes,    # quantidade de vagas comuns e reservadas para idosos e deficientes
    ocp_comuns, ocp_idosos, ocp_deficientes     # quantidade de vagas ocupadas
INVARIANT
    # Declaração dos tipos
    qtd_comuns      : NAT &
    qtd_idosos      : NAT &
    qtd_deficientes : NAT &
    ocp_comuns      : NAT &
    ocp_idosos      : NAT &
    ocp_deficientes : NAT &
    
    # Restrições
    ocp_comuns      <= qtd_comuns &
    ocp_idosos      <= qtd_idosos &
    ocp_deficientes <= qtd_deficientes

INITIALISATION
    qtd_comuns      := 0 ||
    qtd_idosos      := 0 ||
    qtd_deficientes := 0 ||
    ocp_comuns      := 0 ||
    ocp_idosos      := 0 ||
    ocp_deficientes := 0

OPERATIONS
    # Ocupação de vagas
    ocupar_comum ^=
        PRE ocp_comuns < qtd_comuns
        THEN ocp_comuns := ocp_comuns + 1
        END;
    ocupar_deficiente ^=
        PRE ocp_deficientes < qtd_deficientes
        THEN ocp_deficientes := ocp_deficientes + 1
        END;
    ocupar_idoso ^=
        PRE ocp_idosos < qtd_idosos
        THEN ocp_idosos := ocp_idosos + 1
        END;
        
    # Liberação de vagas
    liberar_comum ^=
        PRE ocp_comuns > 0
        THEN ocp_comuns := ocp_comuns - 1
        END;
    liberar_idoso ^=
        PRE ocp_idosos > 0
        THEN ocp_idosos := ocp_idosos - 1
        END;
    liberar_deficiente ^=
        PRE ocp_deficientes > 0
        THEN ocp_deficientes := ocp_deficientes - 1
        END;
    
    # Exibição
    qc, oc, qi, oi, qd, od <-- get_info_painel ^=
        qc := qtd_comuns        ||
        oc := ocp_comuns        ||
        qi := qtd_idosos        ||
        oi := ocp_idosos        ||
        qd := qtd_deficientes   ||
        od := ocp_deficientes
    
END
