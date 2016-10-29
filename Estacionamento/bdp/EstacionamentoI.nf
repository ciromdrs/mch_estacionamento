Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(EstacionamentoI))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(EstacionamentoI))==(Machine(Estacionamento));
  Level(Implementation(EstacionamentoI))==(2);
  Upper_Level(Implementation(EstacionamentoI))==(Refinement(EstacionamentoR))
END
&
THEORY LoadedStructureX IS
  Implementation(EstacionamentoI)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(EstacionamentoI))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(EstacionamentoI))==(?);
  Inherited_List_Includes(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(EstacionamentoI))==(?);
  Context_List_Variables(Implementation(EstacionamentoI))==(?);
  Abstract_List_Variables(Implementation(EstacionamentoI))==(ativo,status,tipo,tipo,status);
  Local_List_Variables(Implementation(EstacionamentoI))==(?);
  List_Variables(Implementation(EstacionamentoI))==(?);
  External_List_Variables(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(EstacionamentoI))==(?);
  Abstract_List_VisibleVariables(Implementation(EstacionamentoI))==(?);
  External_List_VisibleVariables(Implementation(EstacionamentoI))==(?);
  Expanded_List_VisibleVariables(Implementation(EstacionamentoI))==(?);
  List_VisibleVariables(Implementation(EstacionamentoI))==(ativo,statusI,tipoI);
  Internal_List_VisibleVariables(Implementation(EstacionamentoI))==(ativo,statusI,tipoI)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(EstacionamentoI))==(btrue);
  Expanded_List_Invariant(Implementation(EstacionamentoI))==(btrue);
  Abstract_List_Invariant(Implementation(EstacionamentoI))==(ativo: VAGA --> BOOL & dom(ativo|>{TRUE}) = dom(tipo) & dom(ativo|>{TRUE}) = dom(status) & status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Implementation(EstacionamentoI))==(btrue);
  List_Invariant(Implementation(EstacionamentoI))==(tipoI: VAGA --> TIPOS & statusI: VAGA --> STATUS & dom(dom(ativo|>{TRUE})<|tipoI) = dom(dom(ativo|>{TRUE})<|statusI))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(EstacionamentoI))==(btrue);
  Abstract_List_Assertions(Implementation(EstacionamentoI))==(btrue);
  Context_List_Assertions(Implementation(EstacionamentoI))==(btrue);
  List_Assertions(Implementation(EstacionamentoI))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(EstacionamentoI))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(EstacionamentoI))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(EstacionamentoI))==(tipoI:=VAGA*{T_NULL};statusI:=VAGA*{S_NULL};ativo:=VAGA*{FALSE});
  Context_List_Initialisation(Implementation(EstacionamentoI))==(skip);
  List_Initialisation(Implementation(EstacionamentoI))==(tipoI:=VAGA*{T_NULL};statusI:=VAGA*{S_NULL};ativo:=VAGA*{FALSE})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(EstacionamentoI),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(EstacionamentoI))==(btrue);
  List_Context_Constraints(Implementation(EstacionamentoI))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(EstacionamentoI))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar);
  List_Operations(Implementation(EstacionamentoI))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Implementation(EstacionamentoI),criar)==(tt);
  List_Input(Implementation(EstacionamentoI),excluir)==(vv);
  List_Input(Implementation(EstacionamentoI),ocupar)==(vv);
  List_Input(Implementation(EstacionamentoI),liberar)==(vv);
  List_Input(Implementation(EstacionamentoI),get_cor_lampada)==(vv);
  List_Input(Implementation(EstacionamentoI),get_tipo_vaga)==(vv);
  List_Input(Implementation(EstacionamentoI),get_info_painel)==(?);
  List_Input(Implementation(EstacionamentoI),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(EstacionamentoI),criar)==(?);
  List_Output(Implementation(EstacionamentoI),excluir)==(?);
  List_Output(Implementation(EstacionamentoI),ocupar)==(?);
  List_Output(Implementation(EstacionamentoI),liberar)==(?);
  List_Output(Implementation(EstacionamentoI),get_cor_lampada)==(cc);
  List_Output(Implementation(EstacionamentoI),get_tipo_vaga)==(tt);
  List_Output(Implementation(EstacionamentoI),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Implementation(EstacionamentoI),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(EstacionamentoI),criar)==(criar(tt));
  List_Header(Implementation(EstacionamentoI),excluir)==(excluir(vv));
  List_Header(Implementation(EstacionamentoI),ocupar)==(ocupar(vv));
  List_Header(Implementation(EstacionamentoI),liberar)==(liberar(vv));
  List_Header(Implementation(EstacionamentoI),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Implementation(EstacionamentoI),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Implementation(EstacionamentoI),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Implementation(EstacionamentoI),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(EstacionamentoI),criar)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Implementation(EstacionamentoI),excluir)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoI),ocupar)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),ocupar)==(vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoI),liberar)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),liberar)==(vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Implementation(EstacionamentoI),get_cor_lampada)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Implementation(EstacionamentoI),get_tipo_vaga)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Implementation(EstacionamentoI),get_info_painel)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Implementation(EstacionamentoI),indicar)==(btrue);
  List_Precondition(Implementation(EstacionamentoI),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(EstacionamentoI),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @ii.(ii:=1;(0: INT | vv:=0);WHILE ii<=MAX_INT DO ativo(ii) = TRUE & statusI(ii) = livre & tipoI(ii) = tt ==> (ii: INT | vv:=ii) [] not(ativo(ii) = TRUE & statusI(ii) = livre & tipoI(ii) = tt) ==> skip;(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT 1 = 1 VARIANT MAX_INT-ii END));
  Expanded_List_Substitution(Implementation(EstacionamentoI),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc,oc,qi,oi,qd,od:=0,0,0,0,0,0;@ii.(ii:=1;WHILE ii<=MAX_INT DO ativo(ii) = TRUE ==> (not(tipoI(ii) = deficiente) & tipoI(ii) = idoso ==> ((qi+1: INT & qi: INT & 1: INT | qi:=qi+1);(statusI(ii) = ocupada ==> (oi+1: INT & oi: INT & 1: INT | oi:=oi+1) [] not(statusI(ii) = ocupada) ==> skip)) [] not(tipoI(ii) = idoso) & tipoI(ii) = deficiente ==> ((qd+1: INT & qd: INT & 1: INT | qd:=qd+1);(statusI(ii) = ocupada ==> (od+1: INT & od: INT & 1: INT | od:=od+1) [] not(statusI(ii) = ocupada) ==> skip)) [] not(tipoI(ii) = idoso) & not(tipoI(ii) = deficiente) ==> ((qc+1: INT & qc: INT & 1: INT | qc:=qc+1);(statusI(ii) = ocupada ==> (oc+1: INT & oc: INT & 1: INT | oc:=oc+1) [] not(statusI(ii) = ocupada) ==> skip))) [] not(ativo(ii) = TRUE) ==> skip INVARIANT ran(1..ii<|ativo) = {TRUE} VARIANT MAX_INT-ii END));
  Expanded_List_Substitution(Implementation(EstacionamentoI),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS & vv: dom(tipoI) | tt:=tipoI(vv));
  Expanded_List_Substitution(Implementation(EstacionamentoI),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES | statusI(vv) = livre ==> (not(tipoI(vv) = deficiente) & tipoI(vv) = idoso ==> cc:=azul [] not(tipoI(vv) = idoso) & tipoI(vv) = deficiente ==> cc:=amarela [] not(tipoI(vv) = idoso) & not(tipoI(vv) = deficiente) ==> cc:=verde) [] not(statusI(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Implementation(EstacionamentoI),liberar)==(vv: dom(status) & status(vv) = ocupada & vv: dom(statusI) | statusI:=statusI<+{vv|->livre});
  Expanded_List_Substitution(Implementation(EstacionamentoI),ocupar)==(vv: dom(status) & status(vv) = livre & vv: dom(statusI) | statusI:=statusI<+{vv|->ocupada});
  Expanded_List_Substitution(Implementation(EstacionamentoI),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre & vv: dom(ativo) | ativo:=ativo<+{vv|->FALSE});
  Expanded_List_Substitution(Implementation(EstacionamentoI),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @(ii,continuar).(ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ativo(ii) = FALSE ==> (continuar:=FALSE;(ii: dom(ativo) | ativo:=ativo<+{ii|->TRUE});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->tt});(ii: dom(statusI) | statusI:=statusI<+{ii|->livre})) [] not(ativo(ii) = FALSE) ==> skip) INVARIANT ran(1..ii<|ativo) = {TRUE} VARIANT MAX_INT-ii END));
  List_Substitution(Implementation(EstacionamentoI),criar)==(VAR ii,continuar IN ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO ii:=ii+1;IF ativo(ii) = FALSE THEN continuar:=FALSE;ativo(ii):=TRUE;tipoI(ii):=tt;statusI(ii):=livre END INVARIANT ran(1..ii<|ativo) = {TRUE} VARIANT MAX_INT-ii END END);
  List_Substitution(Implementation(EstacionamentoI),excluir)==(ativo(vv):=FALSE);
  List_Substitution(Implementation(EstacionamentoI),ocupar)==(statusI(vv):=ocupada);
  List_Substitution(Implementation(EstacionamentoI),liberar)==(statusI(vv):=livre);
  List_Substitution(Implementation(EstacionamentoI),get_cor_lampada)==(IF statusI(vv) = livre THEN CASE tipoI(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Implementation(EstacionamentoI),get_tipo_vaga)==(tt:=tipoI(vv));
  List_Substitution(Implementation(EstacionamentoI),get_info_painel)==(qc,oc,qi,oi,qd,od:=0,0,0,0,0,0;VAR ii IN ii:=1;WHILE ii<=MAX_INT DO IF ativo(ii) = TRUE THEN CASE tipoI(ii) OF EITHER idoso THEN qi:=qi+1;IF statusI(ii) = ocupada THEN oi:=oi+1 END OR deficiente THEN qd:=qd+1;IF statusI(ii) = ocupada THEN od:=od+1 END ELSE qc:=qc+1;IF statusI(ii) = ocupada THEN oc:=oc+1 END END END END INVARIANT ran(1..ii<|ativo) = {TRUE} VARIANT MAX_INT-ii END END);
  List_Substitution(Implementation(EstacionamentoI),indicar)==(VAR ii IN ii:=1;vv:=0;WHILE ii<=MAX_INT DO IF ativo(ii) = TRUE & statusI(ii) = livre & tipoI(ii) = tt THEN vv:=ii END;ii:=ii+1 INVARIANT 1 = 1 VARIANT MAX_INT-ii END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(EstacionamentoI))==(VAGA);
  Inherited_List_Constants(Implementation(EstacionamentoI))==(VAGA);
  List_Constants(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(EstacionamentoI),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Implementation(EstacionamentoI))==(TIPOS,STATUS,CORES);
  Context_List_Defered(Implementation(EstacionamentoI))==(?);
  Context_List_Sets(Implementation(EstacionamentoI))==(TIPOS,STATUS,CORES);
  List_Own_Enumerated(Implementation(EstacionamentoI))==(?);
  List_Valuable_Sets(Implementation(EstacionamentoI))==(?);
  Inherited_List_Enumerated(Implementation(EstacionamentoI))==(?);
  Inherited_List_Defered(Implementation(EstacionamentoI))==(?);
  Inherited_List_Sets(Implementation(EstacionamentoI))==(?);
  List_Enumerated(Implementation(EstacionamentoI))==(?);
  List_Defered(Implementation(EstacionamentoI))==(?);
  List_Sets(Implementation(EstacionamentoI))==(?);
  Set_Definition(Implementation(EstacionamentoI),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Implementation(EstacionamentoI),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(EstacionamentoI))==(?);
  Expanded_List_HiddenConstants(Implementation(EstacionamentoI))==(?);
  List_HiddenConstants(Implementation(EstacionamentoI))==(?);
  External_List_HiddenConstants(Implementation(EstacionamentoI))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(EstacionamentoI))==(VAGA = 1..MAX_INT);
  Context_List_Properties(Implementation(EstacionamentoI))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Implementation(EstacionamentoI))==(btrue);
  List_Properties(Implementation(EstacionamentoI))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(EstacionamentoI))==(btrue);
  Values_Subs(Implementation(EstacionamentoI))==(VAGA: 1..MAX_INT);
  List_Values(Implementation(EstacionamentoI))==(VAGA = 1..MAX_INT)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(EstacionamentoI),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Implementation(EstacionamentoI))==(?);
  Seen_Context_List_Invariant(Implementation(EstacionamentoI))==(btrue);
  Seen_Context_List_Assertions(Implementation(EstacionamentoI))==(btrue);
  Seen_Context_List_Properties(Implementation(EstacionamentoI))==(btrue);
  Seen_List_Constraints(Implementation(EstacionamentoI))==(btrue);
  Seen_List_Operations(Implementation(EstacionamentoI),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Implementation(EstacionamentoI),Machine(TiposComuns))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(EstacionamentoI))==(Type(tipoI) == Mvv(SetOf(btype(INTEGER,"[VAGA","]VAGA")*etype(TIPOS,0,3)));Type(statusI) == Mvv(SetOf(btype(INTEGER,"[VAGA","]VAGA")*etype(STATUS,0,2)));Type(ativo) == Mvv(SetOf(btype(INTEGER,"[VAGA","]VAGA")*btype(BOOL,0,1))));
  Operations(Implementation(EstacionamentoI))==(Type(indicar) == Cst(btype(INTEGER,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),btype(INTEGER,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),btype(INTEGER,?,?));Type(liberar) == Cst(No_type,btype(INTEGER,?,?));Type(ocupar) == Cst(No_type,btype(INTEGER,?,?));Type(excluir) == Cst(No_type,btype(INTEGER,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)));
  Constants(Implementation(EstacionamentoI))==(Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA"))))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(EstacionamentoI),Machine(TiposComuns))==(MAX_INT,MAX);
  List_Constants_Env(Implementation(EstacionamentoI),Machine(TiposComuns))==(Type(idoso) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(livre) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?))));
  Enumerate_Definition(Implementation(EstacionamentoI),Machine(TiposComuns),CORES)==({azul,amarela,verde,vermelha});
  Enumerate_Definition(Implementation(EstacionamentoI),Machine(TiposComuns),STATUS)==({livre,ocupada,S_NULL});
  Enumerate_Definition(Implementation(EstacionamentoI),Machine(TiposComuns),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(EstacionamentoI)) == (? | ? | ? | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)) | ? | EstacionamentoI);
  List_Of_HiddenCst_Ids(Implementation(EstacionamentoI)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(EstacionamentoI)) == (?);
  List_Of_VisibleVar_Ids(Implementation(EstacionamentoI)) == (ativo,statusI,tipoI | ?);
  List_Of_Ids_SeenBNU(Implementation(EstacionamentoI)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(EstacionamentoI)) == (Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA"))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(EstacionamentoI)) == (Type(ativo) == Mvv(SetOf(btype(INTEGER,"[VAGA","]VAGA")*btype(BOOL,0,1)));Type(statusI) == Mvv(SetOf(btype(INTEGER,"[VAGA","]VAGA")*etype(STATUS,0,2)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,"[VAGA","]VAGA")*etype(TIPOS,0,3))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(EstacionamentoI),criar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(EstacionamentoI),get_info_painel, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoI),indicar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(EstacionamentoI))==(?)
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
  TypingPredicate(Implementation(EstacionamentoI))==(tipoI: POW(INTEGER*TIPOS) & statusI: POW(INTEGER*STATUS) & ativo: POW(INTEGER*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
