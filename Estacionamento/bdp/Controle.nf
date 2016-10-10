Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Controle))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Controle))==(Machine(Controle));
  Level(Machine(Controle))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Controle)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Controle))==(TiposComuns)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Controle))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Controle))==(Estacionamento,QtdMax);
  List_Includes(Machine(Controle))==(Estacionamento)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Controle))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar,init)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Controle))==(Estacionamento)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Controle))==(?);
  Context_List_Variables(Machine(Controle))==(?);
  Abstract_List_Variables(Machine(Controle))==(?);
  Local_List_Variables(Machine(Controle))==(lim,preco,hora,chegada,pagou);
  List_Variables(Machine(Controle))==(lim,preco,hora,chegada,pagou,tipo,cor,status,ini,qtd_max);
  External_List_Variables(Machine(Controle))==(lim,preco,hora,chegada,pagou,tipo,cor,status,ini,qtd_max)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Controle))==(?);
  Abstract_List_VisibleVariables(Machine(Controle))==(?);
  External_List_VisibleVariables(Machine(Controle))==(?);
  Expanded_List_VisibleVariables(Machine(Controle))==(?);
  List_VisibleVariables(Machine(Controle))==(?);
  Internal_List_VisibleVariables(Machine(Controle))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Controle))==(btrue);
  Gluing_List_Invariant(Machine(Controle))==(btrue);
  Abstract_List_Invariant(Machine(Controle))==(btrue);
  Expanded_List_Invariant(Machine(Controle))==(status: VAGAS --> STATUS_VAGA & cor: VAGAS --> CORES & tipo: VAGAS --> TIPOS & card(tipo|>{comum})<=qtd_max(comum) & card(tipo|>{idoso})<=qtd_max(idoso) & card(tipo|>{deficiente})<=qtd_max(deficiente) & qtd_max: TIPOS --> NAT & ini: BOOL);
  Context_List_Invariant(Machine(Controle))==(btrue);
  List_Invariant(Machine(Controle))==(hora: NAT & chegada: TICKET --> NAT & pagou: TICKET --> SIM_NAO & preco: NAT & lim: NAT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Controle))==(btrue);
  Expanded_List_Assertions(Machine(Controle))==(btrue);
  Context_List_Assertions(Machine(Controle))==(btrue);
  List_Assertions(Machine(Controle))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Controle))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Controle))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Controle))==(qtd_max,ini:=TIPOS*{0},FALSE;status,cor,tipo:={},{},{};hora,pagou,chegada,preco,lim:=0,TICKET*{nao},{},1,10);
  Context_List_Initialisation(Machine(Controle))==(skip);
  List_Initialisation(Machine(Controle))==(hora:=0 || pagou:=TICKET*{nao} || chegada:={} || preco:=1 || lim:=10)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Controle))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Controle),Machine(Estacionamento))==(?);
  List_Instanciated_Parameters(Machine(Controle),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Controle),Machine(Estacionamento))==(btrue);
  List_Context_Constraints(Machine(Controle))==(btrue);
  List_Constraints(Machine(Controle))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Controle))==(adiantar,pegar_ticket,pagar_ticket,abrir_cancela,criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar,init);
  List_Operations(Machine(Controle))==(adiantar,pegar_ticket,pagar_ticket,abrir_cancela,criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar,init)
END
&
THEORY ListInputX IS
  List_Input(Machine(Controle),init)==(max_idosos,max_deficientes,max_comuns);
  List_Input(Machine(Controle),indicar)==(tt);
  List_Input(Machine(Controle),get_info_painel)==(?);
  List_Input(Machine(Controle),get_tipo_vaga)==(vv);
  List_Input(Machine(Controle),get_cor_lampada)==(vv);
  List_Input(Machine(Controle),liberar)==(vv);
  List_Input(Machine(Controle),ocupar)==(vv);
  List_Input(Machine(Controle),excluir)==(vv);
  List_Input(Machine(Controle),criar)==(tt);
  List_Input(Machine(Controle),adiantar)==(mm);
  List_Input(Machine(Controle),pegar_ticket)==(?);
  List_Input(Machine(Controle),pagar_ticket)==(ticket,dinheiro);
  List_Input(Machine(Controle),abrir_cancela)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Controle),init)==(?);
  List_Output(Machine(Controle),indicar)==(vv);
  List_Output(Machine(Controle),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Machine(Controle),get_tipo_vaga)==(cc);
  List_Output(Machine(Controle),get_cor_lampada)==(cc);
  List_Output(Machine(Controle),liberar)==(?);
  List_Output(Machine(Controle),ocupar)==(?);
  List_Output(Machine(Controle),excluir)==(?);
  List_Output(Machine(Controle),criar)==(?);
  List_Output(Machine(Controle),adiantar)==(?);
  List_Output(Machine(Controle),pegar_ticket)==(tt);
  List_Output(Machine(Controle),pagar_ticket)==(troco);
  List_Output(Machine(Controle),abrir_cancela)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Controle),init)==(init(max_idosos,max_deficientes,max_comuns));
  List_Header(Machine(Controle),indicar)==(vv <-- indicar(tt));
  List_Header(Machine(Controle),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Machine(Controle),get_tipo_vaga)==(cc <-- get_tipo_vaga(vv));
  List_Header(Machine(Controle),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Machine(Controle),liberar)==(liberar(vv));
  List_Header(Machine(Controle),ocupar)==(ocupar(vv));
  List_Header(Machine(Controle),excluir)==(excluir(vv));
  List_Header(Machine(Controle),criar)==(criar(tt));
  List_Header(Machine(Controle),adiantar)==(adiantar(mm));
  List_Header(Machine(Controle),pegar_ticket)==(tt <-- pegar_ticket);
  List_Header(Machine(Controle),pagar_ticket)==(troco <-- pagar_ticket(ticket,dinheiro));
  List_Header(Machine(Controle),abrir_cancela)==(abrir_cancela(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Controle),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT);
  List_Precondition(Machine(Controle),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT);
  Own_Precondition(Machine(Controle),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0);
  List_Precondition(Machine(Controle),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0);
  Own_Precondition(Machine(Controle),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  List_Precondition(Machine(Controle),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Machine(Controle),get_tipo_vaga)==(vv: dom(tipo) & cc: TIPOS);
  List_Precondition(Machine(Controle),get_tipo_vaga)==(vv: dom(tipo) & cc: TIPOS);
  Own_Precondition(Machine(Controle),get_cor_lampada)==(vv: dom(cor) & cc: CORES);
  List_Precondition(Machine(Controle),get_cor_lampada)==(vv: dom(cor) & cc: CORES);
  Own_Precondition(Machine(Controle),liberar)==(vv: dom(status));
  List_Precondition(Machine(Controle),liberar)==(vv: dom(status));
  Own_Precondition(Machine(Controle),ocupar)==(vv: dom(status) & status(vv) = livre);
  List_Precondition(Machine(Controle),ocupar)==(vv: dom(status) & status(vv) = livre);
  Own_Precondition(Machine(Controle),excluir)==(vv: VAGAS & status(vv) = livre);
  List_Precondition(Machine(Controle),excluir)==(vv: VAGAS & status(vv) = livre);
  Own_Precondition(Machine(Controle),criar)==(tt: TIPOS & card(tipo|>{tt})<qtd_max(tt));
  List_Precondition(Machine(Controle),criar)==(tt: TIPOS & card(tipo|>{tt})<qtd_max(tt));
  List_Precondition(Machine(Controle),adiantar)==(mm: NAT1 & hora+mm<MAXINT);
  List_Precondition(Machine(Controle),pegar_ticket)==(btrue);
  List_Precondition(Machine(Controle),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: dom(chegada));
  List_Precondition(Machine(Controle),abrir_cancela)==(tt: TICKET & tt: dom(pagou) & pagou(tt) = sim)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Controle),abrir_cancela)==(tt: TICKET & tt: dom(pagou) & pagou(tt) = sim | skip);
  Expanded_List_Substitution(Machine(Controle),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: dom(chegada) | hora-chegada(ticket)<=lim ==> troco,pagou:=dinheiro,pagou<+{ticket|->sim} [] not(hora-chegada(ticket)<=lim) ==> ((hora-chegada(ticket))*preco-dinheiro>=0 ==> troco,pagou:=(hora-chegada(ticket))*preco-dinheiro,pagou<+{ticket|->sim} [] not((hora-chegada(ticket))*preco-dinheiro>=0) ==> troco:=dinheiro));
  Expanded_List_Substitution(Machine(Controle),pegar_ticket)==(btrue | @uu.(uu: TICKET & uu/:dom(chegada) ==> tt,chegada,pagou:=uu,chegada<+{uu|->hora},pagou<+{uu|->nao}));
  Expanded_List_Substitution(Machine(Controle),adiantar)==(mm: NAT1 & hora+mm<MAXINT | hora:=hora+mm);
  List_Substitution(Machine(Controle),init)==(qtd_max:={idoso|->max_idosos,comum|->max_comuns,deficiente|->max_deficientes} || ini:=TRUE);
  Expanded_List_Substitution(Machine(Controle),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT | qtd_max,ini:={idoso|->max_idosos,comum|->max_comuns,deficiente|->max_deficientes},TRUE);
  List_Substitution(Machine(Controle),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) THEN vv:=uu END);
  Expanded_List_Substitution(Machine(Controle),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) ==> vv:=uu));
  List_Substitution(Machine(Controle),get_info_painel)==(qc:=card(tipo|>{comum}) || oc:=card(dom(tipo|>{comum})<|status|>{ocupada}) || qi:=card(tipo|>{idoso}) || oi:=card(dom(tipo|>{idoso})<|status|>{ocupada}) || qd:=card(tipo|>{deficiente}) || od:=card(dom(tipo|>{deficiente})<|status|>{ocupada}));
  Expanded_List_Substitution(Machine(Controle),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc,oc,qi,oi,qd,od:=card(tipo|>{comum}),card(dom(tipo|>{comum})<|status|>{ocupada}),card(tipo|>{idoso}),card(dom(tipo|>{idoso})<|status|>{ocupada}),card(tipo|>{deficiente}),card(dom(tipo|>{deficiente})<|status|>{ocupada}));
  List_Substitution(Machine(Controle),get_tipo_vaga)==(cc:=tipo(vv));
  Expanded_List_Substitution(Machine(Controle),get_tipo_vaga)==(vv: dom(tipo) & cc: TIPOS | cc:=tipo(vv));
  List_Substitution(Machine(Controle),get_cor_lampada)==(cc:=cor(vv));
  Expanded_List_Substitution(Machine(Controle),get_cor_lampada)==(vv: dom(cor) & cc: CORES | cc:=cor(vv));
  List_Substitution(Machine(Controle),liberar)==(status(vv):=livre || CASE tipo(vv) OF EITHER idoso THEN cor(vv):=azul OR deficiente THEN cor(vv):=amarela OR comum THEN cor(vv):=verde END END);
  Expanded_List_Substitution(Machine(Controle),liberar)==(vv: dom(status) | status:=status<+{vv|->livre} || (not(tipo(vv) = comum) & not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cor:=cor<+{vv|->azul} [] not(tipo(vv) = idoso) & not(tipo(vv) = comum) & tipo(vv) = deficiente ==> cor:=cor<+{vv|->amarela} [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) & tipo(vv) = comum ==> cor:=cor<+{vv|->verde} [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) & not(tipo(vv) = comum) ==> skip));
  List_Substitution(Machine(Controle),ocupar)==(status(vv):=ocupada || cor(vv):=vermelha);
  Expanded_List_Substitution(Machine(Controle),ocupar)==(vv: dom(status) & status(vv) = livre | status,cor:=status<+{vv|->ocupada},cor<+{vv|->vermelha});
  List_Substitution(Machine(Controle),excluir)==(tipo:={vv}<<|tipo || cor:={vv}<<|cor || status:={vv}<<|status);
  Expanded_List_Substitution(Machine(Controle),excluir)==(vv: VAGAS & status(vv) = livre | tipo,cor,status:={vv}<<|tipo,{vv}<<|cor,{vv}<<|status);
  List_Substitution(Machine(Controle),criar)==(ANY vv WHERE vv: VAGAS & vv/:dom(tipo) & vv/:dom(cor) & vv/:dom(status) THEN tipo(vv):=tt || cor(vv):=verde || status(vv):=livre END);
  Expanded_List_Substitution(Machine(Controle),criar)==(tt: TIPOS & card(tipo|>{tt})<qtd_max(tt) | @vv.(vv: VAGAS & vv/:dom(tipo) & vv/:dom(cor) & vv/:dom(status) ==> tipo,cor,status:=tipo<+{vv|->tt},cor<+{vv|->verde},status<+{vv|->livre}));
  List_Substitution(Machine(Controle),adiantar)==(hora:=hora+mm);
  List_Substitution(Machine(Controle),pegar_ticket)==(ANY uu WHERE uu: TICKET & uu/:dom(chegada) THEN tt:=uu || chegada(uu):=hora || pagou(uu):=nao END);
  List_Substitution(Machine(Controle),pagar_ticket)==(IF hora-chegada(ticket)<=lim THEN troco:=dinheiro || pagou(ticket):=sim ELSE IF (hora-chegada(ticket))*preco-dinheiro>=0 THEN troco:=(hora-chegada(ticket))*preco-dinheiro || pagou(ticket):=sim ELSE troco:=dinheiro END END);
  List_Substitution(Machine(Controle),abrir_cancela)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Controle))==(?);
  Inherited_List_Constants(Machine(Controle))==(?);
  List_Constants(Machine(Controle))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Controle),SIM_NAO)==({sim,nao});
  Context_List_Enumerated(Machine(Controle))==(TIPOS,STATUS_VAGA,CORES,SIM_NAO);
  Context_List_Defered(Machine(Controle))==(VAGAS);
  Context_List_Sets(Machine(Controle))==(VAGAS,TIPOS,STATUS_VAGA,CORES,SIM_NAO);
  List_Valuable_Sets(Machine(Controle))==(TICKET);
  Inherited_List_Enumerated(Machine(Controle))==(?);
  Inherited_List_Defered(Machine(Controle))==(?);
  Inherited_List_Sets(Machine(Controle))==(?);
  List_Enumerated(Machine(Controle))==(?);
  List_Defered(Machine(Controle))==(TICKET);
  List_Sets(Machine(Controle))==(TICKET);
  Set_Definition(Machine(Controle),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Machine(Controle),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Machine(Controle),TIPOS)==({idoso,deficiente,comum});
  Set_Definition(Machine(Controle),TICKET)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Controle))==(?);
  Expanded_List_HiddenConstants(Machine(Controle))==(?);
  List_HiddenConstants(Machine(Controle))==(?);
  External_List_HiddenConstants(Machine(Controle))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Controle))==(btrue);
  Context_List_Properties(Machine(Controle))==(MAX_INT: NAT1 & MAX_INT = 1000000 & VAGAS: FIN(INTEGER) & not(VAGAS = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}) & SIM_NAO: FIN(INTEGER) & not(SIM_NAO = {}));
  Inherited_List_Properties(Machine(Controle))==(btrue);
  List_Properties(Machine(Controle))==(TICKET: FIN(INTEGER) & not(TICKET = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Controle),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Machine(Controle))==(?);
  Seen_Context_List_Invariant(Machine(Controle))==(btrue);
  Seen_Context_List_Assertions(Machine(Controle))==(btrue);
  Seen_Context_List_Properties(Machine(Controle))==(btrue);
  Seen_List_Constraints(Machine(Controle))==(btrue);
  Seen_List_Operations(Machine(Controle),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Machine(Controle),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Controle),init)==(?);
  List_ANY_Var(Machine(Controle),indicar)==(Var(uu) == atype(VAGAS,?,?));
  List_ANY_Var(Machine(Controle),get_info_painel)==(?);
  List_ANY_Var(Machine(Controle),get_tipo_vaga)==(?);
  List_ANY_Var(Machine(Controle),get_cor_lampada)==(?);
  List_ANY_Var(Machine(Controle),liberar)==(?);
  List_ANY_Var(Machine(Controle),ocupar)==(?);
  List_ANY_Var(Machine(Controle),excluir)==(?);
  List_ANY_Var(Machine(Controle),criar)==(Var(vv) == atype(VAGAS,?,?));
  List_ANY_Var(Machine(Controle),adiantar)==(?);
  List_ANY_Var(Machine(Controle),pegar_ticket)==(Var(uu) == atype(TICKET,?,?));
  List_ANY_Var(Machine(Controle),pagar_ticket)==(?);
  List_ANY_Var(Machine(Controle),abrir_cancela)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Controle)) == (TICKET | ? | lim,preco,hora,chegada,pagou | V,tipo,cor,status,V,ini,qtd_max | adiantar,pegar_ticket,pagar_ticket,abrir_cancela | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar,init | seen(Machine(TiposComuns)),included(Machine(Estacionamento)) | ? | Controle);
  List_Of_HiddenCst_Ids(Machine(Controle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Controle)) == (?);
  List_Of_VisibleVar_Ids(Machine(Controle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Controle)) == (seen(Machine(TiposComuns)): (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,SIM_NAO,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Estacionamento)) == (? | ? | tipo,cor,status | V,ini,qtd_max | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | init | seen(Machine(TiposComuns)),included(Machine(QtdMax)) | ? | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (seen(Machine(TiposComuns)): (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,SIM_NAO,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(QtdMax)) == (? | ? | ini,qtd_max | ? | init | ? | seen(Machine(TiposComuns)) | ? | QtdMax);
  List_Of_HiddenCst_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(QtdMax)) == (?);
  List_Of_VisibleVar_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(QtdMax)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,SIM_NAO,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Controle)) == (Type(TICKET) == Cst(SetOf(atype(TICKET,"[TICKET","]TICKET"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Controle)) == (Type(status) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*etype(STATUS_VAGA,0,1)));Type(cor) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*etype(CORES,0,3)));Type(tipo) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*etype(TIPOS,0,2)));Type(ini) == Mvl(btype(BOOL,?,?));Type(qtd_max) == Mvl(SetOf(etype(TIPOS,0,2)*btype(INTEGER,0,MAXINT)));Type(lim) == Mvl(btype(INTEGER,?,?));Type(preco) == Mvl(btype(INTEGER,?,?));Type(hora) == Mvl(btype(INTEGER,?,?));Type(chegada) == Mvl(SetOf(atype(TICKET,"[TICKET","]TICKET")*btype(INTEGER,0,MAXINT)));Type(pagou) == Mvl(SetOf(atype(TICKET,"[TICKET","]TICKET")*etype(SIM_NAO,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Controle)) == (Type(criar) == Cst(No_type,etype(TIPOS,?,?));Type(excluir) == Cst(No_type,atype(VAGAS,?,?));Type(ocupar) == Cst(No_type,atype(VAGAS,?,?));Type(liberar) == Cst(No_type,atype(VAGAS,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGAS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGAS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(indicar) == Cst(atype(VAGAS,?,?),etype(TIPOS,?,?));Type(init) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?));Type(pagar_ticket) == Cst(btype(INTEGER,?,?),atype(TICKET,?,?)*btype(INTEGER,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type);Type(adiantar) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Controle)) == (Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGAS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGAS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(indicar) == Cst(atype(VAGAS,?,?),etype(TIPOS,?,?));Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?)))
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
