package com.JavaBasics.Methods;

public class MethodEx1 {
	public static void main(String[] args) {
		m1();
		m2(10);
		System.out.println(m3());
		System.out.println(m4(10));
	}
	
	static void m1() {
		System.out.println("Method without return_type and without parameters.");	
	}
	
	static void m2(int a) {
		System.out.println("Method without return_type and with parameters.");
	}
	
	static String m3() {
		return "Method with return_type and without parameters.";
	}
	
	static String m4(int a) {
		return "Method with return_type and with parameters.";
	}
}
