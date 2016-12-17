import org.jcsp.lang.*;

public class Vaga implements CSProcess{
	private final AltingBarrier ocupar;
	private final AltingBarrier liberar;
	
	public Vaga(AltingBarrier ocupar, AltingBarrier liberar) {
		this.ocupar = ocupar;
		this.liberar = liberar;
	}
	
	public void run(){
		System.out.println("Vaga.run()");
		
		final Guard[] guards = new Guard[]{ocupar, liberar};
		Alternative alt = new Alternative(guards);
		
		final int C_OCUPAR = 0;
		final int C_LIBERAR = 1;
		
		while(true){
			switch(alt.select()) {
				case C_OCUPAR :
					System.out.println("Vaga.ocupar");
					break;
				case C_LIBERAR :
					System.out.println("Vaga.liberar");
					break;
			}
		}
	}
}



