import org.jcsp.lang.*;

public class Sistema implements CSProcess{
	private One2OneChannel abrir		 = Channel.one2one();	
	private One2OneChannel fechar		 = Channel.one2one();	
	private AltingBarrier[] sair		 = AltingBarrier.create(2);	
	private AltingBarrier[] entrar		 = AltingBarrier.create(2);	
	private AltingBarrier[] passar		 = AltingBarrier.create(2);	
	private AltingBarrier[] pegar_ticket = AltingBarrier.create(2);	
	private AltingBarrier[] pagar_ticket = AltingBarrier.create(2);	
	private AltingBarrier[] ocupar		 = AltingBarrier.create(2);	
	private AltingBarrier[] liberar		 = AltingBarrier.create(2);	
	
	public static void main (String args[]) {
		(new Sistema()).run();
	}
	
	public void run(){
		Cancela cancela = new Cancela(abrir.in(), fechar.in());
		
		CSProcess carros = new Carros(entrar[0], sair[0],
			passar[0], pegar_ticket[0], pagar_ticket[0],
			ocupar[0], liberar[0]);
		
		CSProcess entrada = new Entrada(abrir.out(), fechar.out(),
			entrar[1], sair[1],	passar[1], pegar_ticket[1], 
			pagar_ticket[1], ocupar[1], liberar[1]);
		
		(new Parallel(new CSProcess[]{cancela, carros, entrada})).run();
		
		System.out.println("terminou");
	}
}

