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
  Local_List_Variables(Machine(Estacionamento))==(COMUNS,DEFICIENTES,IDOSOS);
  List_Variables(Machine(Estacionamento))==(COMUNS,DEFICIENTES,IDOSOS);
  External_List_Variables(Machine(Estacionamento))==(COMUNS,DEFICIENTES,IDOSOS)
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
  List_Invariant(Machine(Estacionamento))==(IDOSOS <: VAGA & DEFICIENTES <: VAGA & COMUNS <: VAGA & card(COMUNS)<=max_comuns & card(IDOSOS)<=max_idosos & card(DEFICIENTES)<=max_deficientes)
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
  Expanded_List_Initialisation(Machine(Estacionamento))==(IDOSOS,DEFICIENTES,COMUNS:={},{},{});
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(IDOSOS:={} || DEFICIENTES:={} || COMUNS:={})
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
  Internal_List_Operations(Machine(Estacionamento))==(ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar_comum,liberar_idoso,liberar_deficiente,get_info_painel);
  List_Operations(Machine(Estacionamento))==(ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar_comum,liberar_idoso,liberar_deficiente,get_info_painel)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),ocupar_comum)==(vv);
  List_Input(Machine(Estacionamento),ocupar_deficiente)==(vv);
  List_Input(Machine(Estacionamento),ocupar_idoso)==(vv);
  List_Input(Machine(Estacionamento),liberar_comum)==(vv);
  List_Input(Machine(Estacionamento),liberar_idoso)==(vv);
  List_Input(Machine(Estacionamento),liberar_deficiente)==(vv);
  List_Input(Machine(Estacionamento),get_info_painel)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Estacionamento),ocupar_comum)==(?);
  List_Output(Machine(Estacionamento),ocupar_deficiente)==(?);
  List_Output(Machine(Estacionamento),ocupar_idoso)==(?);
  List_Output(Machine(Estacionamento),liberar_comum)==(?);
  List_Output(Machine(Estacionamento),liberar_idoso)==(?);
  List_Output(Machine(Estacionamento),liberar_deficiente)==(?);
  List_Output(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Estacionamento),ocupar_comum)==(ocupar_comum(vv));
  List_Header(Machine(Estacionamento),ocupar_deficiente)==(ocupar_deficiente(vv));
  List_Header(Machine(Estacionamento),ocupar_idoso)==(ocupar_idoso(vv));
  List_Header(Machine(Estacionamento),liberar_comum)==(liberar_comum(vv));
  List_Header(Machine(Estacionamento),liberar_idoso)==(liberar_idoso(vv));
  List_Header(Machine(Estacionamento),liberar_deficiente)==(liberar_deficiente(vv));
  List_Header(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),ocupar_comum)==(card(COMUNS)<max_comuns & vv: VAGA);
  List_Precondition(Machine(Estacionamento),ocupar_deficiente)==(card(DEFICIENTES)<max_deficientes & vv: VAGA);
  List_Precondition(Machine(Estacionamento),ocupar_idoso)==(card(IDOSOS)<max_idosos & vv: VAGA);
  List_Precondition(Machine(Estacionamento),liberar_comum)==(vv: VAGA);
  List_Precondition(Machine(Estacionamento),liberar_idoso)==(vv: VAGA);
  List_Precondition(Machine(Estacionamento),liberar_deficiente)==(vv: VAGA);
  List_Precondition(Machine(Estacionamento),get_info_painel)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),get_info_painel)==(btrue | qc,oc,qi,oi,qd,od:=max_comuns,card(COMUNS),max_idosos,card(IDOSOS),max_deficientes,card(DEFICIENTES));
  Expanded_List_Substitution(Machine(Estacionamento),liberar_deficiente)==(vv: VAGA | DEFICIENTES:=DEFICIENTES-{vv});
  Expanded_List_Substitution(Machine(Estacionamento),liberar_idoso)==(vv: VAGA | IDOSOS:=IDOSOS-{vv});
  Expanded_List_Substitution(Machine(Estacionamento),liberar_comum)==(vv: VAGA | COMUNS:=COMUNS-{vv});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_idoso)==(card(IDOSOS)<max_idosos & vv: VAGA | IDOSOS:=IDOSOS\/{vv});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_deficiente)==(card(DEFICIENTES)<max_deficientes & vv: VAGA | DEFICIENTES:=DEFICIENTES\/{vv});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_comum)==(card(COMUNS)<max_comuns & vv: VAGA | COMUNS:=COMUNS\/{vv});
  List_Substitution(Machine(Estacionamento),ocupar_comum)==(COMUNS:=COMUNS\/{vv});
  List_Substitution(Machine(Estacionamento),ocupar_deficiente)==(DEFICIENTES:=DEFICIENTES\/{vv});
  List_Substitution(Machine(Estacionamento),ocupar_idoso)==(IDOSOS:=IDOSOS\/{vv});
  List_Substitution(Machine(Estacionamento),liberar_comum)==(COMUNS:=COMUNS-{vv});
  List_Substitution(Machine(Estacionamento),liberar_idoso)==(IDOSOS:=IDOSOS-{vv});
  List_Substitution(Machine(Estacionamento),liberar_deficiente)==(DEFICIENTES:=DEFICIENTES-{vv});
  List_Substitution(Machine(Estacionamento),get_info_painel)==(qc:=max_comuns || oc:=card(COMUNS) || qi:=max_idosos || oi:=card(IDOSOS) || qd:=max_deficientes || od:=card(DEFICIENTES))
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
  List_Enumerated(Machine(Estacionamento))==(?);
  List_Defered(Machine(Estacionamento))==(VAGA);
  List_Sets(Machine(Estacionamento))==(VAGA)
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
  List_Properties(Machine(Estacionamento))==(VAGA: FIN(INTEGER) & not(VAGA = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Estacionamento),ocupar_comum)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar_deficiente)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar_idoso)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar_comum)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar_idoso)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar_deficiente)==(?);
  List_ANY_Var(Machine(Estacionamento),get_info_painel)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estacionamento)) == (VAGA | ? | COMUNS,DEFICIENTES,IDOSOS | ? | ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar_comum,liberar_idoso,liberar_deficiente,get_info_painel | ? | ? | max_comuns,max_idosos,max_deficientes | Estacionamento);
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
  Sets(Machine(Estacionamento)) == (Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(COMUNS) == Mvl(SetOf(atype(VAGA,?,?)));Type(DEFICIENTES) == Mvl(SetOf(atype(VAGA,?,?)));Type(IDOSOS) == Mvl(SetOf(atype(VAGA,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(liberar_deficiente) == Cst(No_type,atype(VAGA,?,?));Type(liberar_idoso) == Cst(No_type,atype(VAGA,?,?));Type(liberar_comum) == Cst(No_type,atype(VAGA,?,?));Type(ocupar_idoso) == Cst(No_type,atype(VAGA,?,?));Type(ocupar_deficiente) == Cst(No_type,atype(VAGA,?,?));Type(ocupar_comum) == Cst(No_type,atype(VAGA,?,?)));
  Observers(Machine(Estacionamento)) == (Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
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
