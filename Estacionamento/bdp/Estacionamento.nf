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
  Local_List_Variables(Machine(Estacionamento))==(status,comuns,deficientes,idosos);
  List_Variables(Machine(Estacionamento))==(status,comuns,deficientes,idosos);
  External_List_Variables(Machine(Estacionamento))==(status,comuns,deficientes,idosos)
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
  List_Invariant(Machine(Estacionamento))==(idosos <: VAGA & deficientes <: VAGA & comuns <: VAGA & idosos/\deficientes = {} & idosos/\comuns = {} & deficientes/\comuns = {} & card(comuns)<=max_comuns & card(idosos)<=max_idosos & card(deficientes)<=max_deficientes & status: VAGA --> STATUS_VAGA)
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
  Expanded_List_Initialisation(Machine(Estacionamento))==(idosos,deficientes,comuns,status:={},{},{},VAGA*{livre});
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(idosos:={} || deficientes:={} || comuns:={} || status:=VAGA*{livre})
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
  Internal_List_Operations(Machine(Estacionamento))==(ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar,get_cor_lampada);
  List_Operations(Machine(Estacionamento))==(ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar,get_cor_lampada)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),ocupar_comum)==(vv);
  List_Input(Machine(Estacionamento),ocupar_deficiente)==(vv);
  List_Input(Machine(Estacionamento),ocupar_idoso)==(vv);
  List_Input(Machine(Estacionamento),liberar)==(vv);
  List_Input(Machine(Estacionamento),get_cor_lampada)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Estacionamento),ocupar_comum)==(?);
  List_Output(Machine(Estacionamento),ocupar_deficiente)==(?);
  List_Output(Machine(Estacionamento),ocupar_idoso)==(?);
  List_Output(Machine(Estacionamento),liberar)==(?);
  List_Output(Machine(Estacionamento),get_cor_lampada)==(cc)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Estacionamento),ocupar_comum)==(ocupar_comum(vv));
  List_Header(Machine(Estacionamento),ocupar_deficiente)==(ocupar_deficiente(vv));
  List_Header(Machine(Estacionamento),ocupar_idoso)==(ocupar_idoso(vv));
  List_Header(Machine(Estacionamento),liberar)==(liberar(vv));
  List_Header(Machine(Estacionamento),get_cor_lampada)==(cc <-- get_cor_lampada(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),ocupar_comum)==(card(comuns)<max_comuns & vv: comuns & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),ocupar_deficiente)==(card(deficientes)<max_deficientes & vv: deficientes & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),ocupar_idoso)==(card(idosos)<max_idosos & vv: idosos & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),liberar)==(vv: VAGA);
  List_Precondition(Machine(Estacionamento),get_cor_lampada)==(vv: VAGA)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),get_cor_lampada)==(vv: VAGA | status(vv) = ocupada ==> cc:=vermelha [] not(status(vv) = ocupada) ==> (vv: idosos ==> cc:=amarela [] not(vv: idosos) ==> (vv: deficientes ==> cc:=azul [] not(vv: deficientes) ==> cc:=verde)));
  Expanded_List_Substitution(Machine(Estacionamento),liberar)==(vv: VAGA | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_idoso)==(card(idosos)<max_idosos & vv: idosos & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_deficiente)==(card(deficientes)<max_deficientes & vv: deficientes & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_comum)==(card(comuns)<max_comuns & vv: comuns & status(vv) = livre | status:=status<+{vv|->ocupada});
  List_Substitution(Machine(Estacionamento),ocupar_comum)==(status(vv):=ocupada);
  List_Substitution(Machine(Estacionamento),ocupar_deficiente)==(status(vv):=ocupada);
  List_Substitution(Machine(Estacionamento),ocupar_idoso)==(status(vv):=ocupada);
  List_Substitution(Machine(Estacionamento),liberar)==(status(vv):=livre);
  List_Substitution(Machine(Estacionamento),get_cor_lampada)==(IF status(vv) = ocupada THEN cc:=vermelha ELSE IF vv: idosos THEN cc:=amarela ELSE IF vv: deficientes THEN cc:=azul ELSE cc:=verde END END END)
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
  List_Enumerated(Machine(Estacionamento))==(STATUS_VAGA,COR);
  List_Defered(Machine(Estacionamento))==(VAGA);
  List_Sets(Machine(Estacionamento))==(VAGA,STATUS_VAGA,COR);
  Set_Definition(Machine(Estacionamento),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Machine(Estacionamento),COR)==({azul,amarela,verde,vermelha})
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
  List_Properties(Machine(Estacionamento))==(VAGA: FIN(INTEGER) & not(VAGA = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & COR: FIN(INTEGER) & not(COR = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Estacionamento),ocupar_comum)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar_deficiente)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar_idoso)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar)==(?);
  List_ANY_Var(Machine(Estacionamento),get_cor_lampada)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estacionamento)) == (VAGA,STATUS_VAGA,COR,livre,ocupada,azul,amarela,verde,vermelha | ? | status,comuns,deficientes,idosos | ? | ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar,get_cor_lampada | ? | ? | max_comuns,max_idosos,max_deficientes | Estacionamento);
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
  Sets(Machine(Estacionamento)) == (Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA")));Type(STATUS_VAGA) == Cst(SetOf(etype(STATUS_VAGA,0,1)));Type(COR) == Cst(SetOf(etype(COR,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Estacionamento)) == (Type(livre) == Cst(etype(STATUS_VAGA,0,1));Type(ocupada) == Cst(etype(STATUS_VAGA,0,1));Type(azul) == Cst(etype(COR,0,3));Type(amarela) == Cst(etype(COR,0,3));Type(verde) == Cst(etype(COR,0,3));Type(vermelha) == Cst(etype(COR,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(status) == Mvl(SetOf(atype(VAGA,"[VAGA","]VAGA")*etype(STATUS_VAGA,0,1)));Type(comuns) == Mvl(SetOf(atype(VAGA,?,?)));Type(deficientes) == Mvl(SetOf(atype(VAGA,?,?)));Type(idosos) == Mvl(SetOf(atype(VAGA,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(get_cor_lampada) == Cst(etype(COR,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar_idoso) == Cst(No_type,atype(VAGA,?,?));Type(ocupar_deficiente) == Cst(No_type,atype(VAGA,?,?));Type(ocupar_comum) == Cst(No_type,atype(VAGA,?,?)));
  Observers(Machine(Estacionamento)) == (Type(get_cor_lampada) == Cst(etype(COR,?,?),atype(VAGA,?,?)))
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
