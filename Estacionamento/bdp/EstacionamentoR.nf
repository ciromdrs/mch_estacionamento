Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(EstacionamentoR))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(EstacionamentoR))==(Machine(Estacionamento));
  Level(Refinement(EstacionamentoR))==(1);
  Upper_Level(Refinement(EstacionamentoR))==(Machine(Estacionamento))
END
&
THEORY LoadedStructureX IS
  Refinement(EstacionamentoR)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(EstacionamentoR))==(TiposComuns)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(EstacionamentoR))==(?);
  List_Includes(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(EstacionamentoR))==(?);
  Context_List_Variables(Refinement(EstacionamentoR))==(?);
  Abstract_List_Variables(Refinement(EstacionamentoR))==(tipo,status);
  Local_List_Variables(Refinement(EstacionamentoR))==(ativo,status,tipo);
  List_Variables(Refinement(EstacionamentoR))==(ativo,status,tipo);
  External_List_Variables(Refinement(EstacionamentoR))==(ativo,status,tipo)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(EstacionamentoR))==(?);
  Abstract_List_VisibleVariables(Refinement(EstacionamentoR))==(?);
  External_List_VisibleVariables(Refinement(EstacionamentoR))==(?);
  Expanded_List_VisibleVariables(Refinement(EstacionamentoR))==(?);
  List_VisibleVariables(Refinement(EstacionamentoR))==(?);
  Internal_List_VisibleVariables(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(EstacionamentoR))==(ativo)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(EstacionamentoR))==(btrue);
  Expanded_List_Invariant(Refinement(EstacionamentoR))==(btrue);
  Abstract_List_Invariant(Refinement(EstacionamentoR))==(status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Refinement(EstacionamentoR))==(btrue);
  List_Invariant(Refinement(EstacionamentoR))==(ativo: VAGA --> BOOL & dom(ativo|>{TRUE}) = dom(tipo) & dom(ativo|>{TRUE}) = dom(status))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(EstacionamentoR))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(EstacionamentoR))==(btrue);
  Abstract_List_Assertions(Refinement(EstacionamentoR))==(btrue);
  Context_List_Assertions(Refinement(EstacionamentoR))==(btrue);
  List_Assertions(Refinement(EstacionamentoR))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(EstacionamentoR))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(EstacionamentoR))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(EstacionamentoR))==(tipo:={};status:={};ativo:=VAGA*{FALSE});
  Context_List_Initialisation(Refinement(EstacionamentoR))==(skip);
  List_Initialisation(Refinement(EstacionamentoR))==(tipo:={};status:={};ativo:=VAGA*{FALSE})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(EstacionamentoR))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar);
  List_Operations(Refinement(EstacionamentoR))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Refinement(EstacionamentoR),criar)==(tt);
  List_Input(Refinement(EstacionamentoR),excluir)==(vv);
  List_Input(Refinement(EstacionamentoR),ocupar)==(vv);
  List_Input(Refinement(EstacionamentoR),liberar)==(vv);
  List_Input(Refinement(EstacionamentoR),get_cor_lampada)==(vv);
  List_Input(Refinement(EstacionamentoR),get_tipo_vaga)==(vv);
  List_Input(Refinement(EstacionamentoR),get_info_painel)==(?);
  List_Input(Refinement(EstacionamentoR),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(EstacionamentoR),criar)==(?);
  List_Output(Refinement(EstacionamentoR),excluir)==(?);
  List_Output(Refinement(EstacionamentoR),ocupar)==(?);
  List_Output(Refinement(EstacionamentoR),liberar)==(?);
  List_Output(Refinement(EstacionamentoR),get_cor_lampada)==(cc);
  List_Output(Refinement(EstacionamentoR),get_tipo_vaga)==(tt);
  List_Output(Refinement(EstacionamentoR),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Refinement(EstacionamentoR),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(EstacionamentoR),criar)==(criar(tt));
  List_Header(Refinement(EstacionamentoR),excluir)==(excluir(vv));
  List_Header(Refinement(EstacionamentoR),ocupar)==(ocupar(vv));
  List_Header(Refinement(EstacionamentoR),liberar)==(liberar(vv));
  List_Header(Refinement(EstacionamentoR),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Refinement(EstacionamentoR),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Refinement(EstacionamentoR),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Refinement(EstacionamentoR),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(EstacionamentoR),criar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Refinement(EstacionamentoR),excluir)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(EstacionamentoR),ocupar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),ocupar)==(vv: dom(status) & status(vv) = livre);
  Own_Precondition(Refinement(EstacionamentoR),liberar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),liberar)==(vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Refinement(EstacionamentoR),get_cor_lampada)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Refinement(EstacionamentoR),get_tipo_vaga)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Refinement(EstacionamentoR),get_info_painel)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  Own_Precondition(Refinement(EstacionamentoR),indicar)==(btrue);
  List_Precondition(Refinement(EstacionamentoR),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(EstacionamentoR),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) ==> vv:=uu));
  Expanded_List_Substitution(Refinement(EstacionamentoR),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1));
  Expanded_List_Substitution(Refinement(EstacionamentoR),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Refinement(EstacionamentoR),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES | status(vv) = livre ==> (not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) ==> cc:=verde) [] not(status(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Refinement(EstacionamentoR),liberar)==(vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Refinement(EstacionamentoR),ocupar)==(vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Refinement(EstacionamentoR),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | ativo:=ativo<+{vv|->FALSE};tipo:={vv}<<|tipo;status:={vv}<<|status);
  Expanded_List_Substitution(Refinement(EstacionamentoR),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @vv.(vv: VAGA & vv/:dom(tipo) & vv/:dom(status) & ativo(vv) = FALSE ==> (ativo:=ativo<+{vv|->TRUE};tipo:=tipo<+{vv|->tt};status:=status<+{vv|->livre})));
  List_Substitution(Refinement(EstacionamentoR),criar)==(ANY vv WHERE vv: VAGA & vv/:dom(tipo) & vv/:dom(status) & ativo(vv) = FALSE THEN ativo(vv):=TRUE;tipo(vv):=tt;status(vv):=livre END);
  List_Substitution(Refinement(EstacionamentoR),excluir)==(ativo(vv):=FALSE;tipo:={vv}<<|tipo;status:={vv}<<|status);
  List_Substitution(Refinement(EstacionamentoR),ocupar)==(status(vv):=ocupada);
  List_Substitution(Refinement(EstacionamentoR),liberar)==(status(vv):=livre);
  List_Substitution(Refinement(EstacionamentoR),get_cor_lampada)==(IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Refinement(EstacionamentoR),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Refinement(EstacionamentoR),get_info_painel)==(qc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE | 1);oc:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = comum & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE | 1);oi:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = idoso & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1);qd:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE | 1);od:=SIGMA(zz).(zz: dom(tipo) & tipo(zz) = deficiente & ativo(zz) = TRUE & zz: dom(status) & status(zz) = ocupada | 1));
  List_Substitution(Refinement(EstacionamentoR),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) THEN vv:=uu END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(EstacionamentoR),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(EstacionamentoR))==(btrue);
  List_Context_Constraints(Refinement(EstacionamentoR))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(EstacionamentoR))==(VAGA);
  Inherited_List_Constants(Refinement(EstacionamentoR))==(VAGA);
  List_Constants(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(EstacionamentoR),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Refinement(EstacionamentoR))==(TIPOS,STATUS,CORES);
  Context_List_Defered(Refinement(EstacionamentoR))==(?);
  Context_List_Sets(Refinement(EstacionamentoR))==(TIPOS,STATUS,CORES);
  List_Valuable_Sets(Refinement(EstacionamentoR))==(?);
  Inherited_List_Enumerated(Refinement(EstacionamentoR))==(?);
  Inherited_List_Defered(Refinement(EstacionamentoR))==(?);
  Inherited_List_Sets(Refinement(EstacionamentoR))==(?);
  List_Enumerated(Refinement(EstacionamentoR))==(?);
  List_Defered(Refinement(EstacionamentoR))==(?);
  List_Sets(Refinement(EstacionamentoR))==(?);
  Set_Definition(Refinement(EstacionamentoR),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Refinement(EstacionamentoR),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(EstacionamentoR))==(?);
  Expanded_List_HiddenConstants(Refinement(EstacionamentoR))==(?);
  List_HiddenConstants(Refinement(EstacionamentoR))==(?);
  External_List_HiddenConstants(Refinement(EstacionamentoR))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(EstacionamentoR))==(VAGA = 1..MAX_INT);
  Context_List_Properties(Refinement(EstacionamentoR))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Refinement(EstacionamentoR))==(btrue);
  List_Properties(Refinement(EstacionamentoR))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(EstacionamentoR),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Refinement(EstacionamentoR))==(?);
  Seen_Context_List_Invariant(Refinement(EstacionamentoR))==(btrue);
  Seen_Context_List_Assertions(Refinement(EstacionamentoR))==(btrue);
  Seen_Context_List_Properties(Refinement(EstacionamentoR))==(btrue);
  Seen_List_Constraints(Refinement(EstacionamentoR))==(btrue);
  Seen_List_Operations(Refinement(EstacionamentoR),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Refinement(EstacionamentoR),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(EstacionamentoR),criar)==(Var(vv) == btype(INTEGER,?,?));
  List_ANY_Var(Refinement(EstacionamentoR),excluir)==(?);
  List_ANY_Var(Refinement(EstacionamentoR),ocupar)==(?);
  List_ANY_Var(Refinement(EstacionamentoR),liberar)==(?);
  List_ANY_Var(Refinement(EstacionamentoR),get_cor_lampada)==(?);
  List_ANY_Var(Refinement(EstacionamentoR),get_tipo_vaga)==(?);
  List_ANY_Var(Refinement(EstacionamentoR),get_info_painel)==(?);
  List_ANY_Var(Refinement(EstacionamentoR),indicar)==(Var(uu) == btype(INTEGER,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(EstacionamentoR)) == (? | ? | ativo,status,tipo | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)) | ? | EstacionamentoR);
  List_Of_HiddenCst_Ids(Refinement(EstacionamentoR)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(EstacionamentoR)) == (?);
  List_Of_VisibleVar_Ids(Refinement(EstacionamentoR)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(EstacionamentoR)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(EstacionamentoR)) == (Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(EstacionamentoR)) == (Type(ativo) == Mvl(SetOf(btype(INTEGER,"[VAGA","]VAGA")*btype(BOOL,0,1)));Type(status) == Mvl(SetOf(btype(INTEGER,?,?)*etype(STATUS,?,?)));Type(tipo) == Mvl(SetOf(btype(INTEGER,?,?)*etype(TIPOS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(EstacionamentoR)) == (Type(indicar) == Cst(btype(INTEGER,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),btype(INTEGER,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),btype(INTEGER,?,?));Type(liberar) == Cst(No_type,btype(INTEGER,?,?));Type(ocupar) == Cst(No_type,btype(INTEGER,?,?));Type(excluir) == Cst(No_type,btype(INTEGER,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)))
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
