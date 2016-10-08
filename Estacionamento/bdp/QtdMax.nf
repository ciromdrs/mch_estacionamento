Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(QtdMax))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(QtdMax))==(Machine(QtdMax));
  Level(Machine(QtdMax))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(QtdMax)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(QtdMax))==(TiposComuns)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(QtdMax))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(QtdMax))==(?);
  List_Includes(Machine(QtdMax))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(QtdMax))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(QtdMax))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(QtdMax))==(?);
  Context_List_Variables(Machine(QtdMax))==(?);
  Abstract_List_Variables(Machine(QtdMax))==(?);
  Local_List_Variables(Machine(QtdMax))==(qtd_max);
  List_Variables(Machine(QtdMax))==(qtd_max);
  External_List_Variables(Machine(QtdMax))==(qtd_max)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(QtdMax))==(?);
  Abstract_List_VisibleVariables(Machine(QtdMax))==(?);
  External_List_VisibleVariables(Machine(QtdMax))==(?);
  Expanded_List_VisibleVariables(Machine(QtdMax))==(?);
  List_VisibleVariables(Machine(QtdMax))==(?);
  Internal_List_VisibleVariables(Machine(QtdMax))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(QtdMax))==(btrue);
  Gluing_List_Invariant(Machine(QtdMax))==(btrue);
  Expanded_List_Invariant(Machine(QtdMax))==(btrue);
  Abstract_List_Invariant(Machine(QtdMax))==(btrue);
  Context_List_Invariant(Machine(QtdMax))==(btrue);
  List_Invariant(Machine(QtdMax))==(qtd_max: TIPOS --> NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(QtdMax))==(btrue);
  Abstract_List_Assertions(Machine(QtdMax))==(btrue);
  Context_List_Assertions(Machine(QtdMax))==(btrue);
  List_Assertions(Machine(QtdMax))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(QtdMax))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(QtdMax))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(QtdMax))==(qtd_max:={});
  Context_List_Initialisation(Machine(QtdMax))==(skip);
  List_Initialisation(Machine(QtdMax))==(qtd_max:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(QtdMax))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(QtdMax),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(QtdMax))==(btrue);
  List_Constraints(Machine(QtdMax))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(QtdMax))==(set_qtd_max);
  List_Operations(Machine(QtdMax))==(set_qtd_max)
END
&
THEORY ListInputX IS
  List_Input(Machine(QtdMax),set_qtd_max)==(max_idosos,max_deficientes,max_comuns)
END
&
THEORY ListOutputX IS
  List_Output(Machine(QtdMax),set_qtd_max)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(QtdMax),set_qtd_max)==(set_qtd_max(max_idosos,max_deficientes,max_comuns))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(QtdMax),set_qtd_max)==(dom(qtd_max) = {} & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(QtdMax),set_qtd_max)==(dom(qtd_max) = {} & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT | qtd_max:={idoso|->max_idosos,comum|->max_comuns,deficiente|->max_deficientes});
  List_Substitution(Machine(QtdMax),set_qtd_max)==(qtd_max:={idoso|->max_idosos,comum|->max_comuns,deficiente|->max_deficientes})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(QtdMax))==(?);
  Inherited_List_Constants(Machine(QtdMax))==(?);
  List_Constants(Machine(QtdMax))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(QtdMax),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Machine(QtdMax))==(TIPOS,STATUS_VAGA,CORES);
  Context_List_Defered(Machine(QtdMax))==(VAGAS);
  Context_List_Sets(Machine(QtdMax))==(VAGAS,TIPOS,STATUS_VAGA,CORES);
  List_Valuable_Sets(Machine(QtdMax))==(?);
  Inherited_List_Enumerated(Machine(QtdMax))==(?);
  Inherited_List_Defered(Machine(QtdMax))==(?);
  Inherited_List_Sets(Machine(QtdMax))==(?);
  List_Enumerated(Machine(QtdMax))==(?);
  List_Defered(Machine(QtdMax))==(?);
  List_Sets(Machine(QtdMax))==(?);
  Set_Definition(Machine(QtdMax),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Machine(QtdMax),TIPOS)==({idoso,deficiente,comum})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(QtdMax))==(?);
  Expanded_List_HiddenConstants(Machine(QtdMax))==(?);
  List_HiddenConstants(Machine(QtdMax))==(?);
  External_List_HiddenConstants(Machine(QtdMax))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(QtdMax))==(btrue);
  Context_List_Properties(Machine(QtdMax))==(MAX_INT: NAT1 & MAX_INT = 1000000 & VAGAS: FIN(INTEGER) & not(VAGAS = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Machine(QtdMax))==(btrue);
  List_Properties(Machine(QtdMax))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(QtdMax),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Machine(QtdMax))==(?);
  Seen_Context_List_Invariant(Machine(QtdMax))==(btrue);
  Seen_Context_List_Assertions(Machine(QtdMax))==(btrue);
  Seen_Context_List_Properties(Machine(QtdMax))==(btrue);
  Seen_List_Constraints(Machine(QtdMax))==(btrue);
  Seen_List_Operations(Machine(QtdMax),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Machine(QtdMax),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(QtdMax),set_qtd_max)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(QtdMax)) == (? | ? | qtd_max | ? | set_qtd_max | ? | seen(Machine(TiposComuns)) | ? | QtdMax);
  List_Of_HiddenCst_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(QtdMax)) == (?);
  List_Of_VisibleVar_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(QtdMax)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(QtdMax)) == (Type(qtd_max) == Mvl(SetOf(etype(TIPOS,0,2)*btype(INTEGER,0,MAXINT))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(QtdMax)) == (Type(set_qtd_max) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
