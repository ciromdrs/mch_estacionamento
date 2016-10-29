MACHINE
    TiposComuns

CONCRETE_CONSTANTS
    MAX_INT ,
    MAX

PROPERTIES
    MAX_INT : NAT1 &
    MAX_INT = 1000 &

    MAX = { comum |-> 10 , idoso |-> 5 , deficiente |-> 5 , T_NULL |-> 0 } &
    MAX : TIPOS --> 0 .. MAX_INT &
    MAX_INT >= MAX ( comum ) + MAX ( idoso ) + MAX ( deficiente )

SETS
    TIPOS = { idoso , deficiente , comum , T_NULL } ; // Tipo da vaga
    STATUS = { livre , ocupada , S_NULL } ;     // status da vaga
    CORES = { azul , amarela , verde , vermelha } // Cor da lâmpada que fica na vaga

END
