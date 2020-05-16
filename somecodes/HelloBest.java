
public class HelloBest{

	public static void main(String [] args){
		int i =1;
	while(i>0){
		System.out.println("Process Number ::"+ " "+i);
		i++;
		try{
	Thread.sleep(3000);
		} catch(Exception e){
				System.out.println(e);
			}
		}
	}
}

