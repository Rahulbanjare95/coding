public class CheckProcess{

				public static void main(String [] args){
					int x = 0;
					while(x<0)
				{

						System.out.println("Number of time Processing the program "+x);
						x++;
						try(){
						Threads.sleep(3000);
								}
							catch(Exception e){
								}
						}
					}
				}

