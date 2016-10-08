MACHINE
    QtdMax

SEES TiposComuns

ABSTRACT_VARIABLES
    qtd_max

INVARIANT
    qtd_max : TIPOS --> NAT

INITIALISATION
    qtd_max := {}

OPERATIONS
    set_qtd_max ( max_idosos , max_deficientes , max_comuns ) =
    PRE dom ( qtd_max ) = {} &
        max_idosos : NAT  &
        max_comuns : NAT  &
        max_deficientes : NAT
    THEN
        qtd_max := { idoso |-> max_idosos ,
            comum |-> max_comuns ,
            deficiente |-> max_deficientes }
    END

END
