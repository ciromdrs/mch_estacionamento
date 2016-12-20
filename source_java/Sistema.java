import org.jcsp.lang.*;
import java.util.Random;

public class Sistema implements CSProcess{
	private Any2AnyChannel abrir		 = Channel.any2any();	
	private Any2AnyChannel fechar		 = Channel.any2any();	
	private AltingBarrier[] sair		 = AltingBarrier.create(3);	
	private AltingBarrier[] entrar		 = AltingBarrier.create(3);	
	private AltingBarrier[] passar		 = AltingBarrier.create(3);	
	private AltingBarrier[] pegar_ticket = AltingBarrier.create(2);	
	private AltingBarrier[] pagar_ticket = AltingBarrier.create(3);	
	private AltingBarrier[] ocupar		 = AltingBarrier.create(2);	
	private AltingBarrier[] liberar		 = AltingBarrier.create(2);	
	
	public static void main (String args[]) {
		(new Sistema()).run();
	}
	
	public void run(){
		/*Cancela cancela_entrada = new Cancela("Entrada", abrir.in(), fechar.in());
		CSProcess entrada = new Entrada(abrir.out(), fechar.out(),
			entrar[1], pegar_ticket[1], passar[1]);
		CSProcess ca_par_en = new Parallel(new CSProcess[]{entrada,
			cancela_entrada});
			
		Cancela cancela_saida = new Cancela("Saida", abrir.in(), fechar.in());
		CSProcess saida = new Saida(abrir.out(), fechar.out(),
			sair[2], pagar_ticket[2], passar[2]);
		CSProcess ca_par_sa	= new Parallel(new CSProcess[]{saida,
			cancela_saida});
		
		CSProcess itlv_entrada_saida = new Parallel(
			new CSProcess[]{
				ca_par_en, ca_par_sa
			});
		
		CSProcess ocupacao = new Parallel(
			new CSProcess[]{
				carros,
				vaga
			});
			
		(new Parallel(
			new CSProcess[]{
				ocupacao,
				itlv_entrada_saida
			}
		)).run();*/
		
		CSProcess carros = new Carros(entrar[0], pegar_ticket[0],
			passar[0], ocupar[0], liberar[0], pagar_ticket[0],
			sair[0]);
		
		CSProcess vaga = new Vaga(ocupar[1], liberar[1]);
		
		CSProcess maq = new MaqPagamento(pagar_ticket[2]);
		
		(new Parallel(new CSProcess[]{
			//vaga,
			maq,
			carros
			})).run();
		
		System.out.println("terminou");
	}
}

