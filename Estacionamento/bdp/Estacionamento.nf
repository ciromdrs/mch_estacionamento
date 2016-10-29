Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Estacionamento))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Estacionamento))==(Machine(Estacionamento));
  Level(Machine(Estacionamento))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Estacionamento)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Estacionamento))==(TiposComuns)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Estacionamento))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Estacionamento))==(?);
  List_Includes(Machine(Estacionamento))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Estacionamento))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Estacionamento))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Estacionamento))==(?);
  Context_List_Variables(Machine(Estacionamento))==(?);
  Abstract_List_Variables(Machine(Estacionamento))==(?);
  Local_List_Variables(Machine(Estacionamento))==(tipo,status);
  List_Variables(Machine(Estacionamento))==(tipo,status);
  External_List_Variables(Machine(Estacionamento))==(tipo,status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Estacionamento))==(?);
  Abstract_List_VisibleVariables(Machine(Estacionamento))==(?);
  External_List_VisibleVariables(Machine(Estacionamento))==(?);
  Expanded_List_VisibleVariables(Machine(Estacionamento))==(?);
  List_VisibleVariables(Machine(Estacionamento))==(?);
  Internal_List_VisibleVariables(Machine(Estacionamento))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Estacionamento))==(btrue);
  Gluing_List_Invariant(Machine(Estacionamento))==(btrue);
  Expanded_List_Invariant(Machine(Estacionamento))==(btrue);
  Abstract_List_Invariant(Machine(Estacionamento))==(btrue);
  Context_List_Invariant(Machine(Estacionamento))==(btrue);
  List_Invariant(Machine(Estacionamento))==(status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Estacionamento))==(btrue);
  Abstract_List_Assertions(Machine(Estacionamento))==(btrue);
  Context_List_Assertions(Machine(Estacionamento))==(btrue);
  List_Assertions(Machine(Estacionamento))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Estacionamento))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Estacionamento))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Estacionamento))==(status,tipo:={},{});
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(status:={} || tipo:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Estacionamento))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Estacionamento),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Estacionamento))==(btrue);
  List_Constraints(Machine(Estacionamento))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Estacionamento))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar);
  List_Operations(Machine(Estacionamento))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),criar)==(tt);
  List_Input(Machine(Estacionamento),excluir)==(vv);
  List_Input(Machine(Estacionamento),ocupar)==(vv);
  List_Input(Machine(Estacionamento),liberar)==(vv);
  List_Input(Machine(Estacionamento),get_cor_lampada)==(vv);
  List_Input(Machine(Estacionamento),get_tipo_vaga)==(vv);
  List_Input(Machine(Estacionamento),get_info_painel)==(?);
  List_Input(Machine(Estacionamento),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Estacionamento),criar)==(?);
  List_Output(Machine(Estacionamento),excluir)==(?);
  List_Output(Machine(Estacionamento),ocupar)==(?);
  List_Output(Machine(Estacionamento),liberar)==(?);
  List_Output(Machine(Estacionamento),get_cor_lampada)==(cc);
  List_Output(Machine(Estacionamento),get_tipo_vaga)==(tt);
  List_Output(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Machine(Estacionamento),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Estacionamento),criar)==(criar(tt));
  List_Header(Machine(Estacionamento),excluir)==(excluir(vv));
  List_Header(Machine(Estacionamento),ocupar)==(ocupar(vv));
  List_Header(Machine(Estacionamento),liberar)==(liberar(vv));
  List_Header(Machine(Estacionamento),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Machine(Estacionamento),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Machine(Estacionamento),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  List_Precondition(Machine(Estacionamento),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),ocupar)==(vv: dom(status) & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),liberar)==(vv: dom(status) & status(vv) = ocupada);
  List_Precondition(Machine(Estacionamento),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES);
  List_Precondition(Machine(Estacionamento),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS);
  List_Precondition(Machine(Estacionamento),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  List_Precondition(Machine(Estacionamento),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) ==> vv:=uu));
  Expanded_List_Substitution(Machine(Estacionamento),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc,oc,qi,oi,qd,od:=card(tipo|>{comum}),card(dom(tipo|>{comum})<|status|>{ocupada}),card(tipo|>{idoso}),card(dom(tipo|>{idoso})<|status|>{ocupada}),card(tipo|>{deficiente}),card(dom(tipo|>{deficiente})<|status|>{ocupada}));
  Expanded_List_Substitution(Machine(Estacionamento),get_tipo_vaga)==(vv: dom(tipo) & tt: TIPOS | tt:=tipo(vv));
  Expanded_List_Substitution(Machine(Estacionamento),get_cor_lampada)==(vv: dom(status) & vv: dom(tipo) & cc: CORES | status(vv) = livre ==> (not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cc:=azul [] not(tipo(vv) = idoso) & tipo(vv) = deficiente ==> cc:=amarela [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) ==> cc:=verde) [] not(status(vv) = livre) ==> cc:=vermelha);
  Expanded_List_Substitution(Machine(Estacionamento),liberar)==(vv: dom(status) & status(vv) = ocupada | status:=status<+{vv|->livre});
  Expanded_List_Substitution(Machine(Estacionamento),ocupar)==(vv: dom(status) & status(vv) = livre | status:=status<+{vv|->ocupada});
  Expanded_List_Substitution(Machine(Estacionamento),excluir)==(vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | tipo,status:={vv}<<|tipo,{vv}<<|status);
  Expanded_List_Substitution(Machine(Estacionamento),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @vv.(vv: VAGA & vv/:dom(tipo) & vv/:dom(status) ==> tipo,status:=tipo<+{vv|->tt},status<+{vv|->livre}));
  List_Substitution(Machine(Estacionamento),criar)==(ANY vv WHERE vv: VAGA & vv/:dom(tipo) & vv/:dom(status) THEN tipo(vv):=tt || status(vv):=livre END);
  List_Substitution(Machine(Estacionamento),excluir)==(tipo:={vv}<<|tipo || status:={vv}<<|status);
  List_Substitution(Machine(Estacionamento),ocupar)==(status(vv):=ocupada);
  List_Substitution(Machine(Estacionamento),liberar)==(status(vv):=livre);
  List_Substitution(Machine(Estacionamento),get_cor_lampada)==(IF status(vv) = livre THEN CASE tipo(vv) OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END);
  List_Substitution(Machine(Estacionamento),get_tipo_vaga)==(tt:=tipo(vv));
  List_Substitution(Machine(Estacionamento),get_info_painel)==(qc:=card(tipo|>{comum}) || oc:=card(dom(tipo|>{comum})<|status|>{ocupada}) || qi:=card(tipo|>{idoso}) || oi:=card(dom(tipo|>{idoso})<|status|>{ocupada}) || qd:=card(tipo|>{deficiente}) || od:=card(dom(tipo|>{deficiente})<|status|>{ocupada}));
  List_Substitution(Machine(Estacionamento),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) THEN vv:=uu END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Estacionamento))==(VAGA);
  Inherited_List_Constants(Machine(Estacionamento))==(?);
  List_Constants(Machine(Estacionamento))==(VAGA)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Estacionamento),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Machine(Estacionamento))==(TIPOS,STATUS,CORES);
  Context_List_Defered(Machine(Estacionamento))==(?);
  Context_List_Sets(Machine(Estacionamento))==(TIPOS,STATUS,CORES);
  List_Valuable_Sets(Machine(Estacionamento))==(?);
  Inherited_List_Enumerated(Machine(Estacionamento))==(?);
  Inherited_List_Defered(Machine(Estacionamento))==(?);
  Inherited_List_Sets(Machine(Estacionamento))==(?);
  List_Enumerated(Machine(Estacionamento))==(?);
  List_Defered(Machine(Estacionamento))==(?);
  List_Sets(Machine(Estacionamento))==(?);
  Set_Definition(Machine(Estacionamento),STATUS)==({livre,ocupada,S_NULL});
  Set_Definition(Machine(Estacionamento),TIPOS)==({idoso,deficiente,comum,T_NULL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Estacionamento))==(?);
  Expanded_List_HiddenConstants(Machine(Estacionamento))==(?);
  List_HiddenConstants(Machine(Estacionamento))==(?);
  External_List_HiddenConstants(Machine(Estacionamento))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Estacionamento))==(btrue);
  Context_List_Properties(Machine(Estacionamento))==(MAX_INT: NAT1 & MAX_INT = 1000 & MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0} & MAX: TIPOS --> 0..MAX_INT & MAX_INT>=MAX(comum)+MAX(idoso)+MAX(deficiente) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Machine(Estacionamento))==(btrue);
  List_Properties(Machine(Estacionamento))==(VAGA = 1..MAX_INT)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Estacionamento),Machine(TiposComuns))==(?);
  Seen_Context_List_Enumerated(Machine(Estacionamento))==(?);
  Seen_Context_List_Invariant(Machine(Estacionamento))==(btrue);
  Seen_Context_List_Assertions(Machine(Estacionamento))==(btrue);
  Seen_Context_List_Properties(Machine(Estacionamento))==(btrue);
  Seen_List_Constraints(Machine(Estacionamento))==(btrue);
  Seen_List_Operations(Machine(Estacionamento),Machine(TiposComuns))==(?);
  Seen_Expanded_List_Invariant(Machine(Estacionamento),Machine(TiposComuns))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Estacionamento),criar)==(Var(vv) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(Estacionamento),excluir)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar)==(?);
  List_ANY_Var(Machine(Estacionamento),get_cor_lampada)==(?);
  List_ANY_Var(Machine(Estacionamento),get_tipo_vaga)==(?);
  List_ANY_Var(Machine(Estacionamento),get_info_painel)==(?);
  List_ANY_Var(Machine(Estacionamento),indicar)==(Var(uu) == btype(INTEGER,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estacionamento)) == (VAGA | ? | tipo,status | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,get_info_painel,indicar | ? | seen(Machine(TiposComuns)) | ? | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (VAGA);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,MAX,TIPOS,STATUS,CORES,idoso,deficiente,comum,T_NULL,livre,ocupada,S_NULL,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT,MAX);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Estacionamento)) == (Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(tipo) == Mvl(SetOf(btype(INTEGER,?,?)*etype(TIPOS,?,?)));Type(status) == Mvl(SetOf(btype(INTEGER,?,?)*etype(STATUS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(indicar) == Cst(btype(INTEGER,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),btype(INTEGER,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),btype(INTEGER,?,?));Type(liberar) == Cst(No_type,btype(INTEGER,?,?));Type(ocupar) == Cst(No_type,btype(INTEGER,?,?));Type(excluir) == Cst(No_type,btype(INTEGER,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)));
  Observers(Machine(Estacionamento)) == (Type(indicar) == Cst(btype(INTEGER,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),btype(INTEGER,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),btype(INTEGER,?,?)))
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
