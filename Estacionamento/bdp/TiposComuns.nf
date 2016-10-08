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
  List_Valuable_Constants(Machine(TiposComuns))==(MAX_INT);
  Inherited_List_Constants(Machine(TiposComuns))==(?);
  List_Constants(Machine(TiposComuns))==(MAX_INT)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(TiposComuns),VAGAS)==(?);
  Context_List_Enumerated(Machine(TiposComuns))==(?);
  Context_List_Defered(Machine(TiposComuns))==(?);
  Context_List_Sets(Machine(TiposComuns))==(?);
  List_Valuable_Sets(Machine(TiposComuns))==(VAGAS);
  Inherited_List_Enumerated(Machine(TiposComuns))==(?);
  Inherited_List_Defered(Machine(TiposComuns))==(?);
  Inherited_List_Sets(Machine(TiposComuns))==(?);
  List_Enumerated(Machine(TiposComuns))==(TIPOS,STATUS_VAGA,CORES);
  List_Defered(Machine(TiposComuns))==(VAGAS);
  List_Sets(Machine(TiposComuns))==(VAGAS,TIPOS,STATUS_VAGA,CORES);
  Set_Definition(Machine(TiposComuns),TIPOS)==({idoso,deficiente,comum});
  Set_Definition(Machine(TiposComuns),STATUS_VAGA)==({livre,ocupada});
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
  List_Properties(Machine(TiposComuns))==(MAX_INT: NAT1 & MAX_INT = 1000000 & VAGAS: FIN(INTEGER) & not(VAGAS = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(TiposComuns)) == (Type(VAGAS) == Cst(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")));Type(TIPOS) == Cst(SetOf(etype(TIPOS,0,2)));Type(STATUS_VAGA) == Cst(SetOf(etype(STATUS_VAGA,0,1)));Type(CORES) == Cst(SetOf(etype(CORES,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(TiposComuns)) == (Type(idoso) == Cst(etype(TIPOS,0,2));Type(deficiente) == Cst(etype(TIPOS,0,2));Type(comum) == Cst(etype(TIPOS,0,2));Type(livre) == Cst(etype(STATUS_VAGA,0,1));Type(ocupada) == Cst(etype(STATUS_VAGA,0,1));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?)))
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
