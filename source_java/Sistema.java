import org.jcsp.lang.*;

public class Sistema implements CSProcess{
	private Any2OneChannel abrir		 = Channel.any2one();	
	private Any2OneChannel fechar		 = Channel.any2one();	
	private AltingBarrier[] sair		 = AltingBarrier.create(3);	
	private AltingBarrier[] entrar		 = AltingBarrier.create(3);	
	private AltingBarrier[] passar		 = AltingBarrier.create(3);	
	private AltingBarrier[] pegar_ticket = AltingBarrier.create(3);	
	private AltingBarrier[] pagar_ticket = AltingBarrier.create(3);	
	private AltingBarrier[] ocupar		 = AltingBarrier.create(2);	
	private AltingBarrier[] liberar		 = AltingBarrier.create(2);	
	
	public static void main (String args[]) {
		(new Sistema()).run();
	}
	
	public void run(){
		/*Cancela cancela = new Cancela(abrir.in(), fechar.in());
		
		CSProcess entrada = new Entrada(abrir.out(), fechar.out(),
			entrar[1], pegar_ticket[1], passar[1]);
		
		CSProcess ca_par_en = new Parallel(new CSProcess[]{entrada,
			cancela});
		
			
		CSProcess saida = new Saida(abrir.out(), fechar.out(),
			sair[2], pagar_ticket[2], passar[2]);
		
		CSProcess ca_par_sa	= new Parallel(new CSProcess[]{saida,
			cancela});
		
		(new Parallel(
			new CSProcess[]{carros, 
				new Parallel(
					new CSProcess[]{
						ca_par_en, ca_par_sa
					}
				)
			}
		)).run();
		*/
		
		CSProcess carros = new Carros(entrar[0], pegar_ticket[0],
			passar[0], ocupar[0], liberar[0], pagar_ticket[0],
			sair[0]);
		
		CSProcess vaga = new Vaga(ocupar[1], liberar[1]);
		(new Parallel(new CSProcess[]{vaga, carros})).run();
		
		System.out.println("terminou");
	}
}

