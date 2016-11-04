Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Estacionamento))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Estacionamento))==(Machine(Estacionamento));
  Level(Machine(Estacionamento))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Estacionamento)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Estacionamento))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Estacionamento))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Estacionamento))==(?);
  List_Includes(Machine(Estacionamento))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Estacionamento))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Estacionamento))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Estacionamento))==(?);
  Context_List_Variables(Machine(Estacionamento))==(?);
  Abstract_List_Variables(Machine(Estacionamento))==(?);
  Local_List_Variables(Machine(Estacionamento))==(tipo,status,lim,preco,hora,chegada,pagos);
  List_Variables(Machine(Estacionamento))==(tipo,status,lim,preco,hora,chegada,pagos);
  External_List_Variables(Machine(Estacionamento))==(tipo,status,lim,preco,hora,chegada,pagos)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Estacionamento))==(?);
  Abstract_List_VisibleVariables(Machine(Estacionamento))==(?);
  External_List_VisibleVariables(Machine(Estacionamento))==(?);
  Expanded_List_VisibleVariables(Machine(Estacionamento))==(?);
  List_VisibleVariables(Machine(Estacionamento))==(?);
  Internal_List_VisibleVariables(Machine(Estacionamento))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Estacionamento))==(btrue);
  Gluing_List_Invariant(Machine(Estacionamento))==(btrue);
  Expanded_List_Invariant(Machine(Estacionamento))==(btrue);
  Abstract_List_Invariant(Machine(Estacionamento))==(btrue);
  Context_List_Invariant(Machine(Estacionamento))==(btrue);
  List_Invariant(Machine(Estacionamento))==(hora: NAT & preco: NAT & lim: NAT & status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & chegada: TICKET +-> NAT & pagos <: dom(chegada) & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Estacionamento))==(btrue);
  Abstract_List_Assertions(Machine(Estacionamento))==(btrue);
  Context_List_Assertions(Machine(Estacionamento))==(btrue);
  List_Assertions(Machine(Estacionamento))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Estacionamento))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Estacionamento))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Estacionamento))==(status,tipo,chegada,pagos,hora,preco,lim:={},{},{},{},0,3,15);
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(status:={} || tipo:={} || chegada:={} || pagos:={} || hora:=0 || preco:=3 || lim:=15)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Estacionamento))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Estacionamento))==(btrue);
  List_Constraints(Machine(Estacionamento))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Estacionamento))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar,adiantar,pegar_ticket,pagar_ticket,abrir_cancela);
  List_Operations(Machine(Estacionamento))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar,adiantar,pegar_ticket,pagar_ticket,abrir_cancela)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),criar)==(tt);
  List_Input(Machine(Estacionamento),excluir)==(vv);
  List_Input(Machine(Estacionamento),ocupar)==(vv);
  List_Input(Machine(Estacionamento),liberar)==(vv);
  List_Input(Machine(Estacionamento),get_cor_lampada)==(vv);
  List_Input(Machine(Estacionamento),get_tipo_vaga)==(vv);
  List_Input(Machine(Estacionamento),indicar)==(tt);
  List_Input(Machine(Estacionamento),adiantar)==(horas,minutos);
  List_Input(Machine(Estacionamento),pegar_ticket)==(?);
  List_Input(Machine(Estacionamento),pagar_ticket)==(ticket,dinheiro);
  List_Input(Machine(Estacionamento),abrir_cancela)==(ticket)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Estacionamento),criar)==(?);
  List_Output(Machine(Estacionamento),excluir)==(?);
  List_Output(Machine(Estacionamento),ocupar)==(?);
  List_Output(Machine(Estacionamento),liberar)==(?);
  List_Output(Machine(Estacionamento),get_cor_lampada)==(cc);
  List_Output(Machine(Estacionamento),get_tipo_vaga)==(tt);
  List_Output(Machine(Estacionamento),indicar)==(vv);
  List_Output(Machine(Estacionamento),adiantar)==(?);
  List_Output(Machine(Estacionamento),pegar_ticket)==(tt);
  List_Output(Machine(Estacionamento),pagar_ticket)==(troco);
  List_Output(Machine(Estacionamento),abrir_cancela)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Estacionamento),criar)==(criar(tt));
  List_Header(Machine(Estacionamento),excluir)==(excluir(vv));
  List_Header(Machine(Estacionamento),ocupar)==(ocupar(vv));
  List_Header(Machine(Estacionamento),liberar)==(liberar(vv));
  List_Header(Machine(Estacionamento),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Machine(Estacionamento),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Machine(Estacionamento),indicar)==(vv <-- indicar(tt));
  List_Header(Machine(Estacionamento),adiantar)==(adiantar(horas,minutos));
  List_Header(Machine(Estacionamento),pegar_ticket)==(tt <-- pegar_ticket);
  List_Header(Machine(Estacionamento),pagar_ticket)==(troco <-- pagar_ticket(ticket,dinheiro));
  List_Header(Machine(Estacionamento),abrir_cancela)==(abrir_cancela(ticket))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  List_Precondition(Machine(Estacionamento),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),ocupar)==(vv: VAGA & vv: dom(status) & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),liberar)==(vv: VAGA & vv: dom(status) & status(vv) = ocupada);
  List_Precondition(Machine(Estacionamento),get_cor_lampada)==(vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  List_Precondition(Machine(Estacionamento),get_tipo_vaga)==(vv: VAGA & vv: dom(tipo) & tt: TIPOS);
  List_Precondition(Machine(Estacionamento),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0);
  List_Precondition(Machine(Estacionamento),adiantar)==(horas: NAT & minutos: NAT & horas*60+minutos+hora<MAXINT);
  List_Precondition(Machine(Estacionamento),pegar_ticket)==(btrue);
  List_Precondition(Machine(Estacionamento),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: TICKET & ticket: dom(chegada));
  List_Precondition(Machine(Estacionamento),abrir_cancela)==(ticket: TICKET & ticket: pagos)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),abrir_cancela)==(ticket: TICKET & ticket: pagos | skip);
  Expanded_List_Substitution(Machine(Estacionamento),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: TICKET & ticket: dom(chegada) | hora-chegada(ticket)<=lim ==> troco,pagos:=dinheiro,pagos\/{ticket} [] not(hora-chegada(ticket)<=lim) ==> ((hora-chegada(ticket)/60+1)*preco-dinheiro>=0 ==> troco,pagos:=(hora-chegada(ticket)/60+1)*preco-dinheiro,pagos\/{ticket} [] not((hora-chegada(ticket)/60+1)*preco-dinheiro>=0) ==> troco:=dinheiro));
  Expanded_List_Substitution(Machine(Estacionamento),pegar_ticket)==(btrue | @uu.(uu: TICKET & uu/:dom(chegada) ==> tt,chegada:=uu,chegada<+{uu|->hora}));
  Expanded_List_Substitution(Machine(Estacionamento),adiantar)==(horas: NAT & minutos: NAT & horas*60+minutos+hora<MAXINT | hora:=horas*60+minutos+hora);
  Expanded_List_Substitution(Machine(Estacionamento),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) ==> vv:=uu));
  Expanded_List_Substitution(Machine(Estacionamento),get_tipo_vaga)==(vv: VAGA & vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Machine(Estacionamento),get_cor_lampada)==(vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES | status(vv) = livre ==> (not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) ==> cc:=verde) [] not(status(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Machine(Estacionamento),liberar)==(vv: VAGA & vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar)==(vv: VAGA & vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Machine(Estacionamento),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | tipo,status:={vv}<<|tipo,{vv}<<|status);
  Expanded_List_Substitution(Machine(Estacionamento),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @vv.(vv: VAGA & vv/:dom(tipo) & vv/:dom(status) ==> tipo,status:=tipo<+{vv|->tt},status<+{vv|->livre}));
  List_Substitution(Machine(Estacionamento),criar)==(ANY vv WHERE vv: VAGA & vv/:dom(tipo) & vv/:dom(status) THEN tipo(vv):=tt || status(vv):=livre END);
  List_Substitution(Machine(Estacionamento),excluir)==(tipo:={vv}<<|tipo || status:={vv}<<|status);
  List_Substitution(Machine(Estacionamento),ocupar)==(status(vv):=ocupada);
  List_Substitution(Machine(Estacionamento),liberar)==(status(vv):=livre);
  List_Substitution(Machine(Estacionamento),get_cor_lampada)==(IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Machine(Estacionamento),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Machine(Estacionamento),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) THEN vv:=uu END);
  List_Substitution(Machine(Estacionamento),adiantar)==(hora:=horas*60+minutos+hora);
  List_Substitution(Machine(Estacionamento),pegar_ticket)==(ANY uu WHERE uu: TICKET & uu/:dom(chegada) THEN tt:=uu || chegada(uu):=hora END);
  List_Substitution(Machine(Estacionamento),pagar_ticket)==(IF hora-chegada(ticket)<=lim THEN troco:=dinheiro || pagos:=pagos\/{ticket} ELSE IF (hora-chegada(ticket)/60+1)*preco-dinheiro>=0 THEN troco:=(hora-chegada(ticket)/60+1)*preco-dinheiro || pagos:=pagos\/{ticket} ELSE troco:=dinheiro END END);
  List_Substitution(Machine(Estacionamento),abrir_cancela)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Estacionamento))==(MAX_INT,MAX);
  Inherited_List_Constants(Machine(Estacionamento))==(?);
  List_Constants(Machine(Estacionamento))==(MAX_INT,MAX)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Estacionamento),VAGA)==(?);
  Context_List_Enumerated(Machine(Estacionamento))==(?);
  Context_List_Defered(Machine(Estacionamento))==(?);
  Context_List_Sets(Machine(Estacionamento))==(?);
  List_Valuable_Sets(Machine(Estacionamento))==(VAGA,TICKET);
  Inherited_List_Enumerated(Machine(Estacionamento))==(?);
  Inherited_List_Defered(Machine(Estacionamento))==(?);
  Inherited_List_Sets(Machine(Estacionamento))==(?);
  List_Enumerated(Machine(Estacionamento))==(TIPOS,STATUS,CORES);
  List_Defered(Machine(Estacionamento))==(VAGA,TICKET);
  List_Sets(Machine(Estacionamento))==(VAGA,TIPOS,STATUS,CORES,TICKET);
  Set_Definition(Machine(Estacionamento),TIPOS)==({idoso,deficiente,comum,T_NULL});
  Set_Definition(Machine(Estacionamento),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Machine(Estacionamento),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Machine(Estacionamento),TICKET)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Estacionamento))==(?);
  Expanded_List_HiddenConstants(Machine(Estacionamento))==(?);
  List_HiddenConstants(Machine(Estacionamento))==(?);
  External_List_HiddenConstants(Machine(Estacionamento))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Estacionamento))==(btrue);
  Context_List_Properties(Machine(Estacionamento))==(btrue);
  Inherited_List_Properties(Machine(Estacionamento))==(btrue);
  List_Properties(Machine(Estacionamento))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & VAGA: FIN(INTEGER) & not(VAGA = {}) & TICKET: FIN(INTEGER) & not(TICKET = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Estacionamento),criar)==(Var(vv) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Estacionamento),excluir)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar)==(?);
  List_ANY_Var(Machine(Estacionamento),get_cor_lampada)==(?);
  List_ANY_Var(Machine(Estacionamento),get_tipo_vaga)==(?);
  List_ANY_Var(Machine(Estacionamento),indicar)==(Var(uu) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Estacionamento),adiantar)==(?);
  List_ANY_Var(Machine(Estacionamento),pegar_ticket)==(Var(uu) == atype(TICKET,?,?));
  List_ANY_Var(Machine(Estacionamento),pagar_ticket)==(?);
  List_ANY_Var(Machine(Estacionamento),abrir_cancela)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estacionamento)) == (MAX_INT,MAX,VAGA,TIPOS,STATUS,CORES,TICKET,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | tipo,status,lim,preco,hora,chegada,pagos | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar,adiantar,pegar_ticket,pagar_ticket,abrir_cancela | ? | ? | ? | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Estacionamento)) == (Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA")));Type(TIPOS) == Cst(SetOf(etype(TIPOS,0,3)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,2)));Type(CORES) == Cst(SetOf(etype(CORES,0,3)));Type(TICKET) == Cst(SetOf(atype(TICKET,"[TICKET","]TICKET"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Estacionamento)) == (Type(idoso) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(livre) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(tipo) == Mvl(SetOf(atype(VAGA,?,?)*etype(TIPOS,?,?)));Type(status) == Mvl(SetOf(atype(VAGA,?,?)*etype(STATUS,?,?)));Type(lim) == Mvl(btype(INTEGER,?,?));Type(preco) == Mvl(btype(INTEGER,?,?));Type(hora) == Mvl(btype(INTEGER,?,?));Type(chegada) == Mvl(SetOf(atype(TICKET,?,?)*btype(INTEGER,?,?)));Type(pagos) == Mvl(SetOf(atype(TICKET,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?));Type(pagar_ticket) == Cst(btype(INTEGER,?,?),atype(TICKET,?,?)*btype(INTEGER,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type);Type(adiantar) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(excluir) == Cst(No_type,atype(VAGA,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)));
  Observers(Machine(Estacionamento)) == (Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?));Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
