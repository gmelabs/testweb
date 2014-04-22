package acn.b.gmelabs.web;

import com.squareup.pollexor.Thumbor;

public class Prueba {
	public int suma(int num1, int num2) {
		return num1 + num2;
	}
	public Thumbor getThumbor() {
		return Thumbor.create("localhost");
	}
}
