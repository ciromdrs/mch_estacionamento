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
  Local_List_Variables(Machine(Estacionamento))==(cor,status,comuns,deficientes,idosos);
  List_Variables(Machine(Estacionamento))==(cor,status,comuns,deficientes,idosos);
  External_List_Variables(Machine(Estacionamento))==(cor,status,comuns,deficientes,idosos)
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
  List_Invariant(Machine(Estacionamento))==(idosos <: VAGA & deficientes <: VAGA & comuns <: VAGA & comuns: FIN(comuns) & idosos: FIN(idosos) & deficientes: FIN(deficientes) & idosos/\deficientes = {} & idosos/\comuns = {} & deficientes/\comuns = {} & card(comuns)<=max_comuns & card(idosos)<=max_idosos & card(deficientes)<=max_deficientes & status: VAGA --> STATUS_VAGA & cor: VAGA --> CORES)
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
  Expanded_List_Initialisation(Machine(Estacionamento))==(idosos,deficientes,comuns,status,cor:={},{},{},VAGA*{livre},VAGA*{verde});
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(idosos:={} || deficientes:={} || comuns:={} || status:=VAGA*{livre} || cor:=VAGA*{verde})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Estacionamento))==(max_comuns,max_idosos,max_deficientes)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Estacionamento))==(btrue);
  List_Constraints(Machine(Estacionamento))==(max_comuns: NAT & max_idosos: NAT & max_deficientes: NAT)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Estacionamento))==(criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente);
  List_Operations(Machine(Estacionamento))==(criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),criar_comum)==(vv);
  List_Input(Machine(Estacionamento),criar_idoso)==(vv);
  List_Input(Machine(Estacionamento),criar_deficiente)==(vv);
  List_Input(Machine(Estacionamento),ocupar)==(vv);
  List_Input(Machine(Estacionamento),liberar)==(vv);
  List_Input(Machine(Estacionamento),get_cor_lampada)==(vv);
  List_Input(Machine(Estacionamento),get_info_painel)==(?);
  List_Input(Machine(Estacionamento),indicar_comum)==(?);
  List_Input(Machine(Estacionamento),indicar_idoso)==(?);
  List_Input(Machine(Estacionamento),indicar_deficiente)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Estacionamento),criar_comum)==(?);
  List_Output(Machine(Estacionamento),criar_idoso)==(?);
  List_Output(Machine(Estacionamento),criar_deficiente)==(?);
  List_Output(Machine(Estacionamento),ocupar)==(?);
  List_Output(Machine(Estacionamento),liberar)==(?);
  List_Output(Machine(Estacionamento),get_cor_lampada)==(cc);
  List_Output(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Machine(Estacionamento),indicar_comum)==(vv);
  List_Output(Machine(Estacionamento),indicar_idoso)==(vv);
  List_Output(Machine(Estacionamento),indicar_deficiente)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Estacionamento),criar_comum)==(criar_comum(vv));
  List_Header(Machine(Estacionamento),criar_idoso)==(criar_idoso(vv));
  List_Header(Machine(Estacionamento),criar_deficiente)==(criar_deficiente(vv));
  List_Header(Machine(Estacionamento),ocupar)==(ocupar(vv));
  List_Header(Machine(Estacionamento),liberar)==(liberar(vv));
  List_Header(Machine(Estacionamento),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Machine(Estacionamento),indicar_comum)==(vv <-- indicar_comum);
  List_Header(Machine(Estacionamento),indicar_idoso)==(vv <-- indicar_idoso);
  List_Header(Machine(Estacionamento),indicar_deficiente)==(vv <-- indicar_deficiente)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),criar_comum)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(comuns)<max_comuns);
  List_Precondition(Machine(Estacionamento),criar_idoso)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(idosos)<max_idosos);
  List_Precondition(Machine(Estacionamento),criar_deficiente)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(deficientes)<max_deficientes);
  List_Precondition(Machine(Estacionamento),ocupar)==(vv: VAGA & status(vv) = livre & (vv: comuns or vv: deficientes or vv: idosos));
  List_Precondition(Machine(Estacionamento),liberar)==(vv: VAGA);
  List_Precondition(Machine(Estacionamento),get_cor_lampada)==(vv: dom(cor));
  List_Precondition(Machine(Estacionamento),get_info_painel)==(oc: NAT);
  List_Precondition(Machine(Estacionamento),indicar_comum)==(card(comuns<|status|>{livre})>0);
  List_Precondition(Machine(Estacionamento),indicar_idoso)==(card(idosos<|status|>{livre})>0);
  List_Precondition(Machine(Estacionamento),indicar_deficiente)==(card(deficientes<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),indicar_deficiente)==(card(deficientes<|status|>{livre})>0 | @uu.(uu: deficientes & status(uu) = livre ==> vv:=uu));
  Expanded_List_Substitution(Machine(Estacionamento),indicar_idoso)==(card(idosos<|status|>{livre})>0 | @uu.(uu: idosos & status(uu) = livre ==> vv:=uu));
  Expanded_List_Substitution(Machine(Estacionamento),indicar_comum)==(card(comuns<|status|>{livre})>0 | @uu.(uu: comuns & status(uu) = livre ==> vv:=uu));
  Expanded_List_Substitution(Machine(Estacionamento),get_info_painel)==(oc: NAT | qc,oc,qi,oi,qd,od:=card(comuns),card(comuns<|status|>{ocupada}),card(idosos),card(idosos<|status|>{ocupada}),card(deficientes),card(deficientes<|status|>{ocupada}));
  Expanded_List_Substitution(Machine(Estacionamento),get_cor_lampada)==(vv: dom(cor) | cc:=cor(vv));
  Expanded_List_Substitution(Machine(Estacionamento),liberar)==(vv: VAGA | status:=status<+{vv|->livre} || (vv: idosos ==> cor:=cor<+{vv|->azul} [] not(vv: idosos) ==> (vv: deficientes ==> cor:=cor<+{vv|->amarela} [] not(vv: deficientes) ==> cor:=cor<+{vv|->verde})));
  Expanded_List_Substitution(Machine(Estacionamento),ocupar)==(vv: VAGA & status(vv) = livre & (vv: comuns or vv: deficientes or vv: idosos) | status,cor:=status<+{vv|->ocupada},cor<+{vv|->vermelha});
  Expanded_List_Substitution(Machine(Estacionamento),criar_deficiente)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(deficientes)<max_deficientes | deficientes,cor:=deficientes\/{vv},cor<+{vv|->amarela});
  Expanded_List_Substitution(Machine(Estacionamento),criar_idoso)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(idosos)<max_idosos | idosos,cor:=idosos\/{vv},cor<+{vv|->azul});
  Expanded_List_Substitution(Machine(Estacionamento),criar_comum)==(vv: VAGA & vv/:comuns & vv/:idosos & vv/:deficientes & card(comuns)<max_comuns | comuns,cor:=comuns\/{vv},cor<+{vv|->verde});
  List_Substitution(Machine(Estacionamento),criar_comum)==(comuns:=comuns\/{vv} || cor(vv):=verde);
  List_Substitution(Machine(Estacionamento),criar_idoso)==(idosos:=idosos\/{vv} || cor(vv):=azul);
  List_Substitution(Machine(Estacionamento),criar_deficiente)==(deficientes:=deficientes\/{vv} || cor(vv):=amarela);
  List_Substitution(Machine(Estacionamento),ocupar)==(status(vv):=ocupada || cor(vv):=vermelha);
  List_Substitution(Machine(Estacionamento),liberar)==(status(vv):=livre || IF vv: idosos THEN cor(vv):=azul ELSE IF vv: deficientes THEN cor(vv):=amarela ELSE cor(vv):=verde END END);
  List_Substitution(Machine(Estacionamento),get_cor_lampada)==(cc:=cor(vv));
  List_Substitution(Machine(Estacionamento),get_info_painel)==(qc:=card(comuns) || oc:=card(comuns<|status|>{ocupada}) || qi:=card(idosos) || oi:=card(idosos<|status|>{ocupada}) || qd:=card(deficientes) || od:=card(deficientes<|status|>{ocupada}));
  List_Substitution(Machine(Estacionamento),indicar_comum)==(ANY uu WHERE uu: comuns & status(uu) = livre THEN vv:=uu END);
  List_Substitution(Machine(Estacionamento),indicar_idoso)==(ANY uu WHERE uu: idosos & status(uu) = livre THEN vv:=uu END);
  List_Substitution(Machine(Estacionamento),indicar_deficiente)==(ANY uu WHERE uu: deficientes & status(uu) = livre THEN vv:=uu END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Estacionamento))==(?);
  Inherited_List_Constants(Machine(Estacionamento))==(?);
  List_Constants(Machine(Estacionamento))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Estacionamento),VAGA)==(?);
  Context_List_Enumerated(Machine(Estacionamento))==(?);
  Context_List_Defered(Machine(Estacionamento))==(?);
  Context_List_Sets(Machine(Estacionamento))==(?);
  List_Valuable_Sets(Machine(Estacionamento))==(VAGA);
  Inherited_List_Enumerated(Machine(Estacionamento))==(?);
  Inherited_List_Defered(Machine(Estacionamento))==(?);
  Inherited_List_Sets(Machine(Estacionamento))==(?);
  List_Enumerated(Machine(Estacionamento))==(STATUS_VAGA,CORES);
  List_Defered(Machine(Estacionamento))==(VAGA);
  List_Sets(Machine(Estacionamento))==(VAGA,STATUS_VAGA,CORES);
  Set_Definition(Machine(Estacionamento),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Machine(Estacionamento),CORES)==({azul,amarela,verde,vermelha})
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
  List_Properties(Machine(Estacionamento))==(VAGA: FIN(INTEGER) & not(VAGA = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Estacionamento),criar_comum)==(?);
  List_ANY_Var(Machine(Estacionamento),criar_idoso)==(?);
  List_ANY_Var(Machine(Estacionamento),criar_deficiente)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar)==(?);
  List_ANY_Var(Machine(Estacionamento),get_cor_lampada)==(?);
  List_ANY_Var(Machine(Estacionamento),get_info_painel)==(?);
  List_ANY_Var(Machine(Estacionamento),indicar_comum)==(Var(uu) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Estacionamento),indicar_idoso)==(Var(uu) == atype(VAGA,?,?));
  List_ANY_Var(Machine(Estacionamento),indicar_deficiente)==(Var(uu) == atype(VAGA,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estacionamento)) == (VAGA,STATUS_VAGA,CORES,livre,ocupada,azul,amarela,verde,vermelha | ? | cor,status,comuns,deficientes,idosos | ? | criar_comum,criar_idoso,criar_deficiente,ocupar,liberar,get_cor_lampada,get_info_painel,indicar_comum,indicar_idoso,indicar_deficiente | ? | ? | max_comuns,max_idosos,max_deficientes | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Estacionamento)) == (Type(max_deficientes) == Prm(btype(INTEGER,?,?));Type(max_idosos) == Prm(btype(INTEGER,?,?));Type(max_comuns) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Estacionamento)) == (Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA")));Type(STATUS_VAGA) == Cst(SetOf(etype(STATUS_VAGA,0,1)));Type(CORES) == Cst(SetOf(etype(CORES,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Estacionamento)) == (Type(livre) == Cst(etype(STATUS_VAGA,0,1));Type(ocupada) == Cst(etype(STATUS_VAGA,0,1));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(cor) == Mvl(SetOf(atype(VAGA,"[VAGA","]VAGA")*etype(CORES,0,3)));Type(status) == Mvl(SetOf(atype(VAGA,"[VAGA","]VAGA")*etype(STATUS_VAGA,0,1)));Type(comuns) == Mvl(SetOf(atype(VAGA,?,?)));Type(deficientes) == Mvl(SetOf(atype(VAGA,?,?)));Type(idosos) == Mvl(SetOf(atype(VAGA,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(indicar_deficiente) == Cst(atype(VAGA,?,?),No_type);Type(indicar_idoso) == Cst(atype(VAGA,?,?),No_type);Type(indicar_comum) == Cst(atype(VAGA,?,?),No_type);Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(criar_deficiente) == Cst(No_type,atype(VAGA,?,?));Type(criar_idoso) == Cst(No_type,atype(VAGA,?,?));Type(criar_comum) == Cst(No_type,atype(VAGA,?,?)));
  Observers(Machine(Estacionamento)) == (Type(indicar_deficiente) == Cst(atype(VAGA,?,?),No_type);Type(indicar_idoso) == Cst(atype(VAGA,?,?),No_type);Type(indicar_comum) == Cst(atype(VAGA,?,?),No_type);Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?)))
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
