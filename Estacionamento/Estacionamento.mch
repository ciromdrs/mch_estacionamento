/* Estacionamento
 */
MACHINE
    Estacionamento

CONSTANTS
    MAX_INT,
    MAX

PROPERTIES
    MAX_INT : NAT1 &
    MAX_INT = 1000 &
    
    MAX={comum |-> 10, idoso |-> 5, deficiente |-> 5, T_NULL |-> 0} &
    MAX : TIPOS --> 0..MAX_INT &    
    MAX_INT >= MAX(comum) + MAX(idoso) + MAX(deficiente)

SETS
    VAGA;
    TIPOS = {idoso, deficiente, comum, T_NULL}; // Tipo da vaga
    STATUS = {livre, ocupada, S_NULL};          // status da vaga
    CORES = {azul, amarela, verde, vermelha}; // Cor da lâmpada que fica na vaga
    TICKET

VARIABLES
    pagos,   // conjunto dos tickets pagos
    chegada, // relação de chegada dos veículos
    hora,    // hora atual, medida em minutos
    preco,   // preco por hora, em reais
    lim,     // limite gratuito, em minutos
    status,  // status da vaga
    tipo     // tipo da vaga

INVARIANT
    // Tipos
    hora    : NAT             &
    preco   : NAT             &
    lim     : NAT             &
    status  : VAGA +-> STATUS &
    tipo    : VAGA +-> TIPOS  &
    chegada : TICKET +-> NAT  &
    pagos  <: dom(chegada)    &

    // Restrições    
    dom(status) = dom(tipo) &
    
    card(tipo |> {comum})      <= MAX(comum) &
    card(tipo |> {idoso})      <= MAX(idoso) &
    card(tipo |> {deficiente}) <= MAX(deficiente)
    
INITIALISATION
    status  := {} ||
    tipo    := {} ||
    chegada := {} ||
    pagos   := {} ||
    hora    := 0  ||
    preco   := 3  ||
    lim     := 15
    
OPERATIONS
    // Controle de vagas
    criar(tt) =
        PRE tt : TIPOS &
            card(tipo |> {tt}) < MAX(tt)
        THEN            
            ANY vv WHERE
                vv : VAGA        &
                vv /: dom(tipo)  &
                vv /: dom(status)
            THEN
                tipo(vv)   := tt ||
                status(vv) := livre
            END
        END;
    
    excluir(vv) =
        PRE vv : VAGA       &
            vv : dom(tipo)   &
            vv : dom(status) &
            status(vv) = livre
        THEN
            tipo   := {vv} <<| tipo ||
            status := {vv} <<| status
        END;
    
    // Ocupação e liberação de vagas
    ocupar(vv) =
        PRE vv : VAGA &
            vv : dom(status) &
            status(vv) = livre
        THEN status(vv) := ocupada
        END;
        
    liberar(vv) = 
        PRE vv : VAGA &
            vv : dom(status) &
            status(vv) = ocupada
        THEN status(vv) := livre
        END;
    
    // Consultas
    cc <-- get_cor_lampada(vv) =
        PRE vv : VAGA &
            vv : dom(status) &
            vv : dom(tipo)   &
            cc : CORES
        THEN
            IF status(vv) = livre THEN
                CASE tipo(vv) OF EITHER idoso THEN
                    cc := azul
                OR deficiente THEN
                    cc := amarela
                ELSE // comum
                    cc := verde
                END
                END
            ELSE // status(vv) = ocupada
                cc := vermelha
            END
        END;
    
    tt <-- get_tipo_vaga(vv) =
        PRE vv : VAGA &
            vv : dom(tipo) &
            tt : TIPOS
        THEN
            tt := tipo(vv)
        END;
    
    /* qc: Quantidade de vagas Comuns
       oc: quantidade de vagas Ocupadas Comuns
       as demais são análogas para deficientes e idosos.
    */
    /* comentei porque estava estourando a memoria do compilador
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
        END;*/
    
    vv <-- indicar(tt) = 
        PRE vv : VAGA &
            tt : TIPOS &
            card(dom(tipo |> {tt}) <| status |> {livre}) > 0 THEN
            ANY uu
            WHERE uu : dom(dom(tipo |> {tt}) <| status |> {livre}) THEN
                vv := uu
            END
        END;
        
    adiantar(horas, minutos) = 
        PRE horas   : NAT &
            minutos : NAT &
            (horas * 60) + minutos + hora < MAXINT THEN
                hora := (horas * 60) + minutos + hora
        END;
    
    tt <-- pegar_ticket =
        ANY uu
        WHERE uu : TICKET & uu /: dom(chegada) THEN
            tt := uu || chegada(uu) := hora
        END;        
    
    troco <-- pagar_ticket(ticket, dinheiro) =
        PRE troco    : NAT    &
            dinheiro : NAT    &
            ticket   : TICKET &
            ticket   : dom(chegada)
        THEN
            // Se estiver dentro do limite gratuito
            IF hora - chegada(ticket) <= lim THEN
                // Devolve o dinheiro e marca como pago
                troco := dinheiro || pagos := pagos \/ {ticket}
            // Senão
            ELSE
                // Se o dinheiro dá pra pagar
                IF ((hora - chegada(ticket)/60) + 1) *  preco - dinheiro >= 0 THEN
                    // Marca como pago e devolve o troco
                    troco := (hora - chegada(ticket)) *  preco - dinheiro ||
                    pagos := pagos \/ {ticket}
                // Senão
                ELSE
                    // Devolve o dinheiro
                    troco := dinheiro
                END
            END
        END;
        
    abrir_cancela(tt) =
        PRE tt : TICKET &
            tt : pagos THEN
            skip // Abre a cancela física
        END

END
