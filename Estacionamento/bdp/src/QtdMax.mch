MACHINE
    QtdMax

SEES TiposComuns

ABSTRACT_VARIABLES
    qtd_max ,
    ini  // indica se já inicializou as constantes

INVARIANT
    qtd_max : TIPOS --> NAT &
    ini     : BOOL // indica se qtd_max já foi inicializada

INITIALISATION
    qtd_max := TIPOS * { 0 } ||
    ini     := FALSE

OPERATIONS
    init ( max_idosos , max_deficientes , max_comuns ) =
        PRE ini = FALSE       & // garante que só pode inicializar uma vez
            max_idosos : NAT  &
            max_comuns : NAT  &
            max_deficientes : NAT
        THEN
            qtd_max := { idoso |-> max_idosos ,
                comum |-> max_comuns ,
                deficiente |-> max_deficientes } ||
            ini := TRUE
        END

END
