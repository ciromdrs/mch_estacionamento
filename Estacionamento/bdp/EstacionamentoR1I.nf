Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(EstacionamentoR1I))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(EstacionamentoR1I))==(Machine(Estacionamento));
  Level(Implementation(EstacionamentoR1I))==(2);
  Upper_Level(Implementation(EstacionamentoR1I))==(Refinement(EstacionamentoR1))
END
&
THEORY LoadedStructureX IS
  Implementation(EstacionamentoR1I)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(EstacionamentoR1I))==(?);
  Inherited_List_Includes(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(EstacionamentoR1I))==(?);
  Context_List_Variables(Implementation(EstacionamentoR1I))==(?);
  Abstract_List_Variables(Implementation(EstacionamentoR1I))==(ativo,tipo,status,tipo,status,lim,preco,hora,chegada,pagos);
  Local_List_Variables(Implementation(EstacionamentoR1I))==(?);
  List_Variables(Implementation(EstacionamentoR1I))==(?);
  External_List_Variables(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(EstacionamentoR1I))==(?);
  Abstract_List_VisibleVariables(Implementation(EstacionamentoR1I))==(?);
  External_List_VisibleVariables(Implementation(EstacionamentoR1I))==(?);
  Expanded_List_VisibleVariables(Implementation(EstacionamentoR1I))==(?);
  List_VisibleVariables(Implementation(EstacionamentoR1I))==(ativoI,tipoI,statusI);
  Internal_List_VisibleVariables(Implementation(EstacionamentoR1I))==(ativoI,tipoI,statusI)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(EstacionamentoR1I))==(btrue);
  Expanded_List_Invariant(Implementation(EstacionamentoR1I))==(btrue);
  Abstract_List_Invariant(Implementation(EstacionamentoR1I))==(ativo <: VAGA & ativo = dom(tipo) & ativo = dom(status) & hora: NAT & preco: NAT & lim: NAT & status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & chegada: TICKET +-> NAT & pagos <: dom(chegada) & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Implementation(EstacionamentoR1I))==(btrue);
  List_Invariant(Implementation(EstacionamentoR1I))==(statusI: 1..MAX_INT --> STATUS & tipoI: 1..MAX_INT --> TIPOS & ativoI: 1..MAX_INT --> BOOL & !ii.(ii: ativo & ativo = dom(status) & ativo = dom(tipo) => statusI(ii) = status(ii) & tipoI(ii) = tipo(ii) & ativoI(ii) = TRUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(EstacionamentoR1I))==(btrue);
  Abstract_List_Assertions(Implementation(EstacionamentoR1I))==(btrue);
  Context_List_Assertions(Implementation(EstacionamentoR1I))==(btrue);
  List_Assertions(Implementation(EstacionamentoR1I))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(EstacionamentoR1I))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(EstacionamentoR1I))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(EstacionamentoR1I))==(@ii.(ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | ativoI:=ativoI<+{ii|->FALSE});(ii: dom(statusI) | statusI:=statusI<+{ii|->S_NULL});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->T_NULL}) INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END));
  Context_List_Initialisation(Implementation(EstacionamentoR1I))==(skip);
  List_Initialisation(Implementation(EstacionamentoR1I))==(VAR ii IN ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;ativoI(ii):=FALSE;statusI(ii):=S_NULL;tipoI(ii):=T_NULL INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END END)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(EstacionamentoR1I))==(btrue);
  List_Context_Constraints(Implementation(EstacionamentoR1I))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(EstacionamentoR1I))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar);
  List_Operations(Implementation(EstacionamentoR1I))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar)
END
&
THEORY ListInputX IS
  List_Input(Implementation(EstacionamentoR1I),criar)==(tt);
  List_Input(Implementation(EstacionamentoR1I),excluir)==(vv);
  List_Input(Implementation(EstacionamentoR1I),ocupar)==(vv);
  List_Input(Implementation(EstacionamentoR1I),liberar)==(vv);
  List_Input(Implementation(EstacionamentoR1I),get_cor_lampada)==(vv);
  List_Input(Implementation(EstacionamentoR1I),get_tipo_vaga)==(vv);
  List_Input(Implementation(EstacionamentoR1I),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(EstacionamentoR1I),criar)==(?);
  List_Output(Implementation(EstacionamentoR1I),excluir)==(?);
  List_Output(Implementation(EstacionamentoR1I),ocupar)==(?);
  List_Output(Implementation(EstacionamentoR1I),liberar)==(?);
  List_Output(Implementation(EstacionamentoR1I),get_cor_lampada)==(cc);
  List_Output(Implementation(EstacionamentoR1I),get_tipo_vaga)==(tt);
  List_Output(Implementation(EstacionamentoR1I),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(EstacionamentoR1I),criar)==(criar(tt));
  List_Header(Implementation(EstacionamentoR1I),excluir)==(excluir(vv));
  List_Header(Implementation(EstacionamentoR1I),ocupar)==(ocupar(vv));
  List_Header(Implementation(EstacionamentoR1I),liberar)==(liberar(vv));
  List_Header(Implementation(EstacionamentoR1I),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Implementation(EstacionamentoR1I),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Implementation(EstacionamentoR1I),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(EstacionamentoR1I),criar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Implementation(EstacionamentoR1I),excluir)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),excluir)==(vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoR1I),ocupar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),ocupar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoR1I),liberar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),liberar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Implementation(EstacionamentoR1I),get_cor_lampada)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),get_cor_lampada)==(vv: ativo & vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Implementation(EstacionamentoR1I),get_tipo_vaga)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),get_tipo_vaga)==(vv: ativo & vv: VAGA & vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Implementation(EstacionamentoR1I),indicar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | (0: INT | vv:=0);@(ii,aa,ss,uu,continuar).(uu:=T_NULL;ss:=S_NULL;aa:=TRUE;continuar:=TRUE;ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | aa:=ativoI(ii));(ii: dom(statusI) | ss:=statusI(ii));(ii: dom(tipoI) | uu:=tipoI(ii));(aa = TRUE & ss = livre & uu = tt ==> continuar:=FALSE [] not(aa = TRUE & ss = livre & uu = tt) ==> skip) INVARIANT !jj.(jj: 1..ii => not(aa = TRUE & ss = livre & uu = tt)) VARIANT MAX_INT-ii END;(ii: INT | vv:=ii)));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),get_tipo_vaga)==(vv: ativo & vv: VAGA & vv: dom(tipo) & tt: TIPOS | @ii.(ii:=vv;(ii: dom(tipoI) | tt:=tipoI(ii))));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),get_cor_lampada)==(vv: ativo & vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES | @(ss,tt,ii).(ii:=vv;(ii: dom(statusI) | ss:=statusI(ii));(ii: dom(tipoI) | tt:=tipoI(ii));(ss = livre ==> (not(tt = deficiente) & tt = idoso ==> cc:=azul [] not(tt = idoso) & tt = deficiente ==> cc:=amarela [] not(tt = idoso) & not(tt = deficiente) ==> cc:=verde) [] not(ss = livre) ==> cc:=vermelha)));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),liberar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = ocupada | @ii.(ii:=vv;(ii: dom(statusI) | statusI:=statusI<+{ii|->livre})));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),ocupar)==(vv: ativo & vv: VAGA & vv: dom(status) & status(vv) = livre | @ii.(ii:=vv;(ii: dom(statusI) | statusI:=statusI<+{ii|->ocupada})));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),excluir)==(vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | @ii.(ii:=vv;(ii: dom(ativoI) | ativoI:=ativoI<+{ii|->FALSE})));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @(ii,aa,continuar).(aa:=TRUE;ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | aa:=ativoI(ii));(aa = FALSE ==> continuar:=FALSE [] not(aa = FALSE) ==> skip) INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END;(ii: dom(ativoI) | ativoI:=ativoI<+{ii|->TRUE});(ii: dom(statusI) | statusI:=statusI<+{ii|->livre});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->tt})));
  List_Substitution(Implementation(EstacionamentoR1I),criar)==(VAR ii,aa,continuar IN aa:=TRUE;ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO ii:=ii+1;aa:=ativoI(ii);IF aa = FALSE THEN continuar:=FALSE END INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END;ativoI(ii):=TRUE;statusI(ii):=livre;tipoI(ii):=tt END);
  List_Substitution(Implementation(EstacionamentoR1I),excluir)==(VAR ii IN ii:=vv;ativoI(ii):=FALSE END);
  List_Substitution(Implementation(EstacionamentoR1I),ocupar)==(VAR ii IN ii:=vv;statusI(ii):=ocupada END);
  List_Substitution(Implementation(EstacionamentoR1I),liberar)==(VAR ii IN ii:=vv;statusI(ii):=livre END);
  List_Substitution(Implementation(EstacionamentoR1I),get_cor_lampada)==(VAR ss,tt,ii IN ii:=vv;ss:=statusI(ii);tt:=tipoI(ii);IF ss = livre THEN CASE tt OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END END);
  List_Substitution(Implementation(EstacionamentoR1I),get_tipo_vaga)==(VAR ii IN ii:=vv;tt:=tipoI(ii) END);
  List_Substitution(Implementation(EstacionamentoR1I),indicar)==(vv:=0;VAR ii,aa,ss,uu,continuar IN uu:=T_NULL;ss:=S_NULL;aa:=TRUE;continuar:=TRUE;ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;aa:=ativoI(ii);ss:=statusI(ii);uu:=tipoI(ii);IF aa = TRUE & ss = livre & uu = tt THEN continuar:=FALSE END INVARIANT !jj.(jj: 1..ii => not(aa = TRUE & ss = livre & uu = tt)) VARIANT MAX_INT-ii END;vv:=ii END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(EstacionamentoR1I))==(MAX_INT,MAX);
  Inherited_List_Constants(Implementation(EstacionamentoR1I))==(MAX_INT,MAX);
  List_Constants(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(EstacionamentoR1I),TICKET)==(?);
  Context_List_Enumerated(Implementation(EstacionamentoR1I))==(?);
  Context_List_Defered(Implementation(EstacionamentoR1I))==(?);
  Context_List_Sets(Implementation(EstacionamentoR1I))==(?);
  List_Own_Enumerated(Implementation(EstacionamentoR1I))==(TIPOS,STATUS,CORES);
  List_Valuable_Sets(Implementation(EstacionamentoR1I))==(VAGA,TICKET);
  Inherited_List_Enumerated(Implementation(EstacionamentoR1I))==(TIPOS,STATUS,CORES);
  Inherited_List_Defered(Implementation(EstacionamentoR1I))==(VAGA,TICKET);
  Inherited_List_Sets(Implementation(EstacionamentoR1I))==(VAGA,TIPOS,STATUS,CORES,TICKET);
  List_Enumerated(Implementation(EstacionamentoR1I))==(?);
  List_Defered(Implementation(EstacionamentoR1I))==(?);
  List_Sets(Implementation(EstacionamentoR1I))==(?);
  Set_Definition(Implementation(EstacionamentoR1I),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Implementation(EstacionamentoR1I),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Implementation(EstacionamentoR1I),TIPOS)==({idoso,deficiente,comum,T_NULL});
  Set_Definition(Implementation(EstacionamentoR1I),VAGA)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(EstacionamentoR1I))==(?);
  Expanded_List_HiddenConstants(Implementation(EstacionamentoR1I))==(?);
  List_HiddenConstants(Implementation(EstacionamentoR1I))==(?);
  External_List_HiddenConstants(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(EstacionamentoR1I))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & VAGA: FIN(INTEGER) & not(VAGA = {}) & TICKET: FIN(INTEGER) & not(TICKET = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Context_List_Properties(Implementation(EstacionamentoR1I))==(btrue);
  Inherited_List_Properties(Implementation(EstacionamentoR1I))==(btrue);
  List_Properties(Implementation(EstacionamentoR1I))==(btrue)
END
&
THEORY ListValuesX IS
  Constants_not_Valued(Implementation(EstacionamentoR1I))==(MAX);
  Sets_not_Valued(Implementation(EstacionamentoR1I))==(TICKET);
  Precond_Valued_Objects(Implementation(EstacionamentoR1I))==(btrue);
  Values_Subs(Implementation(EstacionamentoR1I))==(MAX_INT,VAGA: 1000,1..1000);
  List_Values(Implementation(EstacionamentoR1I))==(MAX_INT = 1000;VAGA = 1..1000)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(EstacionamentoR1I))==(Type(statusI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(STATUS,0,2)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(TIPOS,0,3)));Type(ativoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1))));
  Operations(Implementation(EstacionamentoR1I))==(Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(excluir) == Cst(No_type,atype(VAGA,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)));
  Constants(Implementation(EstacionamentoR1I))==(Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?)));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(vermelha) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(azul) == Cst(etype(CORES,0,3));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(livre) == Cst(etype(STATUS,0,2));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(idoso) == Cst(etype(TIPOS,0,3)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(EstacionamentoR1I)) == (? | ? | ? | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar | ? | ? | ? | EstacionamentoR1I);
  List_Of_HiddenCst_Ids(Implementation(EstacionamentoR1I)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(EstacionamentoR1I)) == (?);
  List_Of_VisibleVar_Ids(Implementation(EstacionamentoR1I)) == (ativoI,tipoI,statusI | ?);
  List_Of_Ids_SeenBNU(Implementation(EstacionamentoR1I)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(EstacionamentoR1I)) == (Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA")));Type(TIPOS) == Cst(SetOf(etype(TIPOS,0,3)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,2)));Type(CORES) == Cst(SetOf(etype(CORES,0,3)));Type(TICKET) == Cst(SetOf(atype(TICKET,"[TICKET","]TICKET"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(EstacionamentoR1I)) == (Type(idoso) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(livre) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(EstacionamentoR1I)) == (Type(ativoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(TIPOS,0,3)));Type(statusI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(STATUS,0,2))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(EstacionamentoR1I),?, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),criar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),excluir, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),ocupar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),liberar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),get_cor_lampada, 1) == (Type(ss) == Lvl(etype(STATUS,?,?));Type(tt) == Lvl(etype(TIPOS,?,?));Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),get_tipo_vaga, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),indicar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(ss) == Lvl(etype(STATUS,?,?));Type(uu) == Lvl(etype(TIPOS,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(EstacionamentoR1I))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(EstacionamentoR1I))==(statusI: POW(INTEGER*STATUS) & tipoI: POW(INTEGER*TIPOS) & ativoI: POW(INTEGER*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
