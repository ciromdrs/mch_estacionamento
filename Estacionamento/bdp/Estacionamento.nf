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
  Inherited_List_Includes(Machine(Estacionamento))==(QtdMax);
  List_Includes(Machine(Estacionamento))==(QtdMax)
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
  Local_List_Variables(Machine(Estacionamento))==(tipo,cor,status);
  List_Variables(Machine(Estacionamento))==(tipo,cor,status,qtd_max);
  External_List_Variables(Machine(Estacionamento))==(tipo,cor,status,qtd_max)
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
  Abstract_List_Invariant(Machine(Estacionamento))==(btrue);
  Expanded_List_Invariant(Machine(Estacionamento))==(qtd_max: TIPOS --> NAT);
  Context_List_Invariant(Machine(Estacionamento))==(btrue);
  List_Invariant(Machine(Estacionamento))==(status: VAGAS --> STATUS_VAGA & cor: VAGAS --> CORES & tipo: VAGAS --> TIPOS & card(tipo|>{comum})<=qtd_max(comum) & card(tipo|>{idoso})<=qtd_max(idoso) & card(tipo|>{deficiente})<=qtd_max(deficiente))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Estacionamento))==(btrue);
  Expanded_List_Assertions(Machine(Estacionamento))==(btrue);
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
  Expanded_List_Initialisation(Machine(Estacionamento))==(qtd_max:={};status,cor,tipo:={},{},{});
  Context_List_Initialisation(Machine(Estacionamento))==(skip);
  List_Initialisation(Machine(Estacionamento))==(status:={} || cor:={} || tipo:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Estacionamento))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Estacionamento),Machine(QtdMax))==(?);
  List_Instanciated_Parameters(Machine(Estacionamento),Machine(TiposComuns))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Estacionamento),Machine(QtdMax))==(btrue);
  List_Context_Constraints(Machine(Estacionamento))==(btrue);
  List_Constraints(Machine(Estacionamento))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Estacionamento))==(criar,exluir,ocupar,liberar,get_cor_lampada,get_tipo_lampada,get_info_painel,indicar);
  List_Operations(Machine(Estacionamento))==(criar,exluir,ocupar,liberar,get_cor_lampada,get_tipo_lampada,get_info_painel,indicar)
END
&
THEORY ListInputX IS
  List_Input(Machine(Estacionamento),criar)==(vv,tt);
  List_Input(Machine(Estacionamento),exluir)==(vv);
  List_Input(Machine(Estacionamento),ocupar)==(vv);
  List_Input(Machine(Estacionamento),liberar)==(vv);
  List_Input(Machine(Estacionamento),get_cor_lampada)==(vv);
  List_Input(Machine(Estacionamento),get_tipo_lampada)==(vv);
  List_Input(Machine(Estacionamento),get_info_painel)==(?);
  List_Input(Machine(Estacionamento),indicar)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Estacionamento),criar)==(?);
  List_Output(Machine(Estacionamento),exluir)==(?);
  List_Output(Machine(Estacionamento),ocupar)==(?);
  List_Output(Machine(Estacionamento),liberar)==(?);
  List_Output(Machine(Estacionamento),get_cor_lampada)==(cc);
  List_Output(Machine(Estacionamento),get_tipo_lampada)==(cc);
  List_Output(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od);
  List_Output(Machine(Estacionamento),indicar)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Estacionamento),criar)==(criar(vv,tt));
  List_Header(Machine(Estacionamento),exluir)==(exluir(vv));
  List_Header(Machine(Estacionamento),ocupar)==(ocupar(vv));
  List_Header(Machine(Estacionamento),liberar)==(liberar(vv));
  List_Header(Machine(Estacionamento),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Machine(Estacionamento),get_tipo_lampada)==(cc <-- get_tipo_lampada(vv));
  List_Header(Machine(Estacionamento),get_info_painel)==(qc,oc,qi,oi,qd,od <-- get_info_painel);
  List_Header(Machine(Estacionamento),indicar)==(vv <-- indicar(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Estacionamento),criar)==(tt: TIPOS & vv: VAGAS & vv/:dom(tipo) & card(tipo|>{tt})<qtd_max(tt));
  List_Precondition(Machine(Estacionamento),exluir)==(vv: VAGAS & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),ocupar)==(vv: VAGAS & status(vv) = livre);
  List_Precondition(Machine(Estacionamento),liberar)==(vv: VAGAS);
  List_Precondition(Machine(Estacionamento),get_cor_lampada)==(vv: dom(cor));
  List_Precondition(Machine(Estacionamento),get_tipo_lampada)==(vv: dom(tipo));
  List_Precondition(Machine(Estacionamento),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT);
  List_Precondition(Machine(Estacionamento),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Estacionamento),indicar)==(vv: VAGAS & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | @uu.(uu: dom(dom(tipo|>{tt})<|status|>{livre}) ==> vv:=uu));
  Expanded_List_Substitution(Machine(Estacionamento),get_info_painel)==(qc: NAT & oc: NAT & qi: NAT & oi: NAT & qd: NAT & od: NAT | qc,oc,qi,oi,qd,od:=card(tipo|>{comum}),card(dom(tipo|>{comum})<|status|>{ocupada}),card(tipo|>{idoso}),card(dom(tipo|>{idoso})<|status|>{ocupada}),card(tipo|>{deficiente}),card(dom(tipo|>{deficiente})<|status|>{ocupada}));
  Expanded_List_Substitution(Machine(Estacionamento),get_tipo_lampada)==(vv: dom(tipo) | cc:=tipo(vv));
  Expanded_List_Substitution(Machine(Estacionamento),get_cor_lampada)==(vv: dom(cor) | cc:=cor(vv));
  Expanded_List_Substitution(Machine(Estacionamento),liberar)==(vv: VAGAS | status:=status<+{vv|->livre} || (not(tipo(vv) = comum) & not(tipo(vv) = deficiente) & tipo(vv) = idoso ==> cor:=cor<+{vv|->azul} [] not(tipo(vv) = idoso) & not(tipo(vv) = comum) & tipo(vv) = deficiente ==> cor:=cor<+{vv|->amarela} [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) & tipo(vv) = comum ==> cor:=cor<+{vv|->verde} [] not(tipo(vv) = idoso) & not(tipo(vv) = deficiente) & not(tipo(vv) = comum) ==> skip));
  Expanded_List_Substitution(Machine(Estacionamento),ocupar)==(vv: VAGAS & status(vv) = livre | status,cor:=status<+{vv|->ocupada},cor<+{vv|->vermelha});
  Expanded_List_Substitution(Machine(Estacionamento),exluir)==(vv: VAGAS & status(vv) = livre | tipo,cor,status:={vv}<<|tipo,{vv}<<|cor,{vv}<<|status);
  Expanded_List_Substitution(Machine(Estacionamento),criar)==(tt: TIPOS & vv: VAGAS & vv/:dom(tipo) & card(tipo|>{tt})<qtd_max(tt) | tipo,cor,status:=tipo<+{vv|->tt},cor<+{vv|->verde},status<+{vv|->livre});
  List_Substitution(Machine(Estacionamento),criar)==(tipo(vv):=tt || cor(vv):=verde || status(vv):=livre);
  List_Substitution(Machine(Estacionamento),exluir)==(tipo:={vv}<<|tipo || cor:={vv}<<|cor || status:={vv}<<|status);
  List_Substitution(Machine(Estacionamento),ocupar)==(status(vv):=ocupada || cor(vv):=vermelha);
  List_Substitution(Machine(Estacionamento),liberar)==(status(vv):=livre || CASE tipo(vv) OF EITHER idoso THEN cor(vv):=azul OR deficiente THEN cor(vv):=amarela OR comum THEN cor(vv):=verde END END);
  List_Substitution(Machine(Estacionamento),get_cor_lampada)==(cc:=cor(vv));
  List_Substitution(Machine(Estacionamento),get_tipo_lampada)==(cc:=tipo(vv));
  List_Substitution(Machine(Estacionamento),get_info_painel)==(qc:=card(tipo|>{comum}) || oc:=card(dom(tipo|>{comum})<|status|>{ocupada}) || qi:=card(tipo|>{idoso}) || oi:=card(dom(tipo|>{idoso})<|status|>{ocupada}) || qd:=card(tipo|>{deficiente}) || od:=card(dom(tipo|>{deficiente})<|status|>{ocupada}));
  List_Substitution(Machine(Estacionamento),indicar)==(ANY uu WHERE uu: dom(dom(tipo|>{tt})<|status|>{livre}) THEN vv:=uu END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Estacionamento))==(?);
  Inherited_List_Constants(Machine(Estacionamento))==(?);
  List_Constants(Machine(Estacionamento))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Estacionamento),CORES)==({azul,amarela,verde,vermelha});
  Context_List_Enumerated(Machine(Estacionamento))==(TIPOS,STATUS_VAGA,CORES);
  Context_List_Defered(Machine(Estacionamento))==(VAGAS);
  Context_List_Sets(Machine(Estacionamento))==(VAGAS,TIPOS,STATUS_VAGA,CORES);
  List_Valuable_Sets(Machine(Estacionamento))==(?);
  Inherited_List_Enumerated(Machine(Estacionamento))==(?);
  Inherited_List_Defered(Machine(Estacionamento))==(?);
  Inherited_List_Sets(Machine(Estacionamento))==(?);
  List_Enumerated(Machine(Estacionamento))==(?);
  List_Defered(Machine(Estacionamento))==(?);
  List_Sets(Machine(Estacionamento))==(?);
  Set_Definition(Machine(Estacionamento),STATUS_VAGA)==({livre,ocupada});
  Set_Definition(Machine(Estacionamento),TIPOS)==({idoso,deficiente,comum})
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
  Context_List_Properties(Machine(Estacionamento))==(MAX_INT: NAT1 & MAX_INT = 1000000 & VAGAS: FIN(INTEGER) & not(VAGAS = {}) & TIPOS: FIN(INTEGER) & not(TIPOS = {}) & STATUS_VAGA: FIN(INTEGER) & not(STATUS_VAGA = {}) & CORES: FIN(INTEGER) & not(CORES = {}));
  Inherited_List_Properties(Machine(Estacionamento))==(btrue);
  List_Properties(Machine(Estacionamento))==(btrue)
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
  List_ANY_Var(Machine(Estacionamento),criar)==(?);
  List_ANY_Var(Machine(Estacionamento),exluir)==(?);
  List_ANY_Var(Machine(Estacionamento),ocupar)==(?);
  List_ANY_Var(Machine(Estacionamento),liberar)==(?);
  List_ANY_Var(Machine(Estacionamento),get_cor_lampada)==(?);
  List_ANY_Var(Machine(Estacionamento),get_tipo_lampada)==(?);
  List_ANY_Var(Machine(Estacionamento),get_info_painel)==(?);
  List_ANY_Var(Machine(Estacionamento),indicar)==(Var(uu) == atype(VAGAS,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estacionamento)) == (? | ? | tipo,cor,status | qtd_max | criar,exluir,ocupar,liberar,get_cor_lampada,get_tipo_lampada,get_info_painel,indicar | ? | seen(Machine(TiposComuns)),included(Machine(QtdMax)) | ? | Estacionamento);
  List_Of_HiddenCst_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estacionamento)) == (?);
  List_Of_VisibleVar_Ids(Machine(Estacionamento)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estacionamento)) == (seen(Machine(TiposComuns)): (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(QtdMax)) == (? | ? | qtd_max | ? | set_qtd_max | ? | seen(Machine(TiposComuns)) | ? | QtdMax);
  List_Of_HiddenCst_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(QtdMax)) == (?);
  List_Of_VisibleVar_Ids(Machine(QtdMax)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(QtdMax)) == (?: ?);
  List_Of_Ids(Machine(TiposComuns)) == (MAX_INT,VAGAS,TIPOS,STATUS_VAGA,CORES,idoso,deficiente,comum,livre,ocupada,azul,amarela,verde,vermelha | ? | ? | ? | ? | ? | ? | ? | TiposComuns);
  List_Of_HiddenCst_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TiposComuns)) == (MAX_INT);
  List_Of_VisibleVar_Ids(Machine(TiposComuns)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TiposComuns)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Estacionamento)) == (Type(qtd_max) == Mvl(SetOf(etype(TIPOS,0,2)*btype(INTEGER,0,MAXINT)));Type(tipo) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*etype(TIPOS,0,2)));Type(cor) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*etype(CORES,0,3)));Type(status) == Mvl(SetOf(atype(VAGAS,"[VAGAS","]VAGAS")*etype(STATUS_VAGA,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Estacionamento)) == (Type(indicar) == Cst(atype(VAGAS,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_lampada) == Cst(etype(TIPOS,?,?),atype(VAGAS,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGAS,?,?));Type(liberar) == Cst(No_type,atype(VAGAS,?,?));Type(ocupar) == Cst(No_type,atype(VAGAS,?,?));Type(exluir) == Cst(No_type,atype(VAGAS,?,?));Type(criar) == Cst(No_type,atype(VAGAS,?,?)*etype(TIPOS,?,?)));
  Observers(Machine(Estacionamento)) == (Type(indicar) == Cst(atype(VAGAS,?,?),etype(TIPOS,?,?));Type(get_info_painel) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(get_tipo_lampada) == Cst(etype(TIPOS,?,?),atype(VAGAS,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGAS,?,?)))
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
