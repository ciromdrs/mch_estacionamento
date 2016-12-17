import org.jcsp.lang.*;

public class Sistema implements CSProcess{
	// channel abrir, fechar, tick
	private One2OneChannel abrir		= Channel.one2one();	
	private One2OneChannel fechar		= Channel.one2one();	
	private One2OneChannel entrar		= Channel.one2one();	
	private One2OneChannel sair			= Channel.one2one();	
	private One2OneChannel passar		= Channel.one2one();	
	private One2OneChannel pegar_ticket	= Channel.one2one();	
	private One2OneChannel pagar_ticket	= Channel.one2one();	
	private One2OneChannel ocupar		= Channel.one2one();	
	private One2OneChannel liberar		= Channel.one2one();	
	
	public static void main (String args[]) {
		(new Sistema()).run();
	}
	
	public void run(){
		Cancela c = new Cancela(abrir.in(), fechar.in());
		
		CSProcess teste = new CSProcess() {
			public void run(){
				abrir.out().write(null);
				fechar.out().write(null);
			}
		};
		
		(new Parallel(new CSProcess[]{c, teste})).run();
		
		System.out.println("terminou");
	}
}

