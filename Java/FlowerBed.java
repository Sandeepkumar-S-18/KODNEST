import java.util.Scanner;

class Flowerbed {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int m = sc.nextInt();
		int flowerBed[] = new int[m];
		for(int i = 0; i < m; i++) {
			flowerBed[i] = sc.nextInt();
		}
		
		int n = sc.nextInt();
		
		System.out.println(isFilled(flowerBed, n));
	}
	
	public static boolean isFilled(int flowerBed[], int n) {
		int left = flowerBed[0], right = 0;
		boolean isComplete = false;
		
		for(int i = 1; i < flowerBed.length; i++) {
			right = flowerBed[i];
			
			if(left == 0 && right == 0) {
				flowerBed[i] = 1;
				left = 1;
				n--;
				isComplete = true;
			}
			else {
				left = right;
			}
		}
		
		if(n > 0) {
			isComplete = false;
		}
		
		return isComplete;
	}
}