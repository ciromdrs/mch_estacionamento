Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(EstacionamentoR2I))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(EstacionamentoR2I))==(Machine(Estacionamento));
  Level(Implementation(EstacionamentoR2I))==(3);
  Upper_Level(Implementation(EstacionamentoR2I))==(Refinement(EstacionamentoR2))
END
&
THEORY LoadedStructureX IS
  Implementation(EstacionamentoR2I)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(EstacionamentoR2I))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(EstacionamentoR2I))==(?);
  Inherited_List_Includes(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(EstacionamentoR2I))==(?);
  Context_List_Variables(Implementation(EstacionamentoR2I))==(?);
  Abstract_List_Variables(Implementation(EstacionamentoR2I))==(ids,ativo,tipo,status,ativo,tipo,status,tipo,status);
  Local_List_Variables(Implementation(EstacionamentoR2I))==(?);
  List_Variables(Implementation(EstacionamentoR2I))==(?);
  External_List_Variables(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(EstacionamentoR2I))==(?);
  Abstract_List_VisibleVariables(Implementation(EstacionamentoR2I))==(?);
  External_List_VisibleVariables(Implementation(EstacionamentoR2I))==(?);
  Expanded_List_VisibleVariables(Implementation(EstacionamentoR2I))==(?);
  List_VisibleVariables(Implementation(EstacionamentoR2I))==(ativoI,tipoI,statusI);
  Internal_List_VisibleVariables(Implementation(EstacionamentoR2I))==(ativoI,tipoI,statusI)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(EstacionamentoR2I))==(btrue);
  Expanded_List_Invariant(Implementation(EstacionamentoR2I))==(btrue);
  Abstract_List_Invariant(Implementation(EstacionamentoR2I))==(ids: 1..MAX_INT --> VAGA & ran(ids|>ativo) = dom(status) & ran(ids|>ativo) = dom(tipo) & ativo <: VAGA & ativo = dom(tipo) & ativo = dom(status) & status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Implementation(EstacionamentoR2I))==(btrue);
  List_Invariant(Implementation(EstacionamentoR2I))==(statusI: 1..MAX_INT --> STATUS & tipoI: 1..MAX_INT --> TIPOS & ativoI: 1..MAX_INT --> BOOL & !ii.(ii: ativo & ativo = dom(status) & ativo = dom(tipo) => statusI(ii) = status(ii) & tipoI(ii) = tipo(ii) & ativoI(ii) = TRUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(EstacionamentoR2I))==(btrue);
  Abstract_List_Assertions(Implementation(EstacionamentoR2I))==(btrue);
  Context_List_Assertions(Implementation(EstacionamentoR2I))==(btrue);
  List_Assertions(Implementation(EstacionamentoR2I))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(EstacionamentoR2I))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(EstacionamentoR2I))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(EstacionamentoR2I))==(@ii.(ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | ativoI:=ativoI<+{ii|->FALSE});(ii: dom(statusI) | statusI:=statusI<+{ii|->S_NULL});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->T_NULL}) INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END));
  Context_List_Initialisation(Implementation(EstacionamentoR2I))==(skip);
  List_Initialisation(Implementation(EstacionamentoR2I))==(VAR ii IN ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;ativoI(ii):=FALSE;statusI(ii):=S_NULL;tipoI(ii):=T_NULL INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END END)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(EstacionamentoR2I),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(EstacionamentoR2I))==(btrue);
  List_Context_Constraints(Implementation(EstacionamentoR2I))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(EstacionamentoR2I))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar);
  List_Operations(Implementation(EstacionamentoR2I))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Implementation(EstacionamentoR2I),criar)==(tt);
  List_Input(Implementation(EstacionamentoR2I),excluir)==(vv);
  List_Input(Implementation(EstacionamentoR2I),ocupar)==(vv);
  List_Input(Implementation(EstacionamentoR2I),liberar)==(vv);
  List_Input(Implementation(EstacionamentoR2I),get_cor_lampada)==(vv);
  List_Input(Implementation(EstacionamentoR2I),get_tipo_vaga)==(vv);
  List_Input(Implementation(EstacionamentoR2I),get_info_painel)==(?);
  List_Input(Implementation(EstacionamentoR2I),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(EstacionamentoR2I),criar)==(?);
  List_Output(Implementation(EstacionamentoR2I),excluir)==(?);
  List_Output(Implementation(EstacionamentoR2I),ocupar)==(?);
  List_Output(Implementation(EstacionamentoR2I),liberar)==(?);
  List_Output(Implementation(EstacionamentoR2I),get_cor_lampada)==(cc);
  List_Output(Implementation(EstacionamentoR2I),get_tipo_vaga)==(tt);
  List_Output(Implementation(EstacionamentoR2I),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Implementation(EstacionamentoR2I),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(EstacionamentoR2I),criar)==(criar(tt));
  List_Header(Implementation(EstacionamentoR2I),excluir)==(excluir(vv));
  List_Header(Implementation(EstacionamentoR2I),ocupar)==(ocupar(vv));
  List_Header(Implementation(EstacionamentoR2I),liberar)==(liberar(vv));
  List_Header(Implementation(EstacionamentoR2I),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Implementation(EstacionamentoR2I),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Implementation(EstacionamentoR2I),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Implementation(EstacionamentoR2I),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(EstacionamentoR2I),criar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Implementation(EstacionamentoR2I),excluir)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),excluir)==(vv: ativo & vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoR2I),ocupar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),ocupar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoR2I),liberar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),liberar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Implementation(EstacionamentoR2I),get_cor_lampada)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),get_cor_lampada)==(vv: ativo & vv: ativo & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Implementation(EstacionamentoR2I),get_tipo_vaga)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),get_tipo_vaga)==(vv: ativo & vv: ativo & vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Implementation(EstacionamentoR2I),get_info_painel)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Implementation(EstacionamentoR2I),indicar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR2I),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | (0: INT | vv:=0);@(ii,aa,ss,uu,continuar).(uu:=T_NULL;ss:=S_NULL;aa:=TRUE;continuar:=TRUE;ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | aa:=ativoI(ii));(ii: dom(statusI) | ss:=statusI(ii));(ii: dom(tipoI) | uu:=tipoI(ii));(aa = TRUE & ss = livre & uu = tt ==> continuar:=FALSE [] not(aa = TRUE & ss = livre & uu = tt) ==> skip) INVARIANT !jj.(jj: 1..ii => not(aa = TRUE & ss = livre & uu = tt)) VARIANT MAX_INT-ii END));
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | (0: INT | qc:=0);(0: INT | oc:=0);(0: INT | qi:=0);(0: INT | oi:=0);(0: INT | qd:=0);(0: INT | od:=0);@(ii,aa,tt,ss).(ii:=0;aa:=FALSE;tt:=T_NULL;ss:=S_NULL;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | aa:=ativoI(ii));(ii: dom(tipoI) | tt:=tipoI(ii));(ii: dom(statusI) | ss:=statusI(ii)) INVARIANT qc = SIGMA(zz).(zz: 1..ii & tipoI(zz) = comum & ativoI(zz) = TRUE | 1) & oc = SIGMA(zz).(zz: 1..ii & tipoI(zz) = comum & ativoI(zz) = TRUE & statusI(zz) = ocupada | 1) & qi = SIGMA(zz).(zz: 1..ii & tipoI(zz) = idoso & ativoI(zz) = TRUE | 1) & oi = SIGMA(zz).(zz: 1..ii & tipoI(zz) = idoso & ativoI(zz) = TRUE & statusI(zz) = ocupada | 1) & qd = SIGMA(zz).(zz: 1..ii & tipoI(zz) = deficiente & ativoI(zz) = TRUE | 1) & od = SIGMA(zz).(zz: 1..ii & tipoI(zz) = deficiente & ativoI(zz) = TRUE & statusI(zz) = ocupada | 1) VARIANT MAX_INT-ii END));
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),get_tipo_vaga)==(vv: ativo & vv: ativo & vv: dom(tipo) & tt: TIPOS & vv: dom(tipoI) | tt:=tipoI(vv));
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),get_cor_lampada)==(vv: ativo & vv: ativo & vv: dom(status) & vv: dom(tipo) & cc: CORES | @(ss,tt).((vv: dom(statusI) | ss:=statusI(vv));(vv: dom(tipoI) | tt:=tipoI(vv));(ss = livre ==> (not(tt = deficiente) & tt = idoso ==> cc:=azul [] not(tt = idoso) & tt = deficiente ==> cc:=amarela [] not(tt = idoso) & not(tt = deficiente) ==> cc:=verde) [] not(ss = livre) ==> cc:=vermelha)));
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),liberar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = ocupada & vv: dom(statusI) | statusI:=statusI<+{vv|->livre});
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),ocupar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = livre & vv: dom(statusI) | statusI:=statusI<+{vv|->ocupada});
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),excluir)==(vv: ativo & vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre & vv: dom(ativoI) | ativoI:=ativoI<+{vv|->FALSE});
  Expanded_List_Substitution(Implementation(EstacionamentoR2I),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @(ii,aa).(aa:=TRUE;ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(ativoI) | aa:=ativoI(ii));(aa = FALSE ==> ((ii: dom(ativoI) | ativoI:=ativoI<+{ii|->TRUE});(ii: dom(statusI) | statusI:=statusI<+{ii|->livre});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->tt})) [] not(aa = FALSE) ==> skip) INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END));
  List_Substitution(Implementation(EstacionamentoR2I),criar)==(VAR ii,aa IN aa:=TRUE;ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;aa:=ativoI(ii);IF aa = FALSE THEN ativoI(ii):=TRUE;statusI(ii):=livre;tipoI(ii):=tt END INVARIANT !jj.(jj: 1..ii => ativoI(jj) = FALSE) VARIANT MAX_INT-ii END END);
  List_Substitution(Implementation(EstacionamentoR2I),excluir)==(ativoI(vv):=FALSE);
  List_Substitution(Implementation(EstacionamentoR2I),ocupar)==(statusI(vv):=ocupada);
  List_Substitution(Implementation(EstacionamentoR2I),liberar)==(statusI(vv):=livre);
  List_Substitution(Implementation(EstacionamentoR2I),get_cor_lampada)==(VAR ss,tt IN ss:=statusI(vv);tt:=tipoI(vv);IF ss = livre THEN CASE tt OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END END);
  List_Substitution(Implementation(EstacionamentoR2I),get_tipo_vaga)==(tt:=tipoI(vv));
  List_Substitution(Implementation(EstacionamentoR2I),get_info_painel)==(qc:=0;oc:=0;qi:=0;oi:=0;qd:=0;od:=0;VAR ii,aa,tt,ss IN ii:=0;aa:=FALSE;tt:=T_NULL;ss:=S_NULL;WHILE ii<MAX_INT DO ii:=ii+1;aa:=ativoI(ii);tt:=tipoI(ii);ss:=statusI(ii) INVARIANT qc = SIGMA(zz).(zz: 1..ii & tipoI(zz) = comum & ativoI(zz) = TRUE | 1) & oc = SIGMA(zz).(zz: 1..ii & tipoI(zz) = comum & ativoI(zz) = TRUE & statusI(zz) = ocupada | 1) & qi = SIGMA(zz).(zz: 1..ii & tipoI(zz) = idoso & ativoI(zz) = TRUE | 1) & oi = SIGMA(zz).(zz: 1..ii & tipoI(zz) = idoso & ativoI(zz) = TRUE & statusI(zz) = ocupada | 1) & qd = SIGMA(zz).(zz: 1..ii & tipoI(zz) = deficiente & ativoI(zz) = TRUE | 1) & od = SIGMA(zz).(zz: 1..ii & tipoI(zz) = deficiente & ativoI(zz) = TRUE & statusI(zz) = ocupada | 1) VARIANT MAX_INT-ii END END);
  List_Substitution(Implementation(EstacionamentoR2I),indicar)==(vv:=0;VAR ii,aa,ss,uu,continuar IN uu:=T_NULL;ss:=S_NULL;aa:=TRUE;continuar:=TRUE;ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;aa:=ativoI(ii);ss:=statusI(ii);uu:=tipoI(ii);IF aa = TRUE & ss = livre & uu = tt THEN continuar:=FALSE END INVARIANT !jj.(jj: 1..ii => not(aa = TRUE & ss = livre & uu = tt)) VARIANT MAX_INT-ii END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(EstacionamentoR2I))==(?);
  Inherited_List_Constants(Implementation(EstacionamentoR2I))==(?);
  List_Constants(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(EstacionamentoR2I),VAGA)==(?);
  Context_List_Enumerated(Implementation(EstacionamentoR2I))==(TIPOS,STATUS,CORES);
  Context_List_Defered(Implementation(EstacionamentoR2I))==(?);
  Context_List_Sets(Implementation(EstacionamentoR2I))==(TIPOS,STATUS,CORES);
  List_Own_Enumerated(Implementation(EstacionamentoR2I))==(?);
  List_Valuable_Sets(Implementation(EstacionamentoR2I))==(VAGA);
  Inherited_List_Enumerated(Implementation(EstacionamentoR2I))==(?);
  Inherited_List_Defered(Implementation(EstacionamentoR2I))==(VAGA);
  Inherited_List_Sets(Implementation(EstacionamentoR2I))==(VAGA);
  List_Enumerated(Implementation(EstacionamentoR2I))==(?);
  List_Defered(Implementation(EstacionamentoR2I))==(?);
  List_Sets(Implementation(EstacionamentoR2I))==(?);
  Set_Definition(Implementation(EstacionamentoR2I),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Implementation(EstacionamentoR2I),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Implementation(EstacionamentoR2I),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(EstacionamentoR2I))==(?);
  Expanded_List_HiddenConstants(Implementation(EstacionamentoR2I))==(?);
  List_HiddenConstants(Implementation(EstacionamentoR2I))==(?);
  External_List_HiddenConstants(Implementation(EstacionamentoR2I))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(EstacionamentoR2I))==(VAGA: FIN(INTEGER) & not(VAGA = {}));
  Context_List_Properties(Implementation(EstacionamentoR2I))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Implementation(EstacionamentoR2I))==(btrue);
  List_Properties(Implementation(EstacionamentoR2I))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(EstacionamentoR2I))==(btrue);
  Values_Subs(Implementation(EstacionamentoR2I))==(VAGA: 1..MAX_INT);
  List_Values(Implementation(EstacionamentoR2I))==(VAGA = 1..MAX_INT)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(EstacionamentoR2I),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Implementation(EstacionamentoR2I))==(?);
  Seen_Context_List_Invariant(Implementation(EstacionamentoR2I))==(btrue);
  Seen_Context_List_Assertions(Implementation(EstacionamentoR2I))==(btrue);
  Seen_Context_List_Properties(Implementation(EstacionamentoR2I))==(btrue);
  Seen_List_Constraints(Implementation(EstacionamentoR2I))==(btrue);
  Seen_List_Operations(Implementation(EstacionamentoR2I),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Implementation(EstacionamentoR2I),Machine(TiposComuns))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(EstacionamentoR2I))==(Type(statusI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(STATUS,0,2)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(TIPOS,0,3)));Type(ativoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1))));
  Operations(Implementation(EstacionamentoR2I))==(Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(excluir) == Cst(No_type,atype(VAGA,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(EstacionamentoR2I),Machine(TiposComuns))==(MAX_INT,MAX);
  List_Constants_Env(Implementation(EstacionamentoR2I),Machine(TiposComuns))==(Type(idoso) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(livre) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?))));
  Enumerate_Definition(Implementation(EstacionamentoR2I),Machine(TiposComuns),CORES)==({azul,amarela,verde,vermelha});
  Enumerate_Definition(Implementation(EstacionamentoR2I),Machine(TiposComuns),STATUS)==({livre,ocupada,S_NULL});
  Enumerate_Definition(Implementation(EstacionamentoR2I),Machine(TiposComuns),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(EstacionamentoR2I)) == (? | ? | ? | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)) | ? | EstacionamentoR2I);
  List_Of_HiddenCst_Ids(Implementation(EstacionamentoR2I)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(EstacionamentoR2I)) == (?);
  List_Of_VisibleVar_Ids(Implementation(EstacionamentoR2I)) == (ativoI,tipoI,statusI | ?);
  List_Of_Ids_SeenBNU(Implementation(EstacionamentoR2I)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(EstacionamentoR2I)) == (Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA"))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(EstacionamentoR2I)) == (Type(ativoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(TIPOS,0,3)));Type(statusI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(STATUS,0,2))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(EstacionamentoR2I),?, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR2I),criar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(EstacionamentoR2I),get_cor_lampada, 1) == (Type(ss) == Lvl(etype(STATUS,?,?));Type(tt) == Lvl(etype(TIPOS,?,?)));
  Variables_Loc(Implementation(EstacionamentoR2I),get_info_painel, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(tt) == Lvl(etype(TIPOS,?,?));Type(ss) == Lvl(etype(STATUS,?,?)));
  Variables_Loc(Implementation(EstacionamentoR2I),indicar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(ss) == Lvl(etype(STATUS,?,?));Type(uu) == Lvl(etype(TIPOS,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(EstacionamentoR2I))==(?)
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
  TypingPredicate(Implementation(EstacionamentoR2I))==(statusI: POW(INTEGER*STATUS) & tipoI: POW(INTEGER*TIPOS) & ativoI: POW(INTEGER*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
