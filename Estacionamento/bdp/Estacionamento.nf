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
  Local_List_Variables(Machine(Estacionamento))==(ocp_deficientes,ocp_idosos,ocp_comuns,qtd_deficientes,qtd_idosos,qtd_comuns);
  List_Variables(Machine(Estacionamento))==(ocp_deficientes,ocp_idosos,ocp_comuns,qtd_deficientes,qtd_idosos,qtd_comuns);
  External_List_Variables(Machine(Estacionamento))==(ocp_deficientes,ocp_idosos,ocp_comuns,qtd_deficientes,qtd_idosos,qtd_comuns)
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
  List_Invariant(Machine(Estacionamento))==(qtd_comuns: NAT & qtd_idosos: NAT & qtd_deficientes: NAT & ocp_comuns: NAT & ocp_idosos: NAT & ocp_deficientes: NAT & ocp_comuns<=qtd_comuns & ocp_idosos<=qtd_idosos & ocp_deficientes<=qtd_deficientes)
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
  Expanded_List_Initialisation(Machine(Estacionamento))==(qtd_comuns,qtd_idosos,qtd_deficientes,ocp_comuns,ocp_idosos,ocp_deficientes:=0,0,0,0,0,0);
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(qtd_comuns:=0 || qtd_idosos:=0 || qtd_deficientes:=0 || ocp_comuns:=0 || ocp_idosos:=0 || ocp_deficientes:=0)
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
  Internal_List_Operations(Machine(Estacionamento))==(ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar_comum,liberar_idoso,liberar_deficiente,get_info_painel);
  List_Operations(Machine(Estacionamento))==(ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar_comum,liberar_idoso,liberar_deficiente,get_info_painel)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),ocupar_comum)==(?);
  List_Input(Machine(Estacionamento),ocupar_deficiente)==(?);
  List_Input(Machine(Estacionamento),ocupar_idoso)==(?);
  List_Input(Machine(Estacionamento),liberar_comum)==(?);
  List_Input(Machine(Estacionamento),liberar_idoso)==(?);
  List_Input(Machine(Estacionamento),liberar_deficiente)==(?);
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
  List_Header(Machine(Estacionamento),ocupar_comum)==(ocupar_comum);
  List_Header(Machine(Estacionamento),ocupar_deficiente)==(ocupar_deficiente);
  List_Header(Machine(Estacionamento),ocupar_idoso)==(ocupar_idoso);
  List_Header(Machine(Estacionamento),liberar_comum)==(liberar_comum);
  List_Header(Machine(Estacionamento),liberar_idoso)==(liberar_idoso);
  List_Header(Machine(Estacionamento),liberar_deficiente)==(liberar_deficiente);
  List_Header(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),ocupar_comum)==(ocp_comuns<qtd_comuns);
  List_Precondition(Machine(Estacionamento),ocupar_deficiente)==(ocp_deficientes<qtd_deficientes);
  List_Precondition(Machine(Estacionamento),ocupar_idoso)==(ocp_idosos<qtd_idosos);
  List_Precondition(Machine(Estacionamento),liberar_comum)==(ocp_comuns>0);
  List_Precondition(Machine(Estacionamento),liberar_idoso)==(ocp_idosos>0);
  List_Precondition(Machine(Estacionamento),liberar_deficiente)==(ocp_deficientes>0);
  List_Precondition(Machine(Estacionamento),get_info_painel)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),get_info_painel)==(btrue | qc,oc,qi,oi,qd,od:=qtd_comuns,ocp_comuns,qtd_idosos,ocp_idosos,qtd_deficientes,ocp_deficientes);
  Expanded_List_Substitution(Machine(Estacionamento),liberar_deficiente)==(ocp_deficientes>0 | ocp_deficientes:=ocp_deficientes-1);
  Expanded_List_Substitution(Machine(Estacionamento),liberar_idoso)==(ocp_idosos>0 | ocp_idosos:=ocp_idosos-1);
  Expanded_List_Substitution(Machine(Estacionamento),liberar_comum)==(ocp_comuns>0 | ocp_comuns:=ocp_comuns-1);
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_idoso)==(ocp_idosos<qtd_idosos | ocp_idosos:=ocp_idosos+1);
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_deficiente)==(ocp_deficientes<qtd_deficientes | ocp_deficientes:=ocp_deficientes+1);
  Expanded_List_Substitution(Machine(Estacionamento),ocupar_comum)==(ocp_comuns<qtd_comuns | ocp_comuns:=ocp_comuns+1);
  List_Substitution(Machine(Estacionamento),ocupar_comum)==(ocp_comuns:=ocp_comuns+1);
  List_Substitution(Machine(Estacionamento),ocupar_deficiente)==(ocp_deficientes:=ocp_deficientes+1);
  List_Substitution(Machine(Estacionamento),ocupar_idoso)==(ocp_idosos:=ocp_idosos+1);
  List_Substitution(Machine(Estacionamento),liberar_comum)==(ocp_comuns:=ocp_comuns-1);
  List_Substitution(Machine(Estacionamento),liberar_idoso)==(ocp_idosos:=ocp_idosos-1);
  List_Substitution(Machine(Estacionamento),liberar_deficiente)==(ocp_deficientes:=ocp_deficientes-1);
  List_Substitution(Machine(Estacionamento),get_info_painel)==(qc:=qtd_comuns || oc:=ocp_comuns || qi:=qtd_idosos || oi:=ocp_idosos || qd:=qtd_deficientes || od:=ocp_deficientes)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Estacionamento))==(?);
  Inherited_List_Constants(Machine(Estacionamento))==(?);
  List_Constants(Machine(Estacionamento))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Estacionamento))==(?);
  Context_List_Defered(Machine(Estacionamento))==(?);
  Context_List_Sets(Machine(Estacionamento))==(?);
  List_Valuable_Sets(Machine(Estacionamento))==(?);
  Inherited_List_Enumerated(Machine(Estacionamento))==(?);
  Inherited_List_Defered(Machine(Estacionamento))==(?);
  Inherited_List_Sets(Machine(Estacionamento))==(?);
  List_Enumerated(Machine(Estacionamento))==(?);
  List_Defered(Machine(Estacionamento))==(?);
  List_Sets(Machine(Estacionamento))==(?)
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
  List_Properties(Machine(Estacionamento))==(btrue)
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
  List_Of_Ids(Machine(Estacionamento)) == (? | ? | ocp_deficientes,ocp_idosos,ocp_comuns,qtd_deficientes,qtd_idosos,qtd_comuns | ? | ocupar_comum,ocupar_deficiente,ocupar_idoso,liberar_comum,liberar_idoso,liberar_deficiente,get_info_painel | ? | ? | ? | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(ocp_deficientes) == Mvl(btype(INTEGER,?,?));Type(ocp_idosos) == Mvl(btype(INTEGER,?,?));Type(ocp_comuns) == Mvl(btype(INTEGER,?,?));Type(qtd_deficientes) == Mvl(btype(INTEGER,?,?));Type(qtd_idosos) == Mvl(btype(INTEGER,?,?));Type(qtd_comuns) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(liberar_deficiente) == Cst(No_type,No_type);Type(liberar_idoso) == Cst(No_type,No_type);Type(liberar_comum) == Cst(No_type,No_type);Type(ocupar_idoso) == Cst(No_type,No_type);Type(ocupar_deficiente) == Cst(No_type,No_type);Type(ocupar_comum) == Cst(No_type,No_type));
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
