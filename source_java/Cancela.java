import org.jcsp.lang.*;

public class Cancela implements CSProcess {
	private final ChannelInput abrir;
	private final ChannelInput fechar;	
	
	public Cancela(ChannelInput abrir, ChannelInput fechar) {
		this.abrir  = abrir;
		this.fechar = fechar;
	}
	
	public void run(){
		while(true){
			this.abrir.read();
			System.out.println("Cancela.abrir");
			
			this.fechar.read();
			System.out.println("Cancela.fechar");
		}
	}
	
}


