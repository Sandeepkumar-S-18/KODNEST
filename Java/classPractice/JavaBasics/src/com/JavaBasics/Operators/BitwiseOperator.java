package com.JavaBasics.Operators;

public class BitwiseOperator {
	public static void main(String[] args) {
		
		// &, |, ^, ~, <<, >>
		
		var a = 2;		// 0010
		var b = 3;		// 0011
		
		System.out.println(a & b);		// 2
		System.out.println(a | b);		// 3
		System.out.println(a ^ b);		// 1
		System.out.println(~a);			// -3
		System.out.println(a << 1);		// 4	LEFT SHIFT
		System.out.println(a >> 1);		// 1	RIGHT SHIFT
		
		// UNSIGNED RIGHT SHIFT
		System.out.println(-6 >>> 1);
		System.out.println(-4 >>> 1);
		System.out.println(-2 >>> 1);
	}
}
