import org.jcsp.lang.*;

public class Sistema {
	// channel abrir, fechar, tick
	One2OneChannel abrir = Channel.one2one();	
	One2OneChannel fechar = Channel.one2one();	
	One2OneChannel tick = Channel.one2one();
	
	channel entrar:{1..MAX_CARROS}
	channel sair:{1..MAX_CARROS}
	channel passar:{1..MAX_CARROS}
	channel pegar_ticket:{1..MAX_HORAS}
	channel pagar_ticket:{1..MAX_HORAS}
	channel ocupar:{1..QTD_VAGAS}
	channel liberar:{1..QTD_VAGAS}
	channel hora:{0..MAX_HORAS}
	
	
	public static void main (String args[]) {
		System.out.println("");
	}
}

