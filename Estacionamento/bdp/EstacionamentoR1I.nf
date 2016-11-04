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
  Abstract_List_Variables(Implementation(EstacionamentoR1I))==(tickets_ativos,vagas_ativas,tipo,status,lim,preco,hora,chegada,pagos,tipo,status,lim,preco,hora,chegada,pagos);
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
  List_VisibleVariables(Implementation(EstacionamentoR1I))==(chegadaI,pagosI,tickets_ativosI,vagas_ativasI,tipoI,statusI,preco,lim,hora);
  Internal_List_VisibleVariables(Implementation(EstacionamentoR1I))==(chegadaI,pagosI,tickets_ativosI,vagas_ativasI,tipoI,statusI,preco,lim,hora)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(EstacionamentoR1I))==(btrue);
  Expanded_List_Invariant(Implementation(EstacionamentoR1I))==(btrue);
  Abstract_List_Invariant(Implementation(EstacionamentoR1I))==(tickets_ativos <: TICKET & vagas_ativas <: VAGA & vagas_ativas = dom(tipo) & vagas_ativas = dom(status) & hora: NAT & preco: NAT & lim: NAT & status: VAGA +-> STATUS & tipo: VAGA +-> TIPOS & chegada: TICKET +-> NAT & pagos <: dom(chegada) & dom(status) = dom(tipo) & card(tipo|>{comum})<=MAX(comum) & card(tipo|>{idoso})<=MAX(idoso) & card(tipo|>{deficiente})<=MAX(deficiente));
  Context_List_Invariant(Implementation(EstacionamentoR1I))==(btrue);
  List_Invariant(Implementation(EstacionamentoR1I))==(pagosI: 1..MAX_INT --> BOOL & chegadaI: 1..MAX_INT --> 1..MAX_INT & statusI: 1..MAX_INT --> STATUS & tipoI: 1..MAX_INT --> TIPOS & vagas_ativasI: 1..MAX_INT --> BOOL & tickets_ativosI: 1..MAX_INT --> BOOL & !ii.(ii: vagas_ativas => statusI(ii) = status(ii) & tipoI(ii) = tipo(ii) & vagas_ativasI(ii) = TRUE) & !jj.(jj: tickets_ativos => chegadaI(jj) = chegada(jj) & tickets_ativosI(jj) = TRUE))
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
  Expanded_List_Initialisation(Implementation(EstacionamentoR1I))==((0: INT | hora:=0);(15: INT | lim:=15);(3: INT | preco:=3);@ii.(ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(vagas_ativasI) | vagas_ativasI:=vagas_ativasI<+{ii|->FALSE});(ii: dom(statusI) | statusI:=statusI<+{ii|->S_NULL});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->T_NULL});(ii: dom(tickets_ativosI) | tickets_ativosI:=tickets_ativosI<+{ii|->FALSE});(ii: dom(pagosI) | pagosI:=pagosI<+{ii|->FALSE});(ii: dom(chegadaI) & 0: INT | chegadaI:=chegadaI<+{ii|->0}) INVARIANT !jj.(jj: 1..ii => vagas_ativasI(jj) = FALSE & tickets_ativosI(jj) = FALSE) VARIANT MAX_INT-ii END));
  Context_List_Initialisation(Implementation(EstacionamentoR1I))==(skip);
  List_Initialisation(Implementation(EstacionamentoR1I))==(hora:=0;lim:=15;preco:=3;VAR ii IN ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;vagas_ativasI(ii):=FALSE;statusI(ii):=S_NULL;tipoI(ii):=T_NULL;tickets_ativosI(ii):=FALSE;pagosI(ii):=FALSE;chegadaI(ii):=0 INVARIANT !jj.(jj: 1..ii => vagas_ativasI(jj) = FALSE & tickets_ativosI(jj) = FALSE) VARIANT MAX_INT-ii END END)
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
  Internal_List_Operations(Implementation(EstacionamentoR1I))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar,adiantar,pegar_ticket,pagar_ticket,abrir_cancela);
  List_Operations(Implementation(EstacionamentoR1I))==(criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar,adiantar,pegar_ticket,pagar_ticket,abrir_cancela)
END
&
THEORY ListInputX IS
  List_Input(Implementation(EstacionamentoR1I),criar)==(tt);
  List_Input(Implementation(EstacionamentoR1I),excluir)==(vv);
  List_Input(Implementation(EstacionamentoR1I),ocupar)==(vv);
  List_Input(Implementation(EstacionamentoR1I),liberar)==(vv);
  List_Input(Implementation(EstacionamentoR1I),get_cor_lampada)==(vv);
  List_Input(Implementation(EstacionamentoR1I),get_tipo_vaga)==(vv);
  List_Input(Implementation(EstacionamentoR1I),indicar)==(tt);
  List_Input(Implementation(EstacionamentoR1I),adiantar)==(horas,minutos);
  List_Input(Implementation(EstacionamentoR1I),pegar_ticket)==(?);
  List_Input(Implementation(EstacionamentoR1I),pagar_ticket)==(ticket,dinheiro);
  List_Input(Implementation(EstacionamentoR1I),abrir_cancela)==(ticket)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(EstacionamentoR1I),criar)==(?);
  List_Output(Implementation(EstacionamentoR1I),excluir)==(?);
  List_Output(Implementation(EstacionamentoR1I),ocupar)==(?);
  List_Output(Implementation(EstacionamentoR1I),liberar)==(?);
  List_Output(Implementation(EstacionamentoR1I),get_cor_lampada)==(cc);
  List_Output(Implementation(EstacionamentoR1I),get_tipo_vaga)==(tt);
  List_Output(Implementation(EstacionamentoR1I),indicar)==(vv);
  List_Output(Implementation(EstacionamentoR1I),adiantar)==(?);
  List_Output(Implementation(EstacionamentoR1I),pegar_ticket)==(tt);
  List_Output(Implementation(EstacionamentoR1I),pagar_ticket)==(troco);
  List_Output(Implementation(EstacionamentoR1I),abrir_cancela)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(EstacionamentoR1I),criar)==(criar(tt));
  List_Header(Implementation(EstacionamentoR1I),excluir)==(excluir(vv));
  List_Header(Implementation(EstacionamentoR1I),ocupar)==(ocupar(vv));
  List_Header(Implementation(EstacionamentoR1I),liberar)==(liberar(vv));
  List_Header(Implementation(EstacionamentoR1I),get_cor_lampada)==(cc <-- get_cor_lampada(vv));
  List_Header(Implementation(EstacionamentoR1I),get_tipo_vaga)==(tt <-- get_tipo_vaga(vv));
  List_Header(Implementation(EstacionamentoR1I),indicar)==(vv <-- indicar(tt));
  List_Header(Implementation(EstacionamentoR1I),adiantar)==(adiantar(horas,minutos));
  List_Header(Implementation(EstacionamentoR1I),pegar_ticket)==(tt <-- pegar_ticket);
  List_Header(Implementation(EstacionamentoR1I),pagar_ticket)==(troco <-- pagar_ticket(ticket,dinheiro));
  List_Header(Implementation(EstacionamentoR1I),abrir_cancela)==(abrir_cancela(ticket))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(EstacionamentoR1I),criar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt));
  Own_Precondition(Implementation(EstacionamentoR1I),excluir)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),excluir)==(vv: vagas_ativas & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoR1I),ocupar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),ocupar)==(vv: vagas_ativas & vv: VAGA & vv: dom(status) & status(vv) = livre);
  Own_Precondition(Implementation(EstacionamentoR1I),liberar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),liberar)==(vv: vagas_ativas & vv: VAGA & vv: dom(status) & status(vv) = ocupada);
  Own_Precondition(Implementation(EstacionamentoR1I),get_cor_lampada)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),get_cor_lampada)==(vv: vagas_ativas & vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES);
  Own_Precondition(Implementation(EstacionamentoR1I),get_tipo_vaga)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),get_tipo_vaga)==(vv: vagas_ativas & vv: VAGA & vv: dom(tipo) & tt: TIPOS);
  Own_Precondition(Implementation(EstacionamentoR1I),indicar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0);
  Own_Precondition(Implementation(EstacionamentoR1I),adiantar)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),adiantar)==(horas: NAT & minutos: NAT & horas*60+minutos+hora<MAXINT & horas: NAT & minutos: NAT & horas*60+minutos+hora<MAXINT);
  Own_Precondition(Implementation(EstacionamentoR1I),pegar_ticket)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),pegar_ticket)==(btrue);
  Own_Precondition(Implementation(EstacionamentoR1I),pagar_ticket)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: TICKET & ticket: dom(chegada) & troco: NAT & dinheiro: NAT & ticket: TICKET & ticket: dom(chegada));
  Own_Precondition(Implementation(EstacionamentoR1I),abrir_cancela)==(btrue);
  List_Precondition(Implementation(EstacionamentoR1I),abrir_cancela)==(ticket: TICKET & ticket: tickets_ativos & ticket: TICKET & ticket: pagos)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),abrir_cancela)==(ticket: TICKET & ticket: tickets_ativos & ticket: TICKET & ticket: pagos & ticket: dom(tickets_ativosI) | tickets_ativosI:=tickets_ativosI<+{ticket|->FALSE});
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),pagar_ticket)==(troco: NAT & dinheiro: NAT & ticket: TICKET & ticket: dom(chegada) & troco: NAT & dinheiro: NAT & ticket: TICKET & ticket: dom(chegada) | @tempo_gasto.((ticket: dom(chegadaI) & hora-chegadaI(ticket): INT & hora: INT & chegadaI(ticket): INT | tempo_gasto:=hora-chegadaI(ticket));(tempo_gasto<=lim ==> ((dinheiro: INT | troco:=dinheiro);(ticket: dom(pagosI) | pagosI:=pagosI<+{ticket|->TRUE})) [] not(tempo_gasto<=lim) ==> @resto.((tempo_gasto/60: INT & tempo_gasto: INT & 60: INT & not(60 = 0) & tempo_gasto/60+1: INT & 1: INT & (tempo_gasto/60+1)*preco: INT & preco: INT & (tempo_gasto/60+1)*preco-dinheiro: INT & dinheiro: INT | resto:=(tempo_gasto/60+1)*preco-dinheiro);(resto>=0 ==> ((resto: INT | troco:=resto);(ticket: dom(pagosI) | pagosI:=pagosI<+{ticket|->TRUE})) [] not(resto>=0) ==> (dinheiro: INT | troco:=dinheiro))))));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),pegar_ticket)==(btrue | @(ii,aa,continuar).((1: INT | tt:=1);aa:=TRUE;ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(tickets_ativosI) | aa:=tickets_ativosI(ii));(aa = FALSE ==> (continuar:=FALSE;(ii: dom(tickets_ativosI) | tickets_ativosI:=tickets_ativosI<+{ii|->TRUE});(ii: dom(chegadaI) & hora: INT | chegadaI:=chegadaI<+{ii|->hora});(ii: dom(pagosI) | pagosI:=pagosI<+{ii|->FALSE});(ii: INT | tt:=ii)) [] not(aa = FALSE) ==> skip) INVARIANT !jj.(jj: 1..ii => vagas_ativasI(jj) = FALSE) VARIANT MAX_INT-ii END));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),adiantar)==(horas: NAT & minutos: NAT & horas*60+minutos+hora<MAXINT & horas: NAT & minutos: NAT & horas*60+minutos+hora<MAXINT & horas*60+minutos+hora: INT & horas*60: INT & horas: INT & 60: INT & horas*60+minutos: INT & minutos: INT & hora: INT | hora:=horas*60+minutos+hora);
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),indicar)==(vv: VAGA & tt: TIPOS & card(dom(tipo|>{tt})<|status|>{livre})>0 | (0: INT | vv:=0);@(ii,aa,ss,uu,continuar).(uu:=T_NULL;ss:=S_NULL;aa:=TRUE;continuar:=TRUE;ii:=0;WHILE ii<MAX_INT DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(vagas_ativasI) | aa:=vagas_ativasI(ii));(ii: dom(statusI) | ss:=statusI(ii));(ii: dom(tipoI) | uu:=tipoI(ii));(aa = TRUE & ss = livre & uu = tt ==> continuar:=FALSE [] not(aa = TRUE & ss = livre & uu = tt) ==> skip) INVARIANT !jj.(jj: 1..ii => not(aa = TRUE & ss = livre & uu = tt)) VARIANT MAX_INT-ii END;(ii: INT | vv:=ii)));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),get_tipo_vaga)==(vv: vagas_ativas & vv: VAGA & vv: dom(tipo) & tt: TIPOS | @ii.(ii:=vv;(ii: dom(tipoI) | tt:=tipoI(ii))));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),get_cor_lampada)==(vv: vagas_ativas & vv: VAGA & vv: dom(status) & vv: dom(tipo) & cc: CORES | @(ss,tt,ii).(ii:=vv;(ii: dom(statusI) | ss:=statusI(ii));(ii: dom(tipoI) | tt:=tipoI(ii));(ss = livre ==> (not(tt = deficiente) & tt = idoso ==> cc:=azul [] not(tt = idoso) & tt = deficiente ==> cc:=amarela [] not(tt = idoso) & not(tt = deficiente) ==> cc:=verde) [] not(ss = livre) ==> cc:=vermelha)));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),liberar)==(vv: vagas_ativas & vv: VAGA & vv: dom(status) & status(vv) = ocupada | @ii.(ii:=vv;(ii: dom(statusI) | statusI:=statusI<+{ii|->livre})));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),ocupar)==(vv: vagas_ativas & vv: VAGA & vv: dom(status) & status(vv) = livre & vv: dom(statusI) | statusI:=statusI<+{vv|->ocupada});
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),excluir)==(vv: vagas_ativas & vv: VAGA & vv: dom(tipo) & vv: dom(status) & status(vv) = livre | @ii.(ii:=vv;(ii: dom(vagas_ativasI) | vagas_ativasI:=vagas_ativasI<+{ii|->FALSE})));
  Expanded_List_Substitution(Implementation(EstacionamentoR1I),criar)==(tt: TIPOS & card(tipo|>{tt})<MAX(tt) | @(ii,aa,continuar).(aa:=TRUE;ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO (ii+1: INT & ii: INT & 1: INT | ii:=ii+1);(ii: dom(vagas_ativasI) | aa:=vagas_ativasI(ii));(aa = FALSE ==> (continuar:=FALSE;(ii: dom(vagas_ativasI) | vagas_ativasI:=vagas_ativasI<+{ii|->TRUE});(ii: dom(statusI) | statusI:=statusI<+{ii|->livre});(ii: dom(tipoI) | tipoI:=tipoI<+{ii|->tt})) [] not(aa = FALSE) ==> skip) INVARIANT !jj.(jj: 1..ii => vagas_ativasI(jj) = TRUE) VARIANT MAX_INT-ii END));
  List_Substitution(Implementation(EstacionamentoR1I),criar)==(VAR ii,aa,continuar IN aa:=TRUE;ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO ii:=ii+1;aa:=vagas_ativasI(ii);IF aa = FALSE THEN continuar:=FALSE;vagas_ativasI(ii):=TRUE;statusI(ii):=livre;tipoI(ii):=tt END INVARIANT !jj.(jj: 1..ii => vagas_ativasI(jj) = TRUE) VARIANT MAX_INT-ii END END);
  List_Substitution(Implementation(EstacionamentoR1I),excluir)==(VAR ii IN ii:=vv;vagas_ativasI(ii):=FALSE END);
  List_Substitution(Implementation(EstacionamentoR1I),ocupar)==(statusI(vv):=ocupada);
  List_Substitution(Implementation(EstacionamentoR1I),liberar)==(VAR ii IN ii:=vv;statusI(ii):=livre END);
  List_Substitution(Implementation(EstacionamentoR1I),get_cor_lampada)==(VAR ss,tt,ii IN ii:=vv;ss:=statusI(ii);tt:=tipoI(ii);IF ss = livre THEN CASE tt OF EITHER idoso THEN cc:=azul OR deficiente THEN cc:=amarela ELSE cc:=verde END END ELSE cc:=vermelha END END);
  List_Substitution(Implementation(EstacionamentoR1I),get_tipo_vaga)==(VAR ii IN ii:=vv;tt:=tipoI(ii) END);
  List_Substitution(Implementation(EstacionamentoR1I),indicar)==(vv:=0;VAR ii,aa,ss,uu,continuar IN uu:=T_NULL;ss:=S_NULL;aa:=TRUE;continuar:=TRUE;ii:=0;WHILE ii<MAX_INT DO ii:=ii+1;aa:=vagas_ativasI(ii);ss:=statusI(ii);uu:=tipoI(ii);IF aa = TRUE & ss = livre & uu = tt THEN continuar:=FALSE END INVARIANT !jj.(jj: 1..ii => not(aa = TRUE & ss = livre & uu = tt)) VARIANT MAX_INT-ii END;vv:=ii END);
  List_Substitution(Implementation(EstacionamentoR1I),adiantar)==(hora:=horas*60+minutos+hora);
  List_Substitution(Implementation(EstacionamentoR1I),pegar_ticket)==(VAR ii,aa,continuar IN tt:=1;aa:=TRUE;ii:=0;continuar:=TRUE;WHILE ii<MAX_INT & continuar = TRUE DO ii:=ii+1;aa:=tickets_ativosI(ii);IF aa = FALSE THEN continuar:=FALSE;tickets_ativosI(ii):=TRUE;chegadaI(ii):=hora;pagosI(ii):=FALSE;tt:=ii END INVARIANT !jj.(jj: 1..ii => vagas_ativasI(jj) = FALSE) VARIANT MAX_INT-ii END END);
  List_Substitution(Implementation(EstacionamentoR1I),pagar_ticket)==(VAR tempo_gasto IN tempo_gasto:=hora-chegadaI(ticket);IF tempo_gasto<=lim THEN troco:=dinheiro;pagosI(ticket):=TRUE ELSE VAR resto IN resto:=(tempo_gasto/60+1)*preco-dinheiro;IF resto>=0 THEN troco:=resto;pagosI(ticket):=TRUE ELSE troco:=dinheiro END END END END);
  List_Substitution(Implementation(EstacionamentoR1I),abrir_cancela)==(tickets_ativosI(ticket):=FALSE)
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
  Precond_Valued_Objects(Implementation(EstacionamentoR1I))==(btrue);
  Values_Subs(Implementation(EstacionamentoR1I))==(MAX,MAX_INT,VAGA,TICKET: {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0},1000,1..1000,1..1000);
  List_Values(Implementation(EstacionamentoR1I))==(MAX = {comum|->10,idoso|->5,deficiente|->5,T_NULL|->0};MAX_INT = 1000;VAGA = 1..1000;TICKET = 1..1000)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(EstacionamentoR1I))==(Type(hora) == Mvv(btype(INTEGER,?,?));Type(lim) == Mvv(btype(INTEGER,?,?));Type(preco) == Mvv(btype(INTEGER,?,?));Type(statusI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(STATUS,0,2)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(TIPOS,0,3)));Type(vagas_ativasI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(tickets_ativosI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(pagosI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(chegadaI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(INTEGER,1,MAX_INT))));
  Operations(Implementation(EstacionamentoR1I))==(Type(abrir_cancela) == Cst(No_type,atype(TICKET,?,?));Type(pagar_ticket) == Cst(btype(INTEGER,?,?),atype(TICKET,?,?)*btype(INTEGER,?,?));Type(pegar_ticket) == Cst(atype(TICKET,?,?),No_type);Type(adiantar) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(indicar) == Cst(atype(VAGA,?,?),etype(TIPOS,?,?));Type(get_tipo_vaga) == Cst(etype(TIPOS,?,?),atype(VAGA,?,?));Type(get_cor_lampada) == Cst(etype(CORES,?,?),atype(VAGA,?,?));Type(liberar) == Cst(No_type,atype(VAGA,?,?));Type(ocupar) == Cst(No_type,atype(VAGA,?,?));Type(excluir) == Cst(No_type,atype(VAGA,?,?));Type(criar) == Cst(No_type,etype(TIPOS,?,?)));
  Constants(Implementation(EstacionamentoR1I))==(Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?)));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(vermelha) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(azul) == Cst(etype(CORES,0,3));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(livre) == Cst(etype(STATUS,0,2));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(idoso) == Cst(etype(TIPOS,0,3)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(EstacionamentoR1I)) == (? | ? | ? | ? | criar,excluir,ocupar,liberar,get_cor_lampada,get_tipo_vaga,indicar,adiantar,pegar_ticket,pagar_ticket,abrir_cancela | ? | ? | ? | EstacionamentoR1I);
  List_Of_HiddenCst_Ids(Implementation(EstacionamentoR1I)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(EstacionamentoR1I)) == (?);
  List_Of_VisibleVar_Ids(Implementation(EstacionamentoR1I)) == (chegadaI,pagosI,tickets_ativosI,vagas_ativasI,tipoI,statusI,preco,lim,hora | ?);
  List_Of_Ids_SeenBNU(Implementation(EstacionamentoR1I)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(EstacionamentoR1I)) == (Type(VAGA) == Cst(SetOf(btype(INTEGER,"[VAGA","]VAGA")));Type(TIPOS) == Cst(SetOf(etype(TIPOS,0,3)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,2)));Type(CORES) == Cst(SetOf(etype(CORES,0,3)));Type(TICKET) == Cst(SetOf(btype(INTEGER,"[TICKET","]TICKET"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(EstacionamentoR1I)) == (Type(idoso) == Cst(etype(TIPOS,0,3));Type(deficiente) == Cst(etype(TIPOS,0,3));Type(comum) == Cst(etype(TIPOS,0,3));Type(T_NULL) == Cst(etype(TIPOS,0,3));Type(livre) == Cst(etype(STATUS,0,2));Type(ocupada) == Cst(etype(STATUS,0,2));Type(S_NULL) == Cst(etype(STATUS,0,2));Type(azul) == Cst(etype(CORES,0,3));Type(amarela) == Cst(etype(CORES,0,3));Type(verde) == Cst(etype(CORES,0,3));Type(vermelha) == Cst(etype(CORES,0,3));Type(MAX_INT) == Cst(btype(INTEGER,?,?));Type(MAX) == Cst(SetOf(etype(TIPOS,0,3)*btype(INTEGER,?,?))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(EstacionamentoR1I)) == (Type(chegadaI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(INTEGER,1,MAX_INT)));Type(pagosI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(tickets_ativosI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(vagas_ativasI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*btype(BOOL,0,1)));Type(tipoI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(TIPOS,0,3)));Type(statusI) == Mvv(SetOf(btype(INTEGER,1,MAX_INT)*etype(STATUS,0,2)));Type(preco) == Mvv(btype(INTEGER,?,?));Type(lim) == Mvv(btype(INTEGER,?,?));Type(hora) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(EstacionamentoR1I),?, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),criar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),excluir, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),liberar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),get_cor_lampada, 1) == (Type(ss) == Lvl(etype(STATUS,?,?));Type(tt) == Lvl(etype(TIPOS,?,?));Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),get_tipo_vaga, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),indicar, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(ss) == Lvl(etype(STATUS,?,?));Type(uu) == Lvl(etype(TIPOS,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),pegar_ticket, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(aa) == Lvl(btype(BOOL,?,?));Type(continuar) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),pagar_ticket, 2) == (Type(resto) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(EstacionamentoR1I),pagar_ticket, 1) == (Type(tempo_gasto) == Lvl(btype(INTEGER,?,?)))
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
  TypingPredicate(Implementation(EstacionamentoR1I))==(hora: INTEGER & lim: INTEGER & preco: INTEGER & statusI: POW(INTEGER*STATUS) & tipoI: POW(INTEGER*TIPOS) & vagas_ativasI: POW(INTEGER*BOOL) & tickets_ativosI: POW(INTEGER*BOOL) & pagosI: POW(INTEGER*BOOL) & chegadaI: POW(INTEGER*INTEGER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
