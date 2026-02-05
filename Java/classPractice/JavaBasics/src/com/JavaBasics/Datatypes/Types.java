package com.JavaBasics.Datatypes;

public class Types {
	public static void main(String[] args) {
		
		// DATA TYPES
		// 1 BYTE = 8 BITS
		// (2^(n-1)) to (2^(n-1))-1
		
		byte marks = 12;					// 1 byte = 8 bits
		short age = 200;					// 2 bytes = 16 bits
		int network = 123444;				// 4 bytes = 32 bits
		long moblieNumber = 1221478284l;	// 8 bytes = 64 bits
		
		float percentage = 232345.35332f;	// 4 bytes = 32 bits
		double price = 3174383.32353;		// 8 bytes = 64 bits
		
		char lastName = 'S';				// 2 bytes = 16 bits
		boolean isPresent = true;
		
		String name = "Sandeep";
		
		System.out.println(marks);
		System.out.println(age);
		System.out.println(network);
		System.out.println(moblieNumber);
		System.out.println(percentage);
		System.out.println(price);
		System.out.println(lastName);
		System.out.println(isPresent);
		System.out.println(name);
	}
}
