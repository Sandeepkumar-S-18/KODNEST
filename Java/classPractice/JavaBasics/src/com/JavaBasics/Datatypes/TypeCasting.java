package com.JavaBasics.Datatypes;

public class TypeCasting {
	public static void main(String[] args) {
		
		// IMPLICIT / WIDENING / INTRINSIC TYPE CASTING
		// BTYE -> SHORT -> INT -> LONG -> FLOAT -> DOUBLE
		byte a = 10;
		int b = a;					// BYTE - INT
		System.out.println(a);		// BYTE
		System.out.println(b);		// INT
		
		double e = b;				// INT - DOUBLE
		float f = b;				// INT - FLOAT
		System.out.println(e);		// DOUBLE
		System.out.println(f);		// FLOAT
		
		long g = 12456765432134567l;
		f = g;						// LONG - FLOAT
		System.out.println(g);		// LONG
		System.out.println(f);		// FLOAT
		
		
	
		// EXPLICIT / NARROWING / EXTRINSIC TYPE CASTING
		// DOUBLE -> FLOAT -> LONG -> INT -> SHORT -> BYTE
		short c = 128;
		byte d = (byte) c;			// SHORT - INT
		System.out.println(c);		// SHORT
		System.out.println(d);		// INT
		
		double h = 7376.3767;		
		int i = (int) h;			// DOUBLE - INT
		System.out.println(h);		// DOUBLE
		System.out.println(i);		// INT
		
		float j = 456787.87557f;
		long k = (long) j;			// FLOAT - LONG
		System.out.println(j);		// FLOAT
		System.out.println(k);		// LONG
		
		
		
		// CHAR
		char ch1 = 'a';
		
		byte by1 = (byte) ch1;		// CHAR - BYTE = EXPLICIT
		System.out.println(by1);
		short sh1 = (short) ch1;	// CHAR - SHORT = EXPLICIT
		System.out.println(sh1);
		int in1 = ch1;				// CHAR - INT = IMPLICIT
		System.out.println(in1);
		long ln1 = ch1;				// CHAR - LONG = IMPLICIT
		System.out.println(ln1);
		float fl1 = ch1;			// CHAR - FLOAT = IMPLICIT
		System.out.println(fl1);
		double do1 = ch1;			// CHAR - DOUBLE = IMPLICIT
		System.out.println(do1);
		
		
		char ch2;
		
		int in2 = 3205;
		ch2 = (char) in2;			// INT - CHAR = EXPLICIT
		System.out.println(ch2);
		long ln2 = 66;
		ch2 = (char) ln2;			// LONG - CHAR = EXPLICIT
		System.out.println(ch2);
		float fl2 = 67.566f;
		ch2 = (char) fl2;			// FLOAT - CHAR = EXPLICIT
		System.out.println(ch2);
		double do2 = 68.7657;
		ch2 = (char) do2;			// DOUBLE - CHAR = EXPLICIT
		System.out.println(ch2);
	}
}
