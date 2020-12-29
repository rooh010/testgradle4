package testgradle4;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class ProgramTest {
	@Test
	public void testSomeLibraryMethod() {
		Program classUnderTest = new Program();
		assertTrue("someLibraryMethod should return 'true'", classUnderTest.someMethod());
	}
}
