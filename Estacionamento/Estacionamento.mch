MACHINE
    Estacionamento

SEES TiposComuns

INCLUDES QtdMax

VARIABLES
    vagas,  // todas as vagas
    status, // status da vaga
    cor,    // cor da vaga
    tipo    // tipo da vaga


INVARIANT
    // Tipos
    vagas   <: VAGAS                 &
    vagas    : FIN(vagas)            &
    status   : VAGAS --> STATUS_VAGA &
    cor      : VAGAS --> CORES       &
    tipo     : VAGAS --> TIPOS       &
    qtd_max  : TIPOS --> NAT         &

    // Restrições
    card(tipo |> {comum})      <= qtd_max(comum)      &
    card(tipo |> {idoso})      <= qtd_max(idoso)      &
    card(tipo |> {deficiente}) <= qtd_max(deficiente) &
    card(tipo) = card({comum} <| qtd_max) +
                 card({idoso} <| qtd_max) +
                 card({deficiente} <| qtd_max)              
    
INITIALISATION
    vagas       := {} ||
    status      := {} ||
    cor         := {} ||
    tipo        := {}
    
OPERATIONS
    // Criação de vagas
    criar(vv, tt) =
        PRE tt : TIPOS         &
            vv : VAGAS         &
            vv /: dom(tipo)    &
            card(tipo |> {tt}) < qtd_max(tt)
        THEN            
            vagas      := vagas \/ vv ||
            tipo(vv)   := tt          ||
            cor(vv)    := verde       ||
            status(vv) := livre
        END;
    
    exluir(vv) =
        PRE vv : vagas &
            status(vv) = livre
        THEN
            vagas := vagas - {vv}
        END;
    
    // Ocupação e liberação de vagas
    ocupar(vv) =
        PRE vv : vagas         &
            status(vv) = livre
        THEN status(vv) := ocupada ||
             cor(vv)    := vermelha
        END;
        
    liberar(vv) = 
        PRE vv : vagas
        THEN status(vv) := livre ||
            CASE tipo(vv) OF EITHER idoso THEN
                cor(vv) := azul
            OR deficiente THEN
                cor(vv) := amarela
            OR comum THEN
                cor(vv) := verde
            END
            END // por que esse outro END é necessário?
        END;
    
    // Consultas
    cc <-- get_cor_lampada(vv) =
        PRE vv : dom(cor)
        THEN
            cc := cor(vv)
        END;
    
    cc <-- get_tipo_lampada(vv) =
        PRE vv : dom(tipo)
        THEN
            cc := tipo(vv)
        END;
    
    /* qc: Quantidade de vagas Comuns
       oc: quantidade de vagas Ocupadas Comuns
       as demais são análogas para deficientes e idosos.
    */
    qc, oc, qi, oi, qd, od <-- get_info_painel = 
        PRE qc : NAT & oc : NAT &
            qi : NAT & oi : NAT &
            qd : NAT & od : NAT
        THEN
            qc := card(tipo |> {comum})                             ||
            oc := card(dom(tipo |> {comum}) <| status |> {ocupada}) ||
            
            qi := card(tipo |> {idoso})                             ||
            oi := card(dom(tipo |> {idoso}) <| status |> {ocupada}) ||
            
            qd := card(tipo |> {deficiente})                        ||
            od := card(dom(tipo |> {deficiente}) <| status |> {ocupada})
        END;
    
    vv <-- indicar(tt) = 
        PRE vv : VAGAS &
            tt : TIPOS &
            card(dom(tipo |> {tt}) <| status |> {livre}) > 0 THEN
            ANY uu
            WHERE uu : dom(dom(tipo |> {tt}) <| status |> {livre}) THEN
                vv := uu
            END
        END
END
