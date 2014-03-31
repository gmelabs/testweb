package testweb;

import static org.junit.Assert.*;

import org.junit.Test;

import acn.b.gmelabs.web.Prueba;

public class TestPrueba {
	
	@Test
	public void testSuma() {
		Prueba prueba = new Prueba();
		int cinco = prueba.suma(2, 3);
		int cero = prueba.suma(2, -2);
		assertEquals("Error al sumar 2 y 3",  5, cinco);
		assertEquals("Error al sumar 2 y -2", 0, cero);
	}

}
