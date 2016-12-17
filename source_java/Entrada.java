import org.jcsp.lang.*;

public class Entrada implements CSProcess{
	private final ChannelOutput abrir;
	private final ChannelOutput fechar;		
	private final AltingBarrier entrar;
	private final AltingBarrier pegar_ticket;	
	private final AltingBarrier passar;
	
	public Entrada(ChannelOutput abrir, ChannelOutput fechar,AltingBarrier entrar,
		AltingBarrier pegar_ticket,
		AltingBarrier passar) {
			this.abrir = abrir;
			this.fechar = fechar;
			this.entrar = entrar;
			this.pegar_ticket = pegar_ticket;
			this.passar = passar;
	}
	
	public void run(){
		System.out.println("Entrada.run()");
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


