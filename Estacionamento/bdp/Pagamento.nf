Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Pagamento))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Pagamento))==(Machine(Pagamento));
  Level(Machine(Pagamento))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Pagamento)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Pagamento))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Pagamento))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Pagamento))==(?);
  List_Includes(Machine(Pagamento))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Pagamento))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Pagamento))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Pagamento))==(?);
  Context_List_Variables(Machine(Pagamento))==(?);
  Abstract_List_Variables(Machine(Pagamento))==(?);
  Local_List_Variables(Machine(Pagamento))==(?);
  List_Variables(Machine(Pagamento))==(?);
  External_List_Variables(Machine(Pagamento))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Pagamento))==(?);
  Abstract_List_VisibleVariables(Machine(Pagamento))==(?);
  External_List_VisibleVariables(Machine(Pagamento))==(?);
  Expanded_List_VisibleVariables(Machine(Pagamento))==(?);
  List_VisibleVariables(Machine(Pagamento))==(?);
  Internal_List_VisibleVariables(Machine(Pagamento))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Pagamento))==(btrue);
  Gluing_List_Invariant(Machine(Pagamento))==(btrue);
  Expanded_List_Invariant(Machine(Pagamento))==(btrue);
  Abstract_List_Invariant(Machine(Pagamento))==(btrue);
  Context_List_Invariant(Machine(Pagamento))==(btrue);
  List_Invariant(Machine(Pagamento))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Pagamento))==(btrue);
  Abstract_List_Assertions(Machine(Pagamento))==(btrue);
  Context_List_Assertions(Machine(Pagamento))==(btrue);
  List_Assertions(Machine(Pagamento))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Pagamento))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Pagamento))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Pagamento))==(skip);
  Context_List_Initialisation(Machine(Pagamento))==(skip);
  List_Initialisation(Machine(Pagamento))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Pagamento))==(preco,lim)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Pagamento))==(btrue);
  List_Constraints(Machine(Pagamento))==(preco: NAT & lim: NAT)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Pagamento))==(calcular_preco);
  List_Operations(Machine(Pagamento))==(calcular_preco)
END
&
THEORY ListInputX IS
  List_Input(Machine(Pagamento),calcular_preco)==(ini,fim)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Pagamento),calcular_preco)==(pp)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Pagamento),calcular_preco)==(pp <-- calcular_preco(ini,fim))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Pagamento),calcular_preco)==(pp: NAT & ini: NAT & fim: NAT & fim>=ini)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Pagamento),calcular_preco)==(pp: NAT & ini: NAT & fim: NAT & fim>=ini | fim-ini>lim ==> pp:=fim-ini*preco [] not(fim-ini>lim) ==> pp:=0);
  List_Substitution(Machine(Pagamento),calcular_preco)==(IF fim-ini>lim THEN pp:=fim-ini*preco ELSE pp:=0 END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Pagamento))==(?);
  Inherited_List_Constants(Machine(Pagamento))==(?);
  List_Constants(Machine(Pagamento))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Pagamento))==(?);
  Context_List_Defered(Machine(Pagamento))==(?);
  Context_List_Sets(Machine(Pagamento))==(?);
  List_Valuable_Sets(Machine(Pagamento))==(?);
  Inherited_List_Enumerated(Machine(Pagamento))==(?);
  Inherited_List_Defered(Machine(Pagamento))==(?);
  Inherited_List_Sets(Machine(Pagamento))==(?);
  List_Enumerated(Machine(Pagamento))==(?);
  List_Defered(Machine(Pagamento))==(?);
  List_Sets(Machine(Pagamento))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Pagamento))==(?);
  Expanded_List_HiddenConstants(Machine(Pagamento))==(?);
  List_HiddenConstants(Machine(Pagamento))==(?);
  External_List_HiddenConstants(Machine(Pagamento))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Pagamento))==(btrue);
  Context_List_Properties(Machine(Pagamento))==(btrue);
  Inherited_List_Properties(Machine(Pagamento))==(btrue);
  List_Properties(Machine(Pagamento))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Pagamento),calcular_preco)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Pagamento)) == (? | ? | ? | ? | calcular_preco | ? | ? | preco,lim | Pagamento);
  List_Of_HiddenCst_Ids(Machine(Pagamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Pagamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Pagamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Pagamento)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Pagamento)) == (Type(lim) == Prm(btype(INTEGER,?,?));Type(preco) == Prm(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Pagamento)) == (Type(calcular_preco) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Pagamento)) == (Type(calcular_preco) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
