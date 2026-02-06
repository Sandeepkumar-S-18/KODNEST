package com.JavaBasics.Methods;

public class Addition {
	
	// MAIN METHOD
	public static void main(String[] args) {
		add1();						// WITHOUT RETURN TYPE AND WITHOUT PARAMETERS
		
		add2(30, 12);				// WITHOUT RETURN TYPE AND WITH PARAMETERS
		
		int m3 = add3();			// WITH RETURN TYPE AND WITHOUT PARAMETERS
		System.out.println(m3);
		
		int m4 = add4(12, 43);		// WITH RETURN TYPE AND WITH PARAMETERS
		System.out.println(m4);
	}
	
	// WITHOUT RETURN TYPE AND WITHOUT PARAMETERS
	static void add1() {
		int a = 10;
		int b = 20;
		int res = a + b;
		System.out.println(res);
	}
	
	// WITHOUT RETURN TYPE AND WITH PARAMETERS
	static void add2(int a, int b) {
		int res = a + b;
		System.out.println(res);
	}
	
	// WITH RETURN TYPE AND WITHOUT PARAMETERS
	static int add3() {
		int a = 11;
		int b = 24;
		int res = a + b;
		return res;
	}
	
	// WITH RETURN TYPE AND WITH PARAMETERS
	static int add4(int a, int b) {
		int res = a + b;
		return res;
	}
}
