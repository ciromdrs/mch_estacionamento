import org.jcsp.lang.*;

public class Saida implements CSProcess{
	private final ChannelOutput abrir;
	private final ChannelOutput fechar;		
	private final AltingBarrier sair;
	private final AltingBarrier pagar_ticket;	
	private final AltingBarrier passar;
	
	public Saida(ChannelOutput abrir, ChannelOutput fechar,
		AltingBarrier sair,
		AltingBarrier pagar_ticket,
		AltingBarrier passar) {
			this.abrir = abrir;
			this.fechar = fechar;
			this.sair = sair;
			this.pagar_ticket = pagar_ticket;
			this.passar = passar;
	}
	
	public void run(){
		System.out.println("Saida.run()");
		
		while(true){
			sair.sync();
			System.out.println("Saida.sair");
			
			pagar_ticket.sync();
			System.out.println("Saida.pagar_ticket");
			
			abrir.write(null);
			System.out.println("Saida.abrir");
			
			passar.sync();
			System.out.println("Saida.passar");
			
			fechar.write(null);
			System.out.println("Saida.fechar");
		}
	}
}


