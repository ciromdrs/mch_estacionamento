import org.jcsp.lang.*;

public class Entrada implements CSProcess{
	private final ChannelOutput  abrir;
	private final ChannelOutput  fechar;		
	private final AltingBarrier entrar;
	private final AltingBarrier pegar_ticket;	
	private final AltingBarrier passar;
	private final AltingBarrier ocupar;
	private final AltingBarrier liberar;
	private final AltingBarrier pagar_ticket;
	private final AltingBarrier sair;
	
	public Entrada(ChannelOutput abrir, ChannelOutput fechar,AltingBarrier entrar,
		AltingBarrier pegar_ticket,
		AltingBarrier passar,
		AltingBarrier ocupar,
		AltingBarrier liberar,
		AltingBarrier pagar_ticket,
		AltingBarrier sair) {
			this.abrir = abrir;
			this.fechar = fechar;
			this.entrar = entrar;
			this.pegar_ticket = pegar_ticket;
			this.passar = passar;
			this.ocupar = ocupar;
			this.liberar = liberar;
			this.pagar_ticket = pagar_ticket;
			this.sair = sair;		
	}
	
	public void run(){
		while(true){
			entrar.sync();
			System.out.println("Entrada.entrar");
			
			pegar_ticket.sync();
			System.out.println("Entrada.pegar_ticket");
			
			abrir.write(null);
			System.out.println("Entrada.abrir");
			
			passar.sync();
			System.out.println("Entrada.passar");
			
			fechar.write(null);
			System.out.println("Entrada.fechar");
		}
	}
}


