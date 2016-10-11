Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(QtdMax_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(QtdMax_r))==(Machine(QtdMax));
  Level(Refinement(QtdMax_r))==(1);
  Upper_Level(Refinement(QtdMax_r))==(Machine(QtdMax))
END
&
THEORY LoadedStructureX IS
  Refinement(QtdMax_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(QtdMax_r))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(QtdMax_r))==(?);
  List_Includes(Refinement(QtdMax_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(QtdMax_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(QtdMax_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(QtdMax_r))==(?);
  Context_List_Variables(Refinement(QtdMax_r))==(?);
  Abstract_List_Variables(Refinement(QtdMax_r))==(ini,qtd_max);
  Local_List_Variables(Refinement(QtdMax_r))==(ini_r,qtd_max_r);
  List_Variables(Refinement(QtdMax_r))==(ini_r,qtd_max_r);
  External_List_Variables(Refinement(QtdMax_r))==(ini_r,qtd_max_r)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(QtdMax_r))==(?);
  Abstract_List_VisibleVariables(Refinement(QtdMax_r))==(?);
  External_List_VisibleVariables(Refinement(QtdMax_r))==(?);
  Expanded_List_VisibleVariables(Refinement(QtdMax_r))==(?);
  List_VisibleVariables(Refinement(QtdMax_r))==(?);
  Internal_List_VisibleVariables(Refinement(QtdMax_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(QtdMax_r))==(ini_r,qtd_max_r)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(QtdMax_r))==(btrue);
  Expanded_List_Invariant(Refinement(QtdMax_r))==(btrue);
  Abstract_List_Invariant(Refinement(QtdMax_r))==(qtd_max: TIPOS --> NAT & ini: BOOL);
  Context_List_Invariant(Refinement(QtdMax_r))==(btrue);
  List_Invariant(Refinement(QtdMax_r))==(ini_r: BOOL & ini_r = ini & qtd_max_r: 1..3 --> NAT & qtd_max_r(1) = qtd_max(comum) & qtd_max_r(2) = qtd_max(idoso) & qtd_max_r(3) = qtd_max(deficiente))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(QtdMax_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(QtdMax_r))==(btrue);
  Abstract_List_Assertions(Refinement(QtdMax_r))==(btrue);
  Context_List_Assertions(Refinement(QtdMax_r))==(btrue);
  List_Assertions(Refinement(QtdMax_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(QtdMax_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(QtdMax_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(QtdMax_r))==(qtd_max_r:=qtd_max_r<+{1|->0};qtd_max_r:=qtd_max_r<+{2|->0};qtd_max_r:=qtd_max_r<+{3|->0};ini_r:=FALSE);
  Context_List_Initialisation(Refinement(QtdMax_r))==(skip);
  List_Initialisation(Refinement(QtdMax_r))==(qtd_max_r(1):=0;qtd_max_r(2):=0;qtd_max_r(3):=0;ini_r:=FALSE)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(QtdMax_r))==(init);
  List_Operations(Refinement(QtdMax_r))==(init)
END
&
THEORY ListInputX IS
  List_Input(Refinement(QtdMax_r),init)==(max_idosos,max_deficientes,max_comuns)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(QtdMax_r),init)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(QtdMax_r),init)==(init(max_idosos,max_deficientes,max_comuns))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(QtdMax_r),init)==(btrue);
  List_Precondition(Refinement(QtdMax_r),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(QtdMax_r),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT | qtd_max_r:=qtd_max_r<+{1|->max_comuns};qtd_max_r:=qtd_max_r<+{2|->max_idosos};qtd_max_r:=qtd_max_r<+{3|->max_deficientes};ini_r:=TRUE);
  List_Substitution(Refinement(QtdMax_r),init)==(qtd_max_r(1):=max_comuns;qtd_max_r(2):=max_idosos;qtd_max_r(3):=max_deficientes;ini_r:=TRUE)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(QtdMax_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(QtdMax_r),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(QtdMax_r))==(btrue);
  List_Context_Constraints(Refinement(QtdMax_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(QtdMax_r))==(?);
  Inherited_List_Constants(Refinement(QtdMax_r))==(?);
  List_Constants(Refinement(QtdMax_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(QtdMax_r),SIM_NAO)==({sim,nao});
  Context_List_Enumerated(Refinement(QtdMax_r))==(TIPOS,STATUS_VAGA,CORES,SIM_NAO);
  Context_List_Defered(Refinement(QtdMax_r))==(?);
  Context_List_Sets(Refinement(QtdMax_r))==(TIPOS,STATUS_VAGA,CORES,SIM_NAO);
  List_Valuable_Sets(Refinement(QtdMax_r))==(?);
  Inherited_List_Enumerated(Refinement(QtdMax_r))==(?);
  Inherited_List_Defered(Refinement(QtdMax_r))==(?);
  Inherited_List_Sets(Refinement(QtdMax_r))==(?);
  List_Enumerated(Refinement(QtdMax_r))==(?);
  List_Defered(Refinement(QtdMax_r))==(?);
  List_Sets(Refinement(QtdMax_r))==(?);
  Set_Definition(Refinement(QtdMax_r),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Refinement(QtdMax_r),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Refinement(QtdMax_r),TIPOS)==({idoso,deficiente,comum})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(QtdMax_r))==(?);
  Expanded_List_HiddenConstants(Refinement(QtdMax_r))==(?);
  List_HiddenConstants(Refinement(QtdMax_r))==(?);
  External_List_HiddenConstants(Refinement(QtdMax_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(QtdMax_r))==(btrue);
  Context_List_Properties(Refinement(QtdMax_r))==(MAX_INT: NAT1 & MAX_INT = 1000 & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}) & SIM_NAO: FIN(INTEGER) & not(SIM_NAO = {}));
  Inherited_List_Properties(Refinement(QtdMax_r))==(btrue);
  List_Properties(Refinement(QtdMax_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(QtdMax_r),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Refinement(QtdMax_r))==(?);
  Seen_Context_List_Invariant(Refinement(QtdMax_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(QtdMax_r))==(btrue);
  Seen_Context_List_Properties(Refinement(QtdMax_r))==(btrue);
  Seen_List_Constraints(Refinement(QtdMax_r))==(btrue);
  Seen_List_Operations(Refinement(QtdMax_r),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Refinement(QtdMax_r),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(QtdMax_r),init)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(QtdMax_r)) == (? | ? | ini_r,qtd_max_r | ? | init | ? | seen(Machine(TiposComuns)) | ? | QtdMax_r);
  List_Of_HiddenCst_Ids(Refinement(QtdMax_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(QtdMax_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(QtdMax_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(QtdMax_r)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,TIPOS,STATUS_VAGA,CORES,SIM_NAO,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(QtdMax_r)) == (Type(ini_r) == Mvl(btype(BOOL,?,?));Type(qtd_max_r) == Mvl(SetOf(btype(INTEGER,1,3)*btype(INTEGER,0,MAXINT))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(QtdMax_r)) == (Type(init) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
