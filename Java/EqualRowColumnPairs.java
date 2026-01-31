import java.util.Scanner;

class EqualRowColumnPairs {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int arr[][] = new int[n][n];
		
		for(int i = 0; i < n; i++) {
			for(int j = 0; j < n; j++) {
				arr[i][j] = sc.nextInt();
			}
		}
		
		System.out.println(equalRowColumnPairs(n, arr));
	}
	
	public static int equalRowColumnPairs(int n, int arr[][]) {
		int pair = 0;
		
		for(int r = 0; r < n; r++) {
			for(int c = 0; c < n; c++) {
				boolean isMatch = true;
				
				for(int k = 0; k < n; k++) {
					if(arr[r][k] != arr[k][c]) {
						isMatch = false;
						break;
					}
				}
				
				if(isMatch) {
					pair++;
				}
			}
		}
		
		return pair;
	}
}