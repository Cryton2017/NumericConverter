package Tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;

import numberConverter.converterInit;
import CustomExceptions.incorrectCentsFormatException;
import CustomExceptions.NegativeNumberException;

public class convertInitTestCase {
	
	@Rule
	public final ExpectedException exception = ExpectedException.none();
	
	//Setup for tests:
	converterInit converter = new converterInit();
	
	//Exception Testing:
	
	@Test
	public void iCFETest() {
		
		String[] actualRes = new String[2];
		
		exception.expect(incorrectCentsFormatException.class);
		actualRes = converter.initialiseConverter("1234.456");
		
//		try {
//			actualRes = converter.initialiseConverter("1234.456");
//			fail("Expected an IndexOutOfBoundsException to be thrown");
//		} catch (incorrectCentsFormatException incorrectCentsFormatException) {
//		    assertThat(incorrectCentsFormatException.getMessage(), is("Please ensure that the decminal is correct to two decimal places."));
//		}
		
		//Setup for tests:
		
		
	}

}
