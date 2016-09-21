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
  List_Sees(Machine(Controle))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Controle))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Controle))==(Estacionamento);
  List_Includes(Machine(Controle))==(Estacionamento)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Controle))==(criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente)
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
  Local_List_Variables(Machine(Controle))==(hora,chegada,pagou);
  List_Variables(Machine(Controle))==(hora,chegada,pagou,cor,status,comuns,deficientes,idosos);
  External_List_Variables(Machine(Controle))==(hora,chegada,pagou,cor,status,comuns,deficientes,idosos)
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
  Expanded_List_Invariant(Machine(Controle))==(idosos <: VAGA & deficientes <: VAGA & comuns <: VAGA & idosos/\deficientes = {} & idosos/\comuns = {} & deficientes/\comuns = {} & card(comuns)<=max_comuns & card(idosos)<=max_idosos & card(deficientes)<=max_deficientes & status: VAGA --> STATUS_VAGA & cor: VAGA --> CORES);
  Context_List_Invariant(Machine(Controle))==(btrue);
  List_Invariant(Machine(Controle))==(hora: NAT & chegada: TICKET --> NAT & pagou: TICKET --> SIM_NAO)
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
  Expanded_List_Initialisation(Machine(Controle))==(idosos,deficientes,comuns,status,cor:={},{},{},VAGA*{livre},VAGA*{verde};hora,pagou,chegada:=0,TICKET*{nao},TICKET*{0});
  Context_List_Initialisation(Machine(Controle))==(skip);
  List_Initialisation(Machine(Controle))==(hora:=0 || pagou:=TICKET*{nao} || chegada:=TICKET*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Controle))==(preco,lim,max_comuns,max_idosos,max_deficientes)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Controle),Machine(Estacionamento))==(max_comuns,max_idosos,max_deficientes)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Controle),Machine(Estacionamento))==(max_comuns: NAT & max_idosos: NAT & max_deficientes: NAT);
  List_Context_Constraints(Machine(Controle))==(btrue);
  List_Constraints(Machine(Controle))==(preco: NAT & lim: NAT & max_comuns: NAT & max_idosos: NAT & max_deficientes: NAT)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Controle))==(adiantar,pegar_ticket,pagar_ticket,abrir_cancela,criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente);
  List_Operations(Machine(Controle))==(adiantar,pegar_ticket,pagar_ticket,abrir_cancela,criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente)
END
&
THEORY ListInputX IS
  List_Input(Machine(Controle),indicar_deficiente)==(?);
  List_Input(Machine(Controle),indicar_idoso)==(?);
  List_Input(Machine(Controle),indicar_comum)==(?);
  List_Input(Machine(Controle),get_info_painel)==(?);
  List_Input(Machine(Controle),get_cor_lampada)==(vv);
  List_Input(Machine(Controle),liberar)==(vv);
  List_Input(Machine(Controle),ocupar)==(vv);
  List_Input(Machine(Controle),criar_deficiente)==(vv);
  List_Input(Machine(Controle),criar_idoso)==(vv);
  List_Input(Machine(Controle),criar_comum)==(vv);
  List_Input(Machine(Controle),adiantar)==(mm);
  List_Input(Machine(Controle),pegar_ticket)==(?);
  List_Input(Machine(Controle),pagar_ticket)==(ticket,dinheiro);
  List_Input(Machine(Controle),abrir_cancela)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Controle),indicar_deficiente)==(vv);
  List_Output(Machine(Controle),indicar_idoso)==(vv);
  List_Output(Machine(Controle),indicar_comum)==(vv);
  List_Output(Machine(Controle),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Machine(Controle),get_cor_lampada)==(cc);
  List_Output(Machine(Controle),liberar)==(?);
  List_Output(Machine(Controle),ocupar)==(?);
  List_Output(Machine(Controle),criar_deficiente)==(?);
  List_Output(Machine(Controle),criar_idoso)==(?);
  List_Output(Machine(Controle),criar_comum)==(?);
  List_Output(Machine(Controle),adiantar)==(?);
  List_Output(Machine(Controle),pegar_ticket)==(tt);
  List_Output(Machine(Controle),pagar_ticket)==(troco);
  List_Output(Machine(Controle),abrir_cancela)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Controle),indicar_deficiente)==(vv <-- indicar_deficiente);
  List_Header(Machine(Controle),indicar_idoso)==(vv <-- indicar_idoso);
  List_Header(Machine(Controle),indicar_comum)==(vv <-- indicar_comum);
  List_Header(Machine(Controle),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Machine(Controle),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Machine(Controle),liberar)==(liberar(vv));
  List_Header(Machine(Controle),ocupar)==(ocupar(vv));
  List_Header(Machine(Controle),criar_deficiente)==(criar_deficiente(vv));
  List_Header(Machine(Controle),criar_idoso)==(criar_idoso(vv));
  List_Header(Machine(Controle),criar_comum)==(criar_comum(vv));
  List_Header(Machine(Controle),adiantar)==(adiantar(mm));
  List_Header(Machine(Controle),pegar_ticket)==(tt <-- pegar_ticket);
  List_Header(Machine(Controle),pagar_ticket)==(troco <-- pagar_ticket(ticket,dinheiro));
  List_Header(Machine(Controle),abrir_cancela)==(abrir_cancela(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Controle),indicar_deficiente)==(card(deficientes<|status|>{livre})>0);
  List_Precondition(Machine(Controle),indicar_deficiente)==(card(deficientes<|status|>{livre})>0);
  Own_Precondition(Machine(Controle),indicar_idoso)==(card(idosos<|status|>{livre})>0);
  List_Precondition(Machine(Controle),indicar_idoso)==(card(idosos<|status|>{livre})>0);
  Own_Precondition(Machine(Controle),indicar_comum)==(card(comuns<|status|>{livre})>0);
  List_Precondition(Machine(Controle),indicar_comum)==(card(comuns<|status|>{livre})>0);
  Own_Precondition(Machine(Controle),get_info_painel)==(oc: NAT);
  List_Precondition(Machine(Controle),get_info_painel)==(oc: NAT);
  Own_Precondition(Machine(Controle),get_cor_lampada)==(vv: dom(cor));
  List_Precondition(Machine(Controle),get_cor_lampada)==(vv: dom(cor));
  Own_Precondition(Machine(Controle),liberar)==(vv: VAGA);
  List_Precondition(Machine(Controle),liberar)==(vv: VAGA);
  Own_Precondition(Machine(Controle),ocupar)==(vv: VAGA & status(vv) = livre & (vv: comuns or vv: deficientes or vv: idosos));
  List_Precondition(Machine(Controle),ocupar)==(vv: VAGA & status(vv) = livre & (vv: comuns or vv: deficientes or vv: idosos));
  Own_Precondition(Machine(Controle),criar_deficiente)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(deficientes)<max_deficientes);
  List_Precondition(Machine(Controle),criar_deficiente)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(deficientes)<max_deficientes);
  Own_Precondition(Machine(Controle),criar_idoso)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(idosos)<max_idosos);
  List_Precondition(Machine(Controle),criar_idoso)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(idosos)<max_idosos);
  Own_Precondition(Machine(Controle),criar_comum)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(comuns)<max_comuns);
  List_Precondition(Machine(Controle),criar_comum)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(comuns)<max_comuns);
  List_Precondition(Machine(Controle),adiantar)==(mm: NAT1 & hora+mm<1000000);
  List_Precondition(Machine(Controle),pegar_ticket)==(btrue);
  List_Precondition(Machine(Controle),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: dom(chegada));
  List_Precondition(Machine(Controle),abrir_cancela)==(tt: TICKET & pagou(tt) = sim)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Controle),abrir_cancela)==(tt: TICKET & pagou(tt) = sim | skip);
  Expanded_List_Substitution(Machine(Controle),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: dom(chegada) | hora-chegada(ticket)<=lim ==> troco,pagou:=dinheiro,pagou<+{ticket|->sim} [] not(hora-chegada(ticket)<=lim) ==> ((hora-chegada(ticket))*preco-dinheiro>=0 ==> troco,pagou:=(hora-chegada(ticket))*preco-dinheiro,pagou<+{ticket|->sim} [] not((hora-chegada(ticket))*preco-dinheiro>=0) ==> troco:=dinheiro));
  Expanded_List_Substitution(Machine(Controle),pegar_ticket)==(btrue | @uu.(uu: TICKET & uu/:dom(chegada) ==> tt:=uu));
  Expanded_List_Substitution(Machine(Controle),adiantar)==(mm: NAT1 & hora+mm<1000000 | hora:=hora+mm);
  List_Substitution(Machine(Controle),indicar_deficiente)==(ANY uu WHERE uu: deficientes & status(uu) = livre THEN vv:=uu END);
  Expanded_List_Substitution(Machine(Controle),indicar_deficiente)==(card(deficientes<|status|>{livre})>0 | @uu.(uu: deficientes & status(uu) = livre ==> vv:=uu));
  List_Substitution(Machine(Controle),indicar_idoso)==(ANY uu WHERE uu: idosos & status(uu) = livre THEN vv:=uu END);
  Expanded_List_Substitution(Machine(Controle),indicar_idoso)==(card(idosos<|status|>{livre})>0 | @uu.(uu: idosos & status(uu) = livre ==> vv:=uu));
  List_Substitution(Machine(Controle),indicar_comum)==(ANY uu WHERE uu: comuns & status(uu) = livre THEN vv:=uu END);
  Expanded_List_Substitution(Machine(Controle),indicar_comum)==(card(comuns<|status|>{livre})>0 | @uu.(uu: comuns & status(uu) = livre ==> vv:=uu));
  List_Substitution(Machine(Controle),get_info_painel)==(qc:=card(comuns) || oc:=card(comuns<|status|>{ocupada}) || qi:=card(idosos) || oi:=card(idosos<|status|>{ocupada}) || qd:=card(deficientes) || od:=card(deficientes<|status|>{ocupada}));
  Expanded_List_Substitution(Machine(Controle),get_info_painel)==(oc: NAT | qc,oc,qi,oi,qd,od:=card(comuns),card(comuns<|status|>{ocupada}),card(idosos),card(idosos<|status|>{ocupada}),card(deficientes),card(deficientes<|status|>{ocupada}));
  List_Substitution(Machine(Controle),get_cor_lampada)==(cc:=cor(vv));
  Expanded_List_Substitution(Machine(Controle),get_cor_lampada)==(vv: dom(cor) | cc:=cor(vv));
  List_Substitution(Machine(Controle),liberar)==(status(vv):=livre || IF vv: idosos THEN cor(vv):=azul ELSE IF vv: deficientes THEN cor(vv):=amarela ELSE cor(vv):=verde END END);
  Expanded_List_Substitution(Machine(Controle),liberar)==(vv: VAGA | status:=status<+{vv|->livre} || (vv: idosos ==> cor:=cor<+{vv|->azul} [] not(vv: idosos) ==> (vv: deficientes ==> cor:=cor<+{vv|->amarela} [] not(vv: deficientes) ==> cor:=cor<+{vv|->verde})));
  List_Substitution(Machine(Controle),ocupar)==(status(vv):=ocupada || cor(vv):=vermelha);
  Expanded_List_Substitution(Machine(Controle),ocupar)==(vv: VAGA & status(vv) = livre & (vv: comuns or vv: deficientes or vv: idosos) | status,cor:=status<+{vv|->ocupada},cor<+{vv|->vermelha});
  List_Substitution(Machine(Controle),criar_deficiente)==(deficientes:=deficientes\/{vv} || cor(vv):=amarela);
  Expanded_List_Substitution(Machine(Controle),criar_deficiente)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(deficientes)<max_deficientes | deficientes,cor:=deficientes\/{vv},cor<+{vv|->amarela});
  List_Substitution(Machine(Controle),criar_idoso)==(idosos:=idosos\/{vv} || cor(vv):=azul);
  Expanded_List_Substitution(Machine(Controle),criar_idoso)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(idosos)<max_idosos | idosos,cor:=idosos\/{vv},cor<+{vv|->azul});
  List_Substitution(Machine(Controle),criar_comum)==(comuns:=comuns\/{vv} || cor(vv):=verde);
  Expanded_List_Substitution(Machine(Controle),criar_comum)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(comuns)<max_comuns | comuns,cor:=comuns\/{vv},cor<+{vv|->verde});
  List_Substitution(Machine(Controle),adiantar)==(hora:=hora+mm);
  List_Substitution(Machine(Controle),pegar_ticket)==(ANY uu WHERE uu: TICKET & uu/:dom(chegada) THEN tt:=uu END);
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
  Set_Definition(Machine(Controle),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Machine(Controle))==(?);
  Context_List_Defered(Machine(Controle))==(?);
  Context_List_Sets(Machine(Controle))==(?);
  List_Valuable_Sets(Machine(Controle))==(VAGA,TICKET);
  Inherited_List_Enumerated(Machine(Controle))==(STATUS_VAGA,CORES);
  Inherited_List_Defered(Machine(Controle))==(VAGA);
  Inherited_List_Sets(Machine(Controle))==(VAGA,STATUS_VAGA,CORES);
  List_Enumerated(Machine(Controle))==(SIM_NAO);
  List_Defered(Machine(Controle))==(TICKET);
  List_Sets(Machine(Controle))==(SIM_NAO,TICKET);
  Set_Definition(Machine(Controle),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Machine(Controle),VAGA)==(?);
  Set_Definition(Machine(Controle),SIM_NAO)==({sim,nao});
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
  Context_List_Properties(Machine(Controle))==(btrue);
  Inherited_List_Properties(Machine(Controle))==(VAGA: FIN(INTEGER) & not(VAGA = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  List_Properties(Machine(Controle))==(TICKET: FIN(INTEGER) & not(TICKET = {}) & SIM_NAO: FIN(INTEGER) & not(SIM_NAO = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Controle),indicar_deficiente)==(Var(uu) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Controle),indicar_idoso)==(Var(uu) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Controle),indicar_comum)==(Var(uu) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Controle),get_info_painel)==(?);
  List_ANY_Var(Machine(Controle),get_cor_lampada)==(?);
  List_ANY_Var(Machine(Controle),liberar)==(?);
  List_ANY_Var(Machine(Controle),ocupar)==(?);
  List_ANY_Var(Machine(Controle),criar_deficiente)==(?);
  List_ANY_Var(Machine(Controle),criar_idoso)==(?);
  List_ANY_Var(Machine(Controle),criar_comum)==(?);
  List_ANY_Var(Machine(Controle),adiantar)==(?);
  List_ANY_Var(Machine(Controle),pegar_ticket)==(Var(uu) == atype(TICKET,?,?));
  List_ANY_Var(Machine(Controle),pagar_ticket)==(?);
  List_ANY_Var(Machine(Controle),abrir_cancela)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Controle)) == (SIM_NAO,TICKET,sim,nao | VAGA,STATUS_VAGA,CORES,livre,ocupada,azul,amarela,verde,vermelha | hora,chegada,pagou | V,cor,status,comuns,deficientes,idosos | adiantar,pegar_ticket,pagar_ticket,abrir_cancela | criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente | included(Machine(Estacionamento)) | preco,lim,max_comuns,max_idosos,max_deficientes | Controle);
  List_Of_HiddenCst_Ids(Machine(Controle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Controle)) == (?);
  List_Of_VisibleVar_Ids(Machine(Controle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Controle)) == (?: ?);
  List_Of_Ids(Machine(Estacionamento)) == (VAGA,STATUS_VAGA,CORES,livre,ocupada,azul,amarela,verde,vermelha | ? | cor,status,comuns,deficientes,idosos | ? | criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente | ? | ? | max_comuns,max_idosos,max_deficientes | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Controle)) == (Type(max_deficientes) == Prm(btype(INTEGER,?,?));Type(max_idosos) == Prm(btype(INTEGER,?,?));Type(max_comuns) == Prm(btype(INTEGER,?,?));Type(lim) == Prm(btype(INTEGER,?,?));Type(preco) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Controle)) == (Type(CORES) == Cst(SetOf(etype(CORES,0,3)));Type(STATUS_VAGA) == Cst(SetOf(etype(STATUS_VAGA,0,1)));Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA")));Type(SIM_NAO) == Cst(SetOf(etype(SIM_NAO,0,1)));Type(TICKET) == Cst(SetOf(atype(TICKET,"[TICKET","]TICKET"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Controle)) == (Type(vermelha) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(azul) == Cst(etype(CORES,0,3));Type(ocupada) == Cst(etype(STATUS_VAGA,0,1));Type(livre) == Cst(etype(STATUS_VAGA,0,1));Type(sim) == Cst(etype(SIM_NAO,0,1));Type(nao) == Cst(etype(SIM_NAO,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Controle)) == (Type(idosos) == Mvl(SetOf(atype(VAGA,?,?)));Type(deficientes) == Mvl(SetOf(atype(VAGA,?,?)));Type(comuns) == Mvl(SetOf(atype(VAGA,?,?)));Type(status) == Mvl(SetOf(atype(VAGA,"[VAGA","]VAGA")*etype(STATUS_VAGA,0,1)));Type(cor) == Mvl(SetOf(atype(VAGA,"[VAGA","]VAGA")*etype(CORES,0,3)));Type(hora) == Mvl(btype(INTEGER,?,?));Type(chegada) == Mvl(SetOf(atype(TICKET,"[TICKET","]TICKET")*btype(INTEGER,0,MAXINT)));Type(pagou) == Mvl(SetOf(atype(TICKET,"[TICKET","]TICKET")*etype(SIM_NAO,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Controle)) == (Type(criar_comum) == Cst(No_type,atype(VAGA,?,?));Type(criar_idoso) == Cst(No_type,atype(VAGA,?,?));Type(criar_deficiente) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(indicar_comum) == Cst(atype(VAGA,?,?),No_type);Type(indicar_idoso) == Cst(atype(VAGA,?,?),No_type);Type(indicar_deficiente) == Cst(atype(VAGA,?,?),No_type);Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?));Type(pagar_ticket) == Cst(btype(INTEGER,?,?),atype(TICKET,?,?)*btype(INTEGER,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type);Type(adiantar) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Controle)) == (Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(indicar_comum) == Cst(atype(VAGA,?,?),No_type);Type(indicar_idoso) == Cst(atype(VAGA,?,?),No_type);Type(indicar_deficiente) == Cst(atype(VAGA,?,?),No_type);Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type))
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
