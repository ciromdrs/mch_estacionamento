Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(EstacionamentoR2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(EstacionamentoR2))==(Machine(Estacionamento));
  Level(Refinement(EstacionamentoR2))==(2);
  Upper_Level(Refinement(EstacionamentoR2))==(Refinement(EstacionamentoR1))
END
&
THEORY LoadedStructureX IS
  Refinement(EstacionamentoR2)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(EstacionamentoR2))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(EstacionamentoR2))==(?);
  List_Includes(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(EstacionamentoR2))==(?);
  Context_List_Variables(Refinement(EstacionamentoR2))==(?);
  Abstract_List_Variables(Refinement(EstacionamentoR2))==(ativo,tipo,status,tipo,status);
  Local_List_Variables(Refinement(EstacionamentoR2))==(ids,ativo,tipo,status);
  List_Variables(Refinement(EstacionamentoR2))==(ids,ativo,tipo,status);
  External_List_Variables(Refinement(EstacionamentoR2))==(ids,ativo,tipo,status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(EstacionamentoR2))==(?);
  Abstract_List_VisibleVariables(Refinement(EstacionamentoR2))==(?);
  External_List_VisibleVariables(Refinement(EstacionamentoR2))==(?);
  Expanded_List_VisibleVariables(Refinement(EstacionamentoR2))==(?);
  List_VisibleVariables(Refinement(EstacionamentoR2))==(?);
  Internal_List_VisibleVariables(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(EstacionamentoR2))==(ids)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(EstacionamentoR2))==(btrue);
  Expanded_List_Invariant(Refinement(EstacionamentoR2))==(btrue);
  Abstract_List_Invariant(Refinement(EstacionamentoR2))==(ativo <: VAGA & ativo = dom(tipo) & ativo = dom(status) & status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Refinement(EstacionamentoR2))==(btrue);
  List_Invariant(Refinement(EstacionamentoR2))==(ids: 1..MAX_INT --> VAGA & ran(ids|>ativo) = dom(status) & ran(ids|>ativo) = dom(tipo))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(EstacionamentoR2))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(EstacionamentoR2))==(btrue);
  Abstract_List_Assertions(Refinement(EstacionamentoR2))==(btrue);
  Context_List_Assertions(Refinement(EstacionamentoR2))==(btrue);
  List_Assertions(Refinement(EstacionamentoR2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(EstacionamentoR2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(EstacionamentoR2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(EstacionamentoR2))==(status:={};tipo:={};ativo:={};@vv.(vv: VAGA ==> ids:=(1..MAX_INT)*{vv}));
  Context_List_Initialisation(Refinement(EstacionamentoR2))==(skip);
  List_Initialisation(Refinement(EstacionamentoR2))==(status:={};tipo:={};ativo:={};ANY vv WHERE vv: VAGA THEN ids:=(1..MAX_INT)*{vv} END)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(EstacionamentoR2))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar);
  List_Operations(Refinement(EstacionamentoR2))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Refinement(EstacionamentoR2),criar)==(tt);
  List_Input(Refinement(EstacionamentoR2),excluir)==(vv);
  List_Input(Refinement(EstacionamentoR2),ocupar)==(vv);
  List_Input(Refinement(EstacionamentoR2),liberar)==(vv);
  List_Input(Refinement(EstacionamentoR2),get_cor_lampada)==(vv);
  List_Input(Refinement(EstacionamentoR2),get_tipo_vaga)==(vv);
  List_Input(Refinement(EstacionamentoR2),get_info_painel)==(?);
  List_Input(Refinement(EstacionamentoR2),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(EstacionamentoR2),criar)==(?);
  List_Output(Refinement(EstacionamentoR2),excluir)==(?);
  List_Output(Refinement(EstacionamentoR2),ocupar)==(?);
  List_Output(Refinement(EstacionamentoR2),liberar)==(?);
  List_Output(Refinement(EstacionamentoR2),get_cor_lampada)==(cc);
  List_Output(Refinement(EstacionamentoR2),get_tipo_vaga)==(tt);
  List_Output(Refinement(EstacionamentoR2),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Refinement(EstacionamentoR2),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(EstacionamentoR2),criar)==(criar(tt));
  List_Header(Refinement(EstacionamentoR2),excluir)==(excluir(vv));
  List_Header(Refinement(EstacionamentoR2),ocupar)==(ocupar(vv));
  List_Header(Refinement(EstacionamentoR2),liberar)==(liberar(vv));
  List_Header(Refinement(EstacionamentoR2),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Refinement(EstacionamentoR2),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Refinement(EstacionamentoR2),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Refinement(EstacionamentoR2),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(EstacionamentoR2),criar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR2),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Refinement(EstacionamentoR2),excluir)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR2),excluir)==(vv: ativo & vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(EstacionamentoR2),ocupar)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR2),ocupar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(EstacionamentoR2),liberar)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR2),liberar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Refinement(EstacionamentoR2),get_cor_lampada)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR2),get_cor_lampada)==(vv: ativo & vv: ativo & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Refinement(EstacionamentoR2),get_tipo_vaga)==(vv: ativo);
  List_Precondition(Refinement(EstacionamentoR2),get_tipo_vaga)==(vv: ativo & vv: ativo & vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Refinement(EstacionamentoR2),get_info_painel)==(btrue);
  List_Precondition(Refinement(EstacionamentoR2),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Refinement(EstacionamentoR2),indicar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR2),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(EstacionamentoR2),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) & uu: ativo ==> vv:=uu));
  Expanded_List_Substitution(Refinement(EstacionamentoR2),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & zz: ativo | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & zz: ativo & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & zz: ativo | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & zz: ativo & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & zz: ativo | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & zz: ativo & zz: dom(status) & status(zz) = ocupada | 1));
  Expanded_List_Substitution(Refinement(EstacionamentoR2),get_tipo_vaga)==(vv: ativo & vv: ativo & vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Refinement(EstacionamentoR2),get_cor_lampada)==(vv: ativo & vv: ativo & vv: dom(status) & vv: dom(tipo) & cc: CORES | status(vv) = livre ==> (not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) ==> cc:=verde) [] not(status(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Refinement(EstacionamentoR2),liberar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Refinement(EstacionamentoR2),ocupar)==(vv: ativo & vv: ativo & vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Refinement(EstacionamentoR2),excluir)==(vv: ativo & vv: ativo & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | ativo:=ativo-{vv};tipo:={vv}<<|tipo;status:={vv}<<|status);
  Expanded_List_Substitution(Refinement(EstacionamentoR2),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @(vv,ii).(vv: VAGA & vv/:ativo & ii: dom(ids|>>ativo) ==> (ids:=ids<+{ii|->vv};ativo:=ativo\/{vv};tipo:=tipo<+{vv|->tt};status:=status<+{vv|->livre})));
  List_Substitution(Refinement(EstacionamentoR2),criar)==(ANY vv,ii WHERE vv: VAGA & vv/:ativo & ii: dom(ids|>>ativo) THEN ids(ii):=vv;ativo:=ativo\/{vv};tipo(vv):=tt;status(vv):=livre END);
  List_Substitution(Refinement(EstacionamentoR2),excluir)==(ativo:=ativo-{vv};tipo:={vv}<<|tipo;status:={vv}<<|status);
  List_Substitution(Refinement(EstacionamentoR2),ocupar)==(status(vv):=ocupada);
  List_Substitution(Refinement(EstacionamentoR2),liberar)==(status(vv):=livre);
  List_Substitution(Refinement(EstacionamentoR2),get_cor_lampada)==(IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Refinement(EstacionamentoR2),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Refinement(EstacionamentoR2),get_info_painel)==(qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & zz: ativo | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & zz: ativo & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & zz: ativo | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & zz: ativo & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & zz: ativo | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & zz: ativo & zz: dom(status) & status(zz) = ocupada | 1));
  List_Substitution(Refinement(EstacionamentoR2),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) & uu: ativo THEN vv:=uu END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(EstacionamentoR2),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(EstacionamentoR2))==(btrue);
  List_Context_Constraints(Refinement(EstacionamentoR2))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(EstacionamentoR2))==(?);
  Inherited_List_Constants(Refinement(EstacionamentoR2))==(?);
  List_Constants(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(EstacionamentoR2),VAGA)==(?);
  Context_List_Enumerated(Refinement(EstacionamentoR2))==(TIPOS,STATUS,CORES);
  Context_List_Defered(Refinement(EstacionamentoR2))==(?);
  Context_List_Sets(Refinement(EstacionamentoR2))==(TIPOS,STATUS,CORES);
  List_Valuable_Sets(Refinement(EstacionamentoR2))==(VAGA);
  Inherited_List_Enumerated(Refinement(EstacionamentoR2))==(?);
  Inherited_List_Defered(Refinement(EstacionamentoR2))==(VAGA);
  Inherited_List_Sets(Refinement(EstacionamentoR2))==(VAGA);
  List_Enumerated(Refinement(EstacionamentoR2))==(?);
  List_Defered(Refinement(EstacionamentoR2))==(?);
  List_Sets(Refinement(EstacionamentoR2))==(?);
  Set_Definition(Refinement(EstacionamentoR2),CORES)==({azul,amarela,verde,vermelha});
  Set_Definition(Refinement(EstacionamentoR2),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Refinement(EstacionamentoR2),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(EstacionamentoR2))==(?);
  Expanded_List_HiddenConstants(Refinement(EstacionamentoR2))==(?);
  List_HiddenConstants(Refinement(EstacionamentoR2))==(?);
  External_List_HiddenConstants(Refinement(EstacionamentoR2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(EstacionamentoR2))==(VAGA: FIN(INTEGER) & not(VAGA = {}));
  Context_List_Properties(Refinement(EstacionamentoR2))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Refinement(EstacionamentoR2))==(btrue);
  List_Properties(Refinement(EstacionamentoR2))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(EstacionamentoR2),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Refinement(EstacionamentoR2))==(?);
  Seen_Context_List_Invariant(Refinement(EstacionamentoR2))==(btrue);
  Seen_Context_List_Assertions(Refinement(EstacionamentoR2))==(btrue);
  Seen_Context_List_Properties(Refinement(EstacionamentoR2))==(btrue);
  Seen_List_Constraints(Refinement(EstacionamentoR2))==(btrue);
  Seen_List_Operations(Refinement(EstacionamentoR2),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Refinement(EstacionamentoR2),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(EstacionamentoR2),?)==(Var(vv) == atype(VAGA,?,?));
  List_ANY_Var(Refinement(EstacionamentoR2),criar)==((Var(vv) == atype(VAGA,?,?)),(Var(ii) == btype(INTEGER,?,?)));
  List_ANY_Var(Refinement(EstacionamentoR2),excluir)==(?);
  List_ANY_Var(Refinement(EstacionamentoR2),ocupar)==(?);
  List_ANY_Var(Refinement(EstacionamentoR2),liberar)==(?);
  List_ANY_Var(Refinement(EstacionamentoR2),get_cor_lampada)==(?);
  List_ANY_Var(Refinement(EstacionamentoR2),get_tipo_vaga)==(?);
  List_ANY_Var(Refinement(EstacionamentoR2),get_info_painel)==(?);
  List_ANY_Var(Refinement(EstacionamentoR2),indicar)==(Var(uu) == atype(VAGA,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(EstacionamentoR2)) == (? | ? | ids,ativo,tipo,status | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)) | ? | EstacionamentoR2);
  List_Of_HiddenCst_Ids(Refinement(EstacionamentoR2)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(EstacionamentoR2)) == (?);
  List_Of_VisibleVar_Ids(Refinement(EstacionamentoR2)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(EstacionamentoR2)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(EstacionamentoR2)) == (Type(VAGA) == Cst(SetOf(atype(VAGA,"[VAGA","]VAGA"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(EstacionamentoR2)) == (Type(ids) == Mvl(SetOf(btype(INTEGER,1,MAX_INT)*atype(VAGA,"[VAGA","]VAGA")));Type(ativo) == Mvl(SetOf(atype(VAGA,?,?)));Type(tipo) == Mvl(SetOf(atype(VAGA,?,?)*etype(TIPOS,?,?)));Type(status) == Mvl(SetOf(atype(VAGA,?,?)*etype(STATUS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(EstacionamentoR2)) == (Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(excluir) == Cst(No_type,atype(VAGA,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)))
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
