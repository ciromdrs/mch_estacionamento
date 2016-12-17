// CARROS = RUN({entrar, pegar_ticket, passar, ocupar, liberar, pagar_ticket, sair})
import org.jcsp.lang.*;

public class Carros implements CSProcess {
	private final AltingBarrier entrar;
	private final AltingBarrier pegar_ticket;	
	private final AltingBarrier passar;
	private final AltingBarrier ocupar;
	private final AltingBarrier liberar;
	private final AltingBarrier pagar_ticket;
	private final AltingBarrier sair;
	
	public Carros(AltingBarrier entrar,
		AltingBarrier pegar_ticket,
		AltingBarrier passar,
		AltingBarrier ocupar,
		AltingBarrier liberar,
		AltingBarrier pagar_ticket,
		AltingBarrier sair) {
			this.entrar = entrar;
			this.pegar_ticket = pegar_ticket;
			this.passar = passar;
			this.ocupar = ocupar;
			this.liberar = liberar;
			this.pagar_ticket = pagar_ticket;
			this.sair = sair;
	}
	
	public void run(){
		final Guard[] guards = new Guard[]{entrar, pegar_ticket, passar, ocupar, liberar, pagar_ticket, sair};
		Alternative alt = new Alternative(guards);
		
		final int C_ENTRAR = 0;
		final int C_PEGAR_TICKET = 1;
		final int C_PASSAR = 2;
		final int C_OCUPAR = 3;
		final int C_LIBERAR = 4;
		final int C_PAGAR_TICKET = 5;
		final int C_SAIR = 6;
		
		System.out.println("Carros.run()");
		
		while(true){
			switch(alt.select()) {
				case C_ENTRAR :
					System.out.println("Carro.Entrar");
					break;
				case C_PEGAR_TICKET :
					System.out.println("Carro.pegar_ticket");
					break;
				case C_PASSAR :
					System.out.println("Carro.passar");
					break;
				case C_OCUPAR :
					System.out.println("Carro.ocupar");
					break;
				case C_LIBERAR :
					System.out.println("Carro.liberar");
					break;
				case C_PAGAR_TICKET :
					System.out.println("Carro.pagar_ticket");
					break;
				case C_SAIR :
					System.out.println("Carro.sair");
					break;
			}
		}
	}
	
}


