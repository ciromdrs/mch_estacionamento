Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(TiposComuns))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(TiposComuns))==(Machine(TiposComuns));
  Level(Machine(TiposComuns))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(TiposComuns)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(TiposComuns))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(TiposComuns))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(TiposComuns))==(?);
  List_Includes(Machine(TiposComuns))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(TiposComuns))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(TiposComuns))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(TiposComuns))==(?);
  Context_List_Variables(Machine(TiposComuns))==(?);
  Abstract_List_Variables(Machine(TiposComuns))==(?);
  Local_List_Variables(Machine(TiposComuns))==(?);
  List_Variables(Machine(TiposComuns))==(?);
  External_List_Variables(Machine(TiposComuns))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(TiposComuns))==(?);
  Abstract_List_VisibleVariables(Machine(TiposComuns))==(?);
  External_List_VisibleVariables(Machine(TiposComuns))==(?);
  Expanded_List_VisibleVariables(Machine(TiposComuns))==(?);
  List_VisibleVariables(Machine(TiposComuns))==(?);
  Internal_List_VisibleVariables(Machine(TiposComuns))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(TiposComuns))==(btrue);
  Gluing_List_Invariant(Machine(TiposComuns))==(btrue);
  Expanded_List_Invariant(Machine(TiposComuns))==(btrue);
  Abstract_List_Invariant(Machine(TiposComuns))==(btrue);
  Context_List_Invariant(Machine(TiposComuns))==(btrue);
  List_Invariant(Machine(TiposComuns))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(TiposComuns))==(btrue);
  Abstract_List_Assertions(Machine(TiposComuns))==(btrue);
  Context_List_Assertions(Machine(TiposComuns))==(btrue);
  List_Assertions(Machine(TiposComuns))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(TiposComuns))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(TiposComuns))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(TiposComuns))==(skip);
  Context_List_Initialisation(Machine(TiposComuns))==(skip);
  List_Initialisation(Machine(TiposComuns))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(TiposComuns))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(TiposComuns))==(btrue);
  List_Constraints(Machine(TiposComuns))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(TiposComuns))==(?);
  List_Operations(Machine(TiposComuns))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(TiposComuns))==(MAX_INT,MAX);
  Inherited_List_Constants(Machine(TiposComuns))==(?);
  List_Constants(Machine(TiposComuns))==(MAX_INT,MAX)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(TiposComuns),TIPOS)==({idoso,deficiente,comum,T_NULL});
  Context_List_Enumerated(Machine(TiposComuns))==(?);
  Context_List_Defered(Machine(TiposComuns))==(?);
  Context_List_Sets(Machine(TiposComuns))==(?);
  List_Valuable_Sets(Machine(TiposComuns))==(?);
  Inherited_List_Enumerated(Machine(TiposComuns))==(?);
  Inherited_List_Defered(Machine(TiposComuns))==(?);
  Inherited_List_Sets(Machine(TiposComuns))==(?);
  List_Enumerated(Machine(TiposComuns))==(TIPOS,STATUS,CORES);
  List_Defered(Machine(TiposComuns))==(?);
  List_Sets(Machine(TiposComuns))==(TIPOS,STATUS,CORES);
  Set_Definition(Machine(TiposComuns),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Machine(TiposComuns),CORES)==({azul,amarela,verde,vermelha})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(TiposComuns))==(?);
  Expanded_List_HiddenConstants(Machine(TiposComuns))==(?);
  List_HiddenConstants(Machine(TiposComuns))==(?);
  External_List_HiddenConstants(Machine(TiposComuns))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(TiposComuns))==(btrue);
  Context_List_Properties(Machine(TiposComuns))==(btrue);
  Inherited_List_Properties(Machine(TiposComuns))==(btrue);
  List_Properties(Machine(TiposComuns))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(TiposComuns)) == (Type(TIPOS) == Cst(SetOf(etype(TIPOS,0,3)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,2)));Type(CORES) == Cst(SetOf(etype(CORES,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(TiposComuns)) == (Type(idoso) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(livre) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?))))
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
