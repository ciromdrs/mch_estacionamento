Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(EstacionamentoR1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(EstacionamentoR1))==(Machine(Estacionamento));
  Level(Refinement(EstacionamentoR1))==(1);
  Upper_Level(Refinement(EstacionamentoR1))==(Machine(Estacionamento))
END
&
THEORY LoadedStructureX IS
  Refinement(EstacionamentoR1)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(EstacionamentoR1))==(?);
  List_Includes(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(EstacionamentoR1))==(?);
  Context_List_Variables(Refinement(EstacionamentoR1))==(?);
  Abstract_List_Variables(Refinement(EstacionamentoR1))==(tipo,status);
  Local_List_Variables(Refinement(EstacionamentoR1))==(ativo,tipo,status);
  List_Variables(Refinement(EstacionamentoR1))==(ativo,tipo,status);
  External_List_Variables(Refinement(EstacionamentoR1))==(ativo,tipo,status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(EstacionamentoR1))==(?);
  Abstract_List_VisibleVariables(Refinement(EstacionamentoR1))==(?);
  External_List_VisibleVariables(Refinement(EstacionamentoR1))==(?);
  Expanded_List_VisibleVariables(Refinement(EstacionamentoR1))==(?);
  List_VisibleVariables(Refinement(EstacionamentoR1))==(?);
  Internal_List_VisibleVariables(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(EstacionamentoR1))==(ativo)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(EstacionamentoR1))==(btrue);
  Expanded_List_Invariant(Refinement(EstacionamentoR1))==(btrue);
  Abstract_List_Invariant(Refinement(EstacionamentoR1))==(status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Refinement(EstacionamentoR1))==(btrue);
  List_Invariant(Refinement(EstacionamentoR1))==(ativo <: VAGA & ativo = dom(tipo) & ativo = dom(status))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(EstacionamentoR1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(EstacionamentoR1))==(btrue);
  Abstract_List_Assertions(Refinement(EstacionamentoR1))==(btrue);
  Context_List_Assertions(Refinement(EstacionamentoR1))==(btrue);
  List_Assertions(Refinement(EstacionamentoR1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(EstacionamentoR1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(EstacionamentoR1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(EstacionamentoR1))==(status:={};tipo:={};ativo:={});
  Context_List_Initialisation(Refinement(EstacionamentoR1))==(skip);
  List_Initialisation(Refinement(EstacionamentoR1))==(status:={};tipo:={};ativo:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(EstacionamentoR1))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar);
  List_Operations(Refinement(EstacionamentoR1))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar)
END
&
THEORY ListInputX IS
  List_Input(Refinement(EstacionamentoR1),criar)==(tt);
  List_Input(Refinement(EstacionamentoR1),excluir)==(vv);
  List_Input(Refinement(EstacionamentoR1),ocupar)==(vv);
  List_Input(Refinement(EstacionamentoR1),liberar)==(vv);
  List_Input(Refinement(EstacionamentoR1),get_cor_lampada)==(vv);
  List_Input(Refinement(EstacionamentoR1),get_tipo_vaga)==(vv);
  List_Input(Refinement(EstacionamentoR1),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(EstacionamentoR1),criar)==(?);
  List_Output(Refinement(EstacionamentoR1),excluir)==(?);
  List_Output(Refinement(EstacionamentoR1),ocupar)==(?);
  List_Output(Refinement(EstacionamentoR1),liberar)==(?);
  List_Output(Refinement(EstacionamentoR1),get_cor_lampada)==(cc);
  List_Output(Refinement(EstacionamentoR1),get_tipo_vaga)==(tt);
  List_Output(Refinement(EstacionamentoR1),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(EstacionamentoR1),criar)==(criar(tt));
  List_Header(Refinement(EstacionamentoR1),excluir)==(excluir(vv));
  List_Header(Refinement(EstacionamentoR1),ocupar)==(ocupar(vv));
  List_Header(Refinement(EstacionamentoR1),liberar)==(liberar(vv));
  List_Header(Refinement(EstacionamentoR1),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Refinement(EstacionamentoR1),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Refinement(EstacionamentoR1),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(EstacionamentoR1),criar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR1),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Refinement(EstacionamentoR1),excluir)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR1),excluir)==(vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(EstacionamentoR1),ocupar)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR1),ocupar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(EstacionamentoR1),liberar)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR1),liberar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Refinement(EstacionamentoR1),get_cor_lampada)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR1),get_cor_lampada)==(vv: ativo & vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Refinement(EstacionamentoR1),get_tipo_vaga)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR1),get_tipo_vaga)==(vv: ativo & vv: VAGA & vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Refinement(EstacionamentoR1),indicar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR1),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(EstacionamentoR1),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) & uu: ativo ==> vv:=uu));
  Expanded_List_Substitution(Refinement(EstacionamentoR1),get_tipo_vaga)==(vv: ativo & vv: VAGA & vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Refinement(EstacionamentoR1),get_cor_lampada)==(vv: ativo & vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES | status(vv) = livre ==> (not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) ==> cc:=verde) [] not(status(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Refinement(EstacionamentoR1),liberar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Refinement(EstacionamentoR1),ocupar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Refinement(EstacionamentoR1),excluir)==(vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | ativo:=ativo-{vv};tipo:={vv}<<|tipo;status:={vv}<<|status);
  Expanded_List_Substitution(Refinement(EstacionamentoR1),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @vv.(vv: VAGA & vv/:ativo ==> (ativo:=ativo\/{vv};tipo:=tipo<+{vv|->tt};status:=status<+{vv|->livre})));
  List_Substitution(Refinement(EstacionamentoR1),criar)==(ANY vv WHERE vv: VAGA & vv/:ativo THEN ativo:=ativo\/{vv};tipo(vv):=tt;status(vv):=livre END);
  List_Substitution(Refinement(EstacionamentoR1),excluir)==(ativo:=ativo-{vv};tipo:={vv}<<|tipo;status:={vv}<<|status);
  List_Substitution(Refinement(EstacionamentoR1),ocupar)==(status(vv):=ocupada);
  List_Substitution(Refinement(EstacionamentoR1),liberar)==(status(vv):=livre);
  List_Substitution(Refinement(EstacionamentoR1),get_cor_lampada)==(IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Refinement(EstacionamentoR1),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Refinement(EstacionamentoR1),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) & uu: ativo THEN vv:=uu END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(EstacionamentoR1))==(btrue);
  List_Context_Constraints(Refinement(EstacionamentoR1))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(EstacionamentoR1))==(MAX_INT,MAX);
  Inherited_List_Constants(Refinement(EstacionamentoR1))==(MAX_INT,MAX);
  List_Constants(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(EstacionamentoR1),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Refinement(EstacionamentoR1))==(?);
  Context_List_Defered(Refinement(EstacionamentoR1))==(?);
  Context_List_Sets(Refinement(EstacionamentoR1))==(?);
  List_Valuable_Sets(Refinement(EstacionamentoR1))==(VAGA);
  Inherited_List_Enumerated(Refinement(EstacionamentoR1))==(TIPOS,STATUS,CORES);
  Inherited_List_Defered(Refinement(EstacionamentoR1))==(VAGA);
  Inherited_List_Sets(Refinement(EstacionamentoR1))==(VAGA,TIPOS,STATUS,CORES);
  List_Enumerated(Refinement(EstacionamentoR1))==(?);
  List_Defered(Refinement(EstacionamentoR1))==(?);
  List_Sets(Refinement(EstacionamentoR1))==(?);
  Set_Definition(Refinement(EstacionamentoR1),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Refinement(EstacionamentoR1),TIPOS)==({idoso,deficiente,comum,T_NULL});
  Set_Definition(Refinement(EstacionamentoR1),VAGA)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(EstacionamentoR1))==(?);
  Expanded_List_HiddenConstants(Refinement(EstacionamentoR1))==(?);
  List_HiddenConstants(Refinement(EstacionamentoR1))==(?);
  External_List_HiddenConstants(Refinement(EstacionamentoR1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(EstacionamentoR1))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & VAGA: FIN(INTEGER) & not(VAGA = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Context_List_Properties(Refinement(EstacionamentoR1))==(btrue);
  Inherited_List_Properties(Refinement(EstacionamentoR1))==(btrue);
  List_Properties(Refinement(EstacionamentoR1))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(EstacionamentoR1),criar)==(Var(vv) == atype(VAGA,?,?));
  List_ANY_Var(Refinement(EstacionamentoR1),excluir)==(?);
  List_ANY_Var(Refinement(EstacionamentoR1),ocupar)==(?);
  List_ANY_Var(Refinement(EstacionamentoR1),liberar)==(?);
  List_ANY_Var(Refinement(EstacionamentoR1),get_cor_lampada)==(?);
  List_ANY_Var(Refinement(EstacionamentoR1),get_tipo_vaga)==(?);
  List_ANY_Var(Refinement(EstacionamentoR1),indicar)==(Var(uu) == atype(VAGA,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(EstacionamentoR1)) == (? | ? | ativo,tipo,status | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar | ? | ? | ? | EstacionamentoR1);
  List_Of_HiddenCst_Ids(Refinement(EstacionamentoR1)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(EstacionamentoR1)) == (?);
  List_Of_VisibleVar_Ids(Refinement(EstacionamentoR1)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(EstacionamentoR1)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(EstacionamentoR1)) == (Type(CORES) == Cst(SetOf(etype(CORES,0,3)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,2)));Type(TIPOS) == Cst(SetOf(etype(TIPOS,0,3)));Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(EstacionamentoR1)) == (Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?)));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(vermelha) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(azul) == Cst(etype(CORES,0,3));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(livre) == Cst(etype(STATUS,0,2));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(idoso) == Cst(etype(TIPOS,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(EstacionamentoR1)) == (Type(ativo) == Mvl(SetOf(atype(VAGA,?,?)));Type(tipo) == Mvl(SetOf(atype(VAGA,?,?)*etype(TIPOS,?,?)));Type(status) == Mvl(SetOf(atype(VAGA,?,?)*etype(STATUS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(EstacionamentoR1)) == (Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(excluir) == Cst(No_type,atype(VAGA,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)))
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
