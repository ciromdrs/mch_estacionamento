Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Estacionamento_r1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Estacionamento_r1))==(Machine(Estacionamento));
  Level(Refinement(Estacionamento_r1))==(1);
  Upper_Level(Refinement(Estacionamento_r1))==(Machine(Estacionamento))
END
&
THEORY LoadedStructureX IS
  Refinement(Estacionamento_r1)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Estacionamento_r1))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Estacionamento_r1))==(QtdMax);
  List_Includes(Refinement(Estacionamento_r1))==(QtdMax)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Estacionamento_r1))==(init)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Estacionamento_r1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Estacionamento_r1))==(?);
  Context_List_Variables(Refinement(Estacionamento_r1))==(?);
  Abstract_List_Variables(Refinement(Estacionamento_r1))==(tipo,status,ini,qtd_max);
  Local_List_Variables(Refinement(Estacionamento_r1))==(status,tipo,cv);
  List_Variables(Refinement(Estacionamento_r1))==(status,tipo,cv,ini,qtd_max);
  External_List_Variables(Refinement(Estacionamento_r1))==(status,tipo,cv,ini,qtd_max)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Estacionamento_r1))==(?);
  Abstract_List_VisibleVariables(Refinement(Estacionamento_r1))==(?);
  External_List_VisibleVariables(Refinement(Estacionamento_r1))==(?);
  Expanded_List_VisibleVariables(Refinement(Estacionamento_r1))==(?);
  List_VisibleVariables(Refinement(Estacionamento_r1))==(?);
  Internal_List_VisibleVariables(Refinement(Estacionamento_r1))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Estacionamento_r1))==(cv)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Estacionamento_r1))==(btrue);
  Abstract_List_Invariant(Refinement(Estacionamento_r1))==(status: VAGAS +-> STATUS_VAGA & tipo: VAGAS +-> TIPOS & card(tipo|>{comum})<=qtd_max(comum) & card(tipo|>{idoso})<=qtd_max(idoso) & card(tipo|>{deficiente})<=qtd_max(deficiente) & qtd_max: TIPOS --> NAT & ini: BOOL);
  Expanded_List_Invariant(Refinement(Estacionamento_r1))==(qtd_max: TIPOS --> NAT & ini: BOOL);
  Context_List_Invariant(Refinement(Estacionamento_r1))==(btrue);
  List_Invariant(Refinement(Estacionamento_r1))==(cv: 0..MAX_INT & cv = card(tipo) & cv = card(status) & cv<=qtd_max(comum)+qtd_max(idoso)+qtd_max(deficiente))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Estacionamento_r1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Refinement(Estacionamento_r1))==(btrue);
  Expanded_List_Assertions(Refinement(Estacionamento_r1))==(btrue);
  Context_List_Assertions(Refinement(Estacionamento_r1))==(btrue);
  List_Assertions(Refinement(Estacionamento_r1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Estacionamento_r1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Estacionamento_r1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Estacionamento_r1))==(qtd_max,ini:=TIPOS*{0},FALSE;cv:=0;tipo:={};status:={});
  Context_List_Initialisation(Refinement(Estacionamento_r1))==(skip);
  List_Initialisation(Refinement(Estacionamento_r1))==(cv:=0;tipo:={};status:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Estacionamento_r1))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar,init);
  List_Operations(Refinement(Estacionamento_r1))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar,init)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Estacionamento_r1),init)==(max_idosos,max_deficientes,max_comuns);
  List_Input(Refinement(Estacionamento_r1),criar)==(tt);
  List_Input(Refinement(Estacionamento_r1),excluir)==(vv);
  List_Input(Refinement(Estacionamento_r1),ocupar)==(vv);
  List_Input(Refinement(Estacionamento_r1),liberar)==(vv);
  List_Input(Refinement(Estacionamento_r1),get_cor_lampada)==(vv);
  List_Input(Refinement(Estacionamento_r1),get_tipo_vaga)==(vv);
  List_Input(Refinement(Estacionamento_r1),get_info_painel)==(?);
  List_Input(Refinement(Estacionamento_r1),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Estacionamento_r1),init)==(?);
  List_Output(Refinement(Estacionamento_r1),criar)==(?);
  List_Output(Refinement(Estacionamento_r1),excluir)==(?);
  List_Output(Refinement(Estacionamento_r1),ocupar)==(?);
  List_Output(Refinement(Estacionamento_r1),liberar)==(?);
  List_Output(Refinement(Estacionamento_r1),get_cor_lampada)==(cc);
  List_Output(Refinement(Estacionamento_r1),get_tipo_vaga)==(tt);
  List_Output(Refinement(Estacionamento_r1),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Refinement(Estacionamento_r1),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Estacionamento_r1),init)==(init(max_idosos,max_deficientes,max_comuns));
  List_Header(Refinement(Estacionamento_r1),criar)==(criar(tt));
  List_Header(Refinement(Estacionamento_r1),excluir)==(excluir(vv));
  List_Header(Refinement(Estacionamento_r1),ocupar)==(ocupar(vv));
  List_Header(Refinement(Estacionamento_r1),liberar)==(liberar(vv));
  List_Header(Refinement(Estacionamento_r1),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Refinement(Estacionamento_r1),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Refinement(Estacionamento_r1),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Refinement(Estacionamento_r1),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Estacionamento_r1),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT);
  List_Precondition(Refinement(Estacionamento_r1),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT);
  Own_Precondition(Refinement(Estacionamento_r1),criar)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),criar)==(tt: TIPOS & card(tipo|>{tt})<qtd_max(tt) & #vv.(vv: VAGAS & vv/:dom(tipo) & vv/:dom(status)));
  Own_Precondition(Refinement(Estacionamento_r1),excluir)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),excluir)==(vv: VAGAS & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(Estacionamento_r1),ocupar)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),ocupar)==(vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(Estacionamento_r1),liberar)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),liberar)==(vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Refinement(Estacionamento_r1),get_cor_lampada)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Refinement(Estacionamento_r1),get_tipo_vaga)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Refinement(Estacionamento_r1),get_info_painel)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Refinement(Estacionamento_r1),indicar)==(btrue);
  List_Precondition(Refinement(Estacionamento_r1),indicar)==(vv: VAGAS & tt: TIPOS & #ww.(ww: VAGAS & ww: dom(tipo) & tipo(ww) = tt & ww: dom(status) & status(ww) = livre) & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Estacionamento_r1),indicar)==(vv: VAGAS & tt: TIPOS & #ww.(ww: VAGAS & ww: dom(tipo) & tipo(ww) = tt & ww: dom(status) & status(ww) = livre) & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) ==> vv:=uu));
  Expanded_List_Substitution(Refinement(Estacionamento_r1),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & zz: dom(status) & status(zz) = ocupada | 1));
  Expanded_List_Substitution(Refinement(Estacionamento_r1),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Refinement(Estacionamento_r1),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES | cc:=vermelha;(status(vv) = livre ==> (not(tipo(vv) = comum) & not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & not(tipo(vv) = comum) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) & tipo(vv) = comum ==> cc:=verde [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) & not(tipo(vv) = comum) ==> skip) [] not(status(vv) = livre) ==> skip));
  Expanded_List_Substitution(Refinement(Estacionamento_r1),liberar)==(vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Refinement(Estacionamento_r1),ocupar)==(vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Refinement(Estacionamento_r1),excluir)==(vv: VAGAS & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | cv:=cv-1;tipo:={vv}<<|tipo;status:={vv}<<|status);
  Expanded_List_Substitution(Refinement(Estacionamento_r1),criar)==(tt: TIPOS & card(tipo|>{tt})<qtd_max(tt) & #vv.(vv: VAGAS & vv/:dom(tipo) & vv/:dom(status)) | cv:=cv+1;@vv.(vv: VAGAS-dom(tipo)-dom(status) ==> (tipo:=tipo<+{vv|->tt};status:=status<+{vv|->livre})));
  List_Substitution(Refinement(Estacionamento_r1),init)==(qtd_max:={idoso|->max_idosos,comum|->max_comuns,deficiente|->max_deficientes} || ini:=TRUE);
  Expanded_List_Substitution(Refinement(Estacionamento_r1),init)==(ini = FALSE & max_idosos: NAT & max_comuns: NAT & max_deficientes: NAT | qtd_max,ini:={idoso|->max_idosos,comum|->max_comuns,deficiente|->max_deficientes},TRUE);
  List_Substitution(Refinement(Estacionamento_r1),criar)==(cv:=cv+1;ANY vv WHERE vv: VAGAS-dom(tipo)-dom(status) THEN tipo(vv):=tt;status(vv):=livre END);
  List_Substitution(Refinement(Estacionamento_r1),excluir)==(cv:=cv-1;tipo:={vv}<<|tipo;status:={vv}<<|status);
  List_Substitution(Refinement(Estacionamento_r1),ocupar)==(status(vv):=ocupada);
  List_Substitution(Refinement(Estacionamento_r1),liberar)==(status(vv):=livre);
  List_Substitution(Refinement(Estacionamento_r1),get_cor_lampada)==(cc:=vermelha;IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela OR comum THEN cc:=verde END END END);
  List_Substitution(Refinement(Estacionamento_r1),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Refinement(Estacionamento_r1),get_info_painel)==(qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & zz: dom(status) & status(zz) = ocupada | 1));
  List_Substitution(Refinement(Estacionamento_r1),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) THEN vv:=uu END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Estacionamento_r1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Estacionamento_r1),Machine(QtdMax))==(?);
  List_Instanciated_Parameters(Refinement(Estacionamento_r1),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Estacionamento_r1),Machine(QtdMax))==(btrue);
  List_Constraints(Refinement(Estacionamento_r1))==(btrue);
  List_Context_Constraints(Refinement(Estacionamento_r1))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Estacionamento_r1))==(?);
  Inherited_List_Constants(Refinement(Estacionamento_r1))==(?);
  List_Constants(Refinement(Estacionamento_r1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Estacionamento_r1),VAGAS)==(?);
  Context_List_Enumerated(Refinement(Estacionamento_r1))==(TIPOS,STATUS_VAGA,CORES,SIM_NAO);
  Context_List_Defered(Refinement(Estacionamento_r1))==(?);
  Context_List_Sets(Refinement(Estacionamento_r1))==(TIPOS,STATUS_VAGA,CORES,SIM_NAO);
  List_Valuable_Sets(Refinement(Estacionamento_r1))==(VAGAS);
  Inherited_List_Enumerated(Refinement(Estacionamento_r1))==(?);
  Inherited_List_Defered(Refinement(Estacionamento_r1))==(VAGAS);
  Inherited_List_Sets(Refinement(Estacionamento_r1))==(VAGAS);
  List_Enumerated(Refinement(Estacionamento_r1))==(?);
  List_Defered(Refinement(Estacionamento_r1))==(?);
  List_Sets(Refinement(Estacionamento_r1))==(?);
  Set_Definition(Refinement(Estacionamento_r1),SIM_NAO)==({sim,nao});
  Set_Definition(Refinement(Estacionamento_r1),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Refinement(Estacionamento_r1),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Refinement(Estacionamento_r1),TIPOS)==({idoso,deficiente,comum})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Estacionamento_r1))==(?);
  Expanded_List_HiddenConstants(Refinement(Estacionamento_r1))==(?);
  List_HiddenConstants(Refinement(Estacionamento_r1))==(?);
  External_List_HiddenConstants(Refinement(Estacionamento_r1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Estacionamento_r1))==(VAGAS: FIN(INTEGER) & not(VAGAS = {}));
  Context_List_Properties(Refinement(Estacionamento_r1))==(MAX_INT: NAT1 & MAX_INT = 1000 & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}) & SIM_NAO: FIN(INTEGER) & not(SIM_NAO = {}));
  Inherited_List_Properties(Refinement(Estacionamento_r1))==(btrue);
  List_Properties(Refinement(Estacionamento_r1))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Estacionamento_r1),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Refinement(Estacionamento_r1))==(?);
  Seen_Context_List_Invariant(Refinement(Estacionamento_r1))==(btrue);
  Seen_Context_List_Assertions(Refinement(Estacionamento_r1))==(btrue);
  Seen_Context_List_Properties(Refinement(Estacionamento_r1))==(btrue);
  Seen_List_Constraints(Refinement(Estacionamento_r1))==(btrue);
  Seen_List_Operations(Refinement(Estacionamento_r1),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Refinement(Estacionamento_r1),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Estacionamento_r1),init)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),criar)==(Var(vv) == atype(VAGAS,?,?));
  List_ANY_Var(Refinement(Estacionamento_r1),excluir)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),ocupar)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),liberar)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),get_cor_lampada)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),get_tipo_vaga)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),get_info_painel)==(?);
  List_ANY_Var(Refinement(Estacionamento_r1),indicar)==(Var(uu) == atype(VAGAS,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Estacionamento_r1)) == (? | ? | status,tipo,cv | ini,qtd_max | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)),included(Machine(QtdMax)) | ? | Estacionamento_r1);
  List_Of_HiddenCst_Ids(Refinement(Estacionamento_r1)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Estacionamento_r1)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Estacionamento_r1)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Estacionamento_r1)) == (seen(Machine(TiposComuns)): (MAX_INT,TIPOS,STATUS_VAGA,CORES,SIM_NAO,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(QtdMax)) == (? | ? | ini,qtd_max | ? | init | ? | seen(Machine(TiposComuns)) | ? | QtdMax);
  List_Of_HiddenCst_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(QtdMax)) == (?);
  List_Of_VisibleVar_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(QtdMax)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,TIPOS,STATUS_VAGA,CORES,SIM_NAO,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha,sim,nao | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Estacionamento_r1)) == (Type(VAGAS) == Cst(SetOf(atype(VAGAS,"[VAGAS","]VAGAS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Estacionamento_r1)) == (Type(qtd_max) == Mvl(SetOf(etype(TIPOS,0,2)*btype(INTEGER,0,MAXINT)));Type(ini) == Mvl(btype(BOOL,?,?));Type(status) == Mvl(SetOf(atype(VAGAS,?,?)*etype(STATUS_VAGA,?,?)));Type(tipo) == Mvl(SetOf(atype(VAGAS,?,?)*etype(TIPOS,?,?)));Type(cv) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Estacionamento_r1)) == (Type(init) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(indicar) == Cst(atype(VAGAS,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGAS,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGAS,?,?));Type(liberar) == Cst(No_type,atype(VAGAS,?,?));Type(ocupar) == Cst(No_type,atype(VAGAS,?,?));Type(excluir) == Cst(No_type,atype(VAGAS,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)))
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
