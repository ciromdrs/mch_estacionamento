Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Estacionamento_r2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Estacionamento_r2))==(Machine(Estacionamento));
  Level(Refinement(Estacionamento_r2))==(2);
  Upper_Level(Refinement(Estacionamento_r2))==(Refinement(Estacionamento_r1))
END
&
THEORY LoadedStructureX IS
  Refinement(Estacionamento_r2)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Estacionamento_r2))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Estacionamento_r2))==(?);
  List_Includes(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Estacionamento_r2))==(?);
  Context_List_Variables(Refinement(Estacionamento_r2))==(?);
  Abstract_List_Variables(Refinement(Estacionamento_r2))==(status,tipo,cv,tipo,status);
  Local_List_Variables(Refinement(Estacionamento_r2))==(ativo,status,tipo,cv);
  List_Variables(Refinement(Estacionamento_r2))==(ativo,status,tipo,cv);
  External_List_Variables(Refinement(Estacionamento_r2))==(ativo,status,tipo,cv)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Estacionamento_r2))==(?);
  Abstract_List_VisibleVariables(Refinement(Estacionamento_r2))==(?);
  External_List_VisibleVariables(Refinement(Estacionamento_r2))==(?);
  Expanded_List_VisibleVariables(Refinement(Estacionamento_r2))==(?);
  List_VisibleVariables(Refinement(Estacionamento_r2))==(?);
  Internal_List_VisibleVariables(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Estacionamento_r2))==(ativo)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Estacionamento_r2))==(btrue);
  Expanded_List_Invariant(Refinement(Estacionamento_r2))==(btrue);
  Abstract_List_Invariant(Refinement(Estacionamento_r2))==(cv: 0..MAX_INT & cv = card(tipo) & cv = card(status) & cv<=MAX(comum)+MAX(idoso)+MAX(deficiente) & status: VAGAS +-> STATUS & tipo: VAGAS +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Refinement(Estacionamento_r2))==(btrue);
  List_Invariant(Refinement(Estacionamento_r2))==(ativo: VAGAS --> BOOL & card(ativo|>{TRUE}) = cv & dom(ativo|>{TRUE}) = dom(tipo) & dom(ativo|>{TRUE}) = dom(status))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Estacionamento_r2))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Estacionamento_r2))==(btrue);
  Abstract_List_Assertions(Refinement(Estacionamento_r2))==(btrue);
  Context_List_Assertions(Refinement(Estacionamento_r2))==(btrue);
  List_Assertions(Refinement(Estacionamento_r2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Estacionamento_r2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Estacionamento_r2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Estacionamento_r2))==(cv:=0;tipo:={};status:={};ativo:=VAGAS*{FALSE});
  Context_List_Initialisation(Refinement(Estacionamento_r2))==(skip);
  List_Initialisation(Refinement(Estacionamento_r2))==(cv:=0;tipo:={};status:={};ativo:=VAGAS*{FALSE})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Estacionamento_r2))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar);
  List_Operations(Refinement(Estacionamento_r2))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Estacionamento_r2),criar)==(tt);
  List_Input(Refinement(Estacionamento_r2),excluir)==(vv);
  List_Input(Refinement(Estacionamento_r2),ocupar)==(vv);
  List_Input(Refinement(Estacionamento_r2),liberar)==(vv);
  List_Input(Refinement(Estacionamento_r2),get_cor_lampada)==(vv);
  List_Input(Refinement(Estacionamento_r2),get_tipo_vaga)==(vv);
  List_Input(Refinement(Estacionamento_r2),get_info_painel)==(?);
  List_Input(Refinement(Estacionamento_r2),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Estacionamento_r2),criar)==(?);
  List_Output(Refinement(Estacionamento_r2),excluir)==(?);
  List_Output(Refinement(Estacionamento_r2),ocupar)==(?);
  List_Output(Refinement(Estacionamento_r2),liberar)==(?);
  List_Output(Refinement(Estacionamento_r2),get_cor_lampada)==(cc);
  List_Output(Refinement(Estacionamento_r2),get_tipo_vaga)==(tt);
  List_Output(Refinement(Estacionamento_r2),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Refinement(Estacionamento_r2),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Estacionamento_r2),criar)==(criar(tt));
  List_Header(Refinement(Estacionamento_r2),excluir)==(excluir(vv));
  List_Header(Refinement(Estacionamento_r2),ocupar)==(ocupar(vv));
  List_Header(Refinement(Estacionamento_r2),liberar)==(liberar(vv));
  List_Header(Refinement(Estacionamento_r2),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Refinement(Estacionamento_r2),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Refinement(Estacionamento_r2),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Refinement(Estacionamento_r2),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Estacionamento_r2),criar)==(cv<MAX_INT);
  List_Precondition(Refinement(Estacionamento_r2),criar)==(cv<MAX_INT & cv<MAX_INT & tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Refinement(Estacionamento_r2),excluir)==(cv>0 & ativo(vv) = TRUE);
  List_Precondition(Refinement(Estacionamento_r2),excluir)==(cv>0 & ativo(vv) = TRUE & cv>0 & vv: VAGAS & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(Estacionamento_r2),ocupar)==(ativo(vv) = TRUE);
  List_Precondition(Refinement(Estacionamento_r2),ocupar)==(ativo(vv) = TRUE & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(Estacionamento_r2),liberar)==(ativo(vv) = TRUE);
  List_Precondition(Refinement(Estacionamento_r2),liberar)==(ativo(vv) = TRUE & vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Refinement(Estacionamento_r2),get_cor_lampada)==(ativo(vv) = TRUE);
  List_Precondition(Refinement(Estacionamento_r2),get_cor_lampada)==(ativo(vv) = TRUE & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Refinement(Estacionamento_r2),get_tipo_vaga)==(ativo(vv) = TRUE);
  List_Precondition(Refinement(Estacionamento_r2),get_tipo_vaga)==(ativo(vv) = TRUE & vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Refinement(Estacionamento_r2),get_info_painel)==(btrue);
  List_Precondition(Refinement(Estacionamento_r2),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Refinement(Estacionamento_r2),indicar)==(btrue);
  List_Precondition(Refinement(Estacionamento_r2),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Estacionamento_r2),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) & ativo(uu) = TRUE ==> vv:=uu));
  Expanded_List_Substitution(Refinement(Estacionamento_r2),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1));
  Expanded_List_Substitution(Refinement(Estacionamento_r2),get_tipo_vaga)==(ativo(vv) = TRUE & vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Refinement(Estacionamento_r2),get_cor_lampada)==(ativo(vv) = TRUE & vv: dom(status) & vv: dom(tipo) & cc: CORES | status(vv) = livre ==> (not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) ==> cc:=verde) [] not(status(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Refinement(Estacionamento_r2),liberar)==(ativo(vv) = TRUE & vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Refinement(Estacionamento_r2),ocupar)==(ativo(vv) = TRUE & vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Refinement(Estacionamento_r2),excluir)==(cv>0 & ativo(vv) = TRUE & cv>0 & vv: VAGAS & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | cv:=cv-1;ativo:=ativo<+{vv|->FALSE};tipo:={vv}<<|tipo;status:={vv}<<|status);
  Expanded_List_Substitution(Refinement(Estacionamento_r2),criar)==(cv<MAX_INT & cv<MAX_INT & tt: TIPOS & card(tipo|>{tt})<MAX(tt) | cv:=cv+1;@vv.(vv: VAGAS & vv/:dom(tipo) & vv/:dom(status) & ativo(vv) = FALSE ==> (ativo:=ativo<+{vv|->TRUE};tipo:=tipo<+{vv|->tt};status:=status<+{vv|->livre})));
  List_Substitution(Refinement(Estacionamento_r2),criar)==(cv:=cv+1;ANY vv WHERE vv: VAGAS & vv/:dom(tipo) & vv/:dom(status) & ativo(vv) = FALSE THEN ativo(vv):=TRUE;tipo(vv):=tt;status(vv):=livre END);
  List_Substitution(Refinement(Estacionamento_r2),excluir)==(cv:=cv-1;ativo(vv):=FALSE;tipo:={vv}<<|tipo;status:={vv}<<|status);
  List_Substitution(Refinement(Estacionamento_r2),ocupar)==(status(vv):=ocupada);
  List_Substitution(Refinement(Estacionamento_r2),liberar)==(status(vv):=livre);
  List_Substitution(Refinement(Estacionamento_r2),get_cor_lampada)==(IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Refinement(Estacionamento_r2),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Refinement(Estacionamento_r2),get_info_painel)==(qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1));
  List_Substitution(Refinement(Estacionamento_r2),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) & ativo(uu) = TRUE THEN vv:=uu END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Estacionamento_r2),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Estacionamento_r2))==(btrue);
  List_Context_Constraints(Refinement(Estacionamento_r2))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Estacionamento_r2))==(?);
  Inherited_List_Constants(Refinement(Estacionamento_r2))==(?);
  List_Constants(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Estacionamento_r2),VAGAS)==(?);
  Context_List_Enumerated(Refinement(Estacionamento_r2))==(TIPOS,STATUS,CORES,SIM_NAO);
  Context_List_Defered(Refinement(Estacionamento_r2))==(?);
  Context_List_Sets(Refinement(Estacionamento_r2))==(TIPOS,STATUS,CORES,SIM_NAO);
  List_Valuable_Sets(Refinement(Estacionamento_r2))==(VAGAS);
  Inherited_List_Enumerated(Refinement(Estacionamento_r2))==(?);
  Inherited_List_Defered(Refinement(Estacionamento_r2))==(VAGAS);
  Inherited_List_Sets(Refinement(Estacionamento_r2))==(VAGAS);
  List_Enumerated(Refinement(Estacionamento_r2))==(?);
  List_Defered(Refinement(Estacionamento_r2))==(?);
  List_Sets(Refinement(Estacionamento_r2))==(?);
  Set_Definition(Refinement(Estacionamento_r2),SIM_NAO)==({sim,nao});
  Set_Definition(Refinement(Estacionamento_r2),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Refinement(Estacionamento_r2),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Refinement(Estacionamento_r2),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Estacionamento_r2))==(?);
  Expanded_List_HiddenConstants(Refinement(Estacionamento_r2))==(?);
  List_HiddenConstants(Refinement(Estacionamento_r2))==(?);
  External_List_HiddenConstants(Refinement(Estacionamento_r2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Estacionamento_r2))==(VAGAS: FIN(INTEGER) & not(VAGAS = {}));
  Context_List_Properties(Refinement(Estacionamento_r2))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}) & SIM_NAO: FIN(INTEGER) & not(SIM_NAO = {}));
  Inherited_List_Properties(Refinement(Estacionamento_r2))==(btrue);
  List_Properties(Refinement(Estacionamento_r2))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Estacionamento_r2),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Refinement(Estacionamento_r2))==(?);
  Seen_Context_List_Invariant(Refinement(Estacionamento_r2))==(btrue);
  Seen_Context_List_Assertions(Refinement(Estacionamento_r2))==(btrue);
  Seen_Context_List_Properties(Refinement(Estacionamento_r2))==(btrue);
  Seen_List_Constraints(Refinement(Estacionamento_r2))==(btrue);
  Seen_List_Operations(Refinement(Estacionamento_r2),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Refinement(Estacionamento_r2),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Estacionamento_r2),criar)==(Var(vv) == atype(VAGAS,?,?));
  List_ANY_Var(Refinement(Estacionamento_r2),excluir)==(?);
  List_ANY_Var(Refinement(Estacionamento_r2),ocupar)==(?);
  List_ANY_Var(Refinement(Estacionamento_r2),liberar)==(?);
  List_ANY_Var(Refinement(Estacionamento_r2),get_cor_lampada)==(?);
  List_ANY_Var(Refinement(Estacionamento_r2),get_tipo_vaga)==(?);
  List_ANY_Var(Refinement(Estacionamento_r2),get_info_painel)==(?);
  List_ANY_Var(Refinement(Estacionamento_r2),indicar)==(Var(uu) == atype(VAGAS,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Estacionamento_r2)) == (? | ? | ativo,status,tipo,cv | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)) | ? | Estacionamento_r2);
  List_Of_HiddenCst_Ids(Refinement(Estacionamento_r2)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Estacionamento_r2)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Estacionamento_r2)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Estacionamento_r2)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,SIM_NAO,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Estacionamento_r2)) == (Type(VAGAS) == Cst(SetOf(atype(VAGAS,"[VAGAS","]VAGAS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Estacionamento_r2)) == (Type(ativo) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*btype(BOOL,0,1)));Type(status) == Mvl(SetOf(atype(VAGAS,?,?)*etype(STATUS,?,?)));Type(tipo) == Mvl(SetOf(atype(VAGAS,?,?)*etype(TIPOS,?,?)));Type(cv) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Estacionamento_r2)) == (Type(indicar) == Cst(atype(VAGAS,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGAS,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGAS,?,?));Type(liberar) == Cst(No_type,atype(VAGAS,?,?));Type(ocupar) == Cst(No_type,atype(VAGAS,?,?));Type(excluir) == Cst(No_type,atype(VAGAS,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)))
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
