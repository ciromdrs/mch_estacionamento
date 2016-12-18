import org.jcsp.lang.*;

public class Cancela implements CSProcess {
	private final ChannelInput abrir;
	private final ChannelInput fechar;	
	
	private String id;
	
	public Cancela(String id, ChannelInput abrir, ChannelInput fechar) {
		this.id = id;
		this.abrir  = abrir;
		this.fechar = fechar;
	}
	
	public void run(){
		while(true){
			this.abrir.read();
			System.out.println("Cancela" + id + ".abrir");
			
			this.fechar.read();
			System.out.println("Cancela"+ id +".fechar");
		}
	}
	
}


