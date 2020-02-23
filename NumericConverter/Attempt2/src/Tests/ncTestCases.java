package Tests;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import numberConverter.numberConverter;

public class ncTestCases {

	numberConverter converter = new numberConverter();
	
	@Test
	public void testSetup() {
		String str= "I am done with Junit setup";
	    assertEquals("I am done with Junit setup",str);
	}
	
	@Test
	public void BillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1234567891, 55);
		String expectedRes = "One Billion Two Hundred and Thirty Four Million Five Hundred and Sixty Seven Thousand Eight Hundred and Nintey One Dollars and Fifty Five Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
}
