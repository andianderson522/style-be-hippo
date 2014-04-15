package com.condenast.style.stubhippo;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class DeleteMeTest {
	
	private DeleteMe dm;

	@Test
	public void constructor() {
		assertNotNull(this.dm);
	}
	
	@Before
	public void setUp() {
		this.dm = new DeleteMe();
	}

}
