package com.JavaBasics.Operators;

public class LogicalOperator {
	public static void main(String[] args) {
		
		// &&, ||, !
		
		var a = 2;
		var b = 4;
		
		System.out.println(a > 3 && b < 5);
		System.out.println(a < 3 && b < 5);
		
		System.out.println(a > 3 || b < 5);
		System.out.println(a > 3 && b > 5);
		
		System.out.println(!(a < 3));
	}
}
