package com.JavaBasics.Methods;

public class Calculator {
	
	public static void main(String[] args) {
		int a = 10;
		int b = 2;
		System.out.println(addition(a, b));
		System.out.println(subtraction(a, b));
		System.out.println(multiplication(a, b));
		System.out.println(division(a, b));
		System.out.println(modulas(a, b));
	}
	
	static int addition(int a, int b) {
		int result = a + b;
		return result;
	}
	
	static int subtraction(int a, int b) {
		int result = a - b;
		return result;
	}
	
	static int multiplication(int a, int b) {
		int result = a * b;
		return result;
	}
	
	static int division(int a, int b) {
		int result = a / b;
		return result;
	}
	
	static int modulas(int a, int b) {
		int result = a % b;
		return result;
	}
}
