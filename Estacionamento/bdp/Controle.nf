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
  Inherited_List_Includes(Machine(Controle))==(Pagamento);
  List_Includes(Machine(Controle))==(Pagamento)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Controle))==(calcular_preco)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Controle))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Controle))==(?);
  Context_List_Variables(Machine(Controle))==(?);
  Abstract_List_Variables(Machine(Controle))==(?);
  Local_List_Variables(Machine(Controle))==(hora,chegada);
  List_Variables(Machine(Controle))==(hora,chegada);
  External_List_Variables(Machine(Controle))==(hora,chegada)
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
  Expanded_List_Invariant(Machine(Controle))==(btrue);
  Context_List_Invariant(Machine(Controle))==(btrue);
  List_Invariant(Machine(Controle))==(hora: NAT & chegada: TICKET --> NAT)
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
  Expanded_List_Initialisation(Machine(Controle))==(hora,chegada:=0,TICKET*{0});
  Context_List_Initialisation(Machine(Controle))==(skip);
  List_Initialisation(Machine(Controle))==(hora:=0 || chegada:=TICKET*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Controle))==(preco_minuto,lim_gratuito)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Controle),Machine(Pagamento))==(preco_minuto,lim_gratuito)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Controle),Machine(Pagamento))==(preco_minuto: NAT & lim_gratuito: NAT);
  List_Context_Constraints(Machine(Controle))==(btrue);
  List_Constraints(Machine(Controle))==(preco_minuto: NAT & lim_gratuito: NAT)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Controle))==(adiantar,pegar_ticket,calcular_preco);
  List_Operations(Machine(Controle))==(adiantar,pegar_ticket,calcular_preco)
END
&
THEORY ListInputX IS
  List_Input(Machine(Controle),calcular_preco)==(ini,fim);
  List_Input(Machine(Controle),adiantar)==(mm);
  List_Input(Machine(Controle),pegar_ticket)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Controle),calcular_preco)==(pp);
  List_Output(Machine(Controle),adiantar)==(?);
  List_Output(Machine(Controle),pegar_ticket)==(tt)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Controle),calcular_preco)==(pp <-- calcular_preco(ini,fim));
  List_Header(Machine(Controle),adiantar)==(adiantar(mm));
  List_Header(Machine(Controle),pegar_ticket)==(tt <-- pegar_ticket)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Controle),calcular_preco)==(pp: NAT & ini: NAT & fim: NAT & fim>=ini);
  List_Precondition(Machine(Controle),calcular_preco)==(pp: NAT & ini: NAT & fim: NAT & fim>=ini);
  List_Precondition(Machine(Controle),adiantar)==(mm: NAT1);
  List_Precondition(Machine(Controle),pegar_ticket)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Controle),pegar_ticket)==(btrue | @uu.(uu: TICKET & uu/:dom(chegada) ==> tt:=uu));
  Expanded_List_Substitution(Machine(Controle),adiantar)==(mm: NAT1 | hora:=hora+mm);
  List_Substitution(Machine(Controle),calcular_preco)==(IF fim-ini>lim_gratuito THEN pp:=fim-ini*preco_minuto ELSE pp:=0 END);
  Expanded_List_Substitution(Machine(Controle),calcular_preco)==(pp: NAT & ini: NAT & fim: NAT & fim>=ini | fim-ini>lim_gratuito ==> pp:=fim-ini*preco_minuto [] not(fim-ini>lim_gratuito) ==> pp:=0);
  List_Substitution(Machine(Controle),adiantar)==(hora:=hora+mm);
  List_Substitution(Machine(Controle),pegar_ticket)==(ANY uu WHERE uu: TICKET & uu/:dom(chegada) THEN tt:=uu END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Controle))==(?);
  Inherited_List_Constants(Machine(Controle))==(?);
  List_Constants(Machine(Controle))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Controle),TICKET)==(?);
  Context_List_Enumerated(Machine(Controle))==(?);
  Context_List_Defered(Machine(Controle))==(?);
  Context_List_Sets(Machine(Controle))==(?);
  List_Valuable_Sets(Machine(Controle))==(TICKET);
  Inherited_List_Enumerated(Machine(Controle))==(?);
  Inherited_List_Defered(Machine(Controle))==(?);
  Inherited_List_Sets(Machine(Controle))==(?);
  List_Enumerated(Machine(Controle))==(?);
  List_Defered(Machine(Controle))==(TICKET);
  List_Sets(Machine(Controle))==(TICKET)
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
  Inherited_List_Properties(Machine(Controle))==(btrue);
  List_Properties(Machine(Controle))==(TICKET: FIN(INTEGER) & not(TICKET = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Controle),calcular_preco)==(?);
  List_ANY_Var(Machine(Controle),adiantar)==(?);
  List_ANY_Var(Machine(Controle),pegar_ticket)==(Var(uu) == atype(TICKET,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Controle)) == (TICKET | ? | hora,chegada | V | adiantar,pegar_ticket | calcular_preco | included(Machine(Pagamento)) | preco_minuto,lim_gratuito | Controle);
  List_Of_HiddenCst_Ids(Machine(Controle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Controle)) == (?);
  List_Of_VisibleVar_Ids(Machine(Controle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Controle)) == (?: ?);
  List_Of_Ids(Machine(Pagamento)) == (? | ? | ? | ? | calcular_preco | ? | ? | preco,lim | Pagamento);
  List_Of_HiddenCst_Ids(Machine(Pagamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Pagamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Pagamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Pagamento)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Controle)) == (Type(lim_gratuito) == Prm(btype(INTEGER,?,?));Type(preco_minuto) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Controle)) == (Type(TICKET) == Cst(SetOf(atype(TICKET,"[TICKET","]TICKET"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Controle)) == (Type(hora) == Mvl(btype(INTEGER,?,?));Type(chegada) == Mvl(SetOf(atype(TICKET,"[TICKET","]TICKET")*btype(INTEGER,0,MAXINT))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Controle)) == (Type(calcular_preco) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type);Type(adiantar) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Controle)) == (Type(calcular_preco) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type))
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
