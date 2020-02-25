package Tests;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

//import CustomExceptions.incorrectCentsFormatException;
import numberConverter.numberConverter;

public class ncTestCases {

	//Setup for tests:
	numberConverter converter = new numberConverter();
	
	//Generic Tests:
	
	@Test
	public void MaxNumberTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(2147483647, 99);
		String expectedRes = "Two Billion One Hundred and Forty Seven Million Four Hundred and Eighty Three Thousand Six Hundred and Forty Seven Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MinNumberTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(0, 00, "");
		String expectedRes = "Zero Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Trailing Zeros with Leading One:
	
	@Test
	public void TrailingZerosOneBillionTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000000, 00);
		String expectedRes = "One Billion Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosOneHundredMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000000, 00, "");
		String expectedRes = "One Hundred Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosTenMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000000, 00, "");
		String expectedRes = "Ten Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosOneMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000000, 00, "");
		String expectedRes = "One Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosOneHundredThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100000, 00, "");
		String expectedRes = "One Hundred Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosTenThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10000, 00, "");
		String expectedRes = "Ten Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosOneThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1000, 00, "");
		String expectedRes = "One Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosOneHundredsTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(100, 00, "");
		String expectedRes = "One Hundred Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosTensTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(10, 00, "");
		String expectedRes = "Ten Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingSinglesTensTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(1, 00, "");
		String expectedRes = "One Dollar and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Trailing Zeros with Leading Fives:
	
	@Test
	public void TrailingZerosFiveHundredMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(500000000, 00, "");
		String expectedRes = "Five Hundred Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFiftyMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(50000000, 00, "");
		String expectedRes = "Fifty Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFiveMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(5000000, 00, "");
		String expectedRes = "Five Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFiveHundredThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(500000, 00, "");
		String expectedRes = "Five Hundred Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFIftyThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(50000, 00, "");
		String expectedRes = "Fifty Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFiveThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(5000, 00, "");
		String expectedRes = "Five Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFiveHundredsTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(500, 00, "");
		String expectedRes = "Five Hundred Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosFivesTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(50, 00, "");
		String expectedRes = "Fifty Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingSinglesFivesTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(5, 00, "");
		String expectedRes = "Five Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Trailing Zeros with Leading Nines:
	
	@Test
	public void TrailingZerosNineHundredMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(900000000, 00, "");
		String expectedRes = "Nine Hundred Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNinetyMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(90000000, 00, "");
		String expectedRes = "Ninety Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNineMillionsTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(9000000, 00, "");
		String expectedRes = "Nine Million Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNineHundredThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(900000, 00, "");
		String expectedRes = "Nine Hundred Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNinetyThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(90000, 00, "");
		String expectedRes = "Ninety Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNineThousandsTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(9000, 00, "");
		String expectedRes = "Nine Thousand Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNineHundredsTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(900, 00, "");
		String expectedRes = "Nine Hundred Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingZerosNinesTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(90, 00, "");
		String expectedRes = "Ninety Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TrailingSinglesNinesTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(9, 00, "");
		String expectedRes = "Nine Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Billions() method:
	
	@Test
	public void BillionsNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1234567891, 56);
		String expectedRes = "One Billion Two Hundred and Thirty Four Million Five Hundred and Sixty Seven Thousand Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1034567891, 56);
		String expectedRes = "One Billion Thirty Four Million Five Hundred and Sixty Seven Thousand Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1004567891, 56);
		String expectedRes = "One Billion Four Million Five Hundred and Sixty Seven Thousand Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000567891, 56);
		String expectedRes = "One Billion Five Hundred and Sixty Seven Thousand Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000067891, 56);
		String expectedRes = "One Billion and Sixty Seven Thousand Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsFiveZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000007891, 56);
		String expectedRes = "One Billion and Seven Thousand Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsSixZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000891, 56);
		String expectedRes = "One Billion Eight Hundred and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsSevenZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000091, 56);
		String expectedRes = "One Billion and Ninety One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsEightZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000001, 56);
		String expectedRes = "One Billion and One Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsNineZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000000, 56);
		String expectedRes = "One Billion Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void BillionsTenZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000000, 6);
		String expectedRes = "One Billion Dollars and Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test HundredMillions() Method:
	
	@Test
	public void HundredMIllionsNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(123456789, 99, "");
		String expectedRes = "One Hundred and Twenty Three Million Four Hundred and Fifty Six Thousand Seven Hundred and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(103456789, 99, "");
		String expectedRes = "One Hundred and Three Million Four Hundred and Fifty Six Thousand Seven Hundred and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100456789, 99, "");
		String expectedRes = "One Hundred Million Four Hundred and Fifty Six Thousand Seven Hundred and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100056789, 99, "");
		String expectedRes = "One Hundred Million Fifty Six Thousand Seven Hundred and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100006789, 99, "");
		String expectedRes = "One Hundred Million Six Thousand Seven Hundred and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsFiveZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000789, 99, "");
		String expectedRes = "One Hundred Million Seven Hundred and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsSixZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000089, 99, "");
		String expectedRes = "One Hundred Million and Eighty Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsSevenZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000009, 99, "");
		String expectedRes = "One Hundred Million and Nine Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsEightZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000000, 99, "");
		String expectedRes = "One Hundred Million Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMIllionsNineZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000000, 9, "");
		String expectedRes = "One Hundred Million Dollars and Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test TenMillions() Method:
	
	@Test
	public void TenMIllionsNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(12345678, 99, "");
		String expectedRes = "Twelve Million Three Hundred and Forty Five Thousand Six Hundred and Seventy Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10345678, 99, "");
		String expectedRes = "Ten Million Three Hundred and Forty Five Thousand Six Hundred and Seventy Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10045678, 99, "");
		String expectedRes = "Ten Million Forty Five Thousand Six Hundred and Seventy Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10005678, 99, "");
		String expectedRes = "Ten Million and Five Thousand Six Hundred and Seventy Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000678, 99, "");
		String expectedRes = "Ten Million Six Hundred and Seventy Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsFiveZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000078, 99, "");
		String expectedRes = "Ten Million and Seventy Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsSixZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000008, 99, "");
		String expectedRes = "Ten Million and Eight Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsSevenZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000000, 99, "");
		String expectedRes = "Ten Million Dollars and Ninety Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMIllionsEightZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000000, 9, "");
		String expectedRes = "Ten Million Dollars and Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Millions Method:
	
	@Test
	public void MIllionsNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1234567, 89, "");
		String expectedRes = "One Million Two Hundred and Thirty Four Thousand Five Hundred and Sixty Seven Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1034567, 89, "");
		String expectedRes = "One Million and Thirty Four Thousand Five Hundred and Sixty Seven Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1004567, 89, "");
		String expectedRes = "One Million and Four Thousand Five Hundred and Sixty Seven Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000567, 89, "");
		String expectedRes = "One Million Five Hundred and Sixty Seven Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000067, 89, "");
		String expectedRes = "One Million and Sixty Seven Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsFiveZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000007, 89, "");
		String expectedRes = "One Million and Seven Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsSixZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000000, 89, "");
		String expectedRes = "One Million Dollars and Eighty Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MIllionsSevenZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000000, 9, "");
		String expectedRes = "One Million Dollars and Nine Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test HundredThousnads() Method:
	
	@Test
	public void HundredThousnadNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(123456, 78, "");
		String expectedRes = "One Hundred and Twenty Three Thousand Four Hundred and Fifty Six Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousnadOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(103456, 78, "");
		String expectedRes = "One Hundred and Three Thousand Four Hundred and Fifty Six Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousnadTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100456, 78, "");
		String expectedRes = "One Hundred Thousand Four Hundred and Fifty Six Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousnadThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100056, 78, "");
		String expectedRes = "One Hundred Thousand and Fifty Six Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousnadFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100006, 78, "");
		String expectedRes = "One Hundred Thousand and Six Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousnadFiveZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100000, 78, "");
		String expectedRes = "One Hundred Thousand Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousnadSixZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100000, 8, "");
		String expectedRes = "One Hundred Thousand Dollars and Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test TenThousands() Method:
	
	@Test
	public void TenThousnadNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(12345, 67, "");
		String expectedRes = "Twelve Thousand Three Hundred and Forty Five Dollars and Sixty Seven Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousnadOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10345, 67, "");
		String expectedRes = "Ten Thousand Three Hundred and Forty Five Dollars and Sixty Seven Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousnadTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10045, 67, "");
		String expectedRes = "Ten Thousand and Forty Five Dollars and Sixty Seven Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousnadThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10005, 67, "");
		String expectedRes = "Ten Thousand and Five Dollars and Sixty Seven Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousnadFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10000, 67, "");
		String expectedRes = "Ten Thousand Dollars and Sixty Seven Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousnadFiveZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10000, 7, "");
		String expectedRes = "Ten Thousand Dollars and Seven Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Thousands() Method:
	
	@Test
	public void ThousnadsNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1234, 56, "");
		String expectedRes = "One Thousand Two Hundred and Thirty Four Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void ThousnadsOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1034, 56, "");
		String expectedRes = "One Thousand and Thirty Four Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void ThousnadsTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1004, 56, "");
		String expectedRes = "One Thousand and Four Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void ThousnadsThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1000, 56, "");
		String expectedRes = "One Thousand Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void ThousnadsFourZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1000, 6, "");
		String expectedRes = "One Thousand Dollars and Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Hundreds() Method:
	
	@Test
	public void HundredsNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(123, 45, "");
		String expectedRes = "One Hundred and Twenty Three Dollars and Forty Five Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredsOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(103, 45, "");
		String expectedRes = "One Hundred and Three Dollars and Forty Five Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredsTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(100, 45, "");
		String expectedRes = "One Hundred Dollars and Forty Five Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredsThreeZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(100, 5, "");
		String expectedRes = "One Hundred Dollars and Five Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Tens() Method:
	
	@Test
	public void TensNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(12, 34, "");
		String expectedRes = "Twelve Dollars and Thirty Four Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TensOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(10, 34, "");
		String expectedRes = "Ten Dollars and Thirty Four Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TensTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(10, 4, "");
		String expectedRes = "Ten Dollars and Four Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Tens() Method with Higher Values:
	
	@Test
	public void TensHigherNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(34, 56, "");
		String expectedRes = "Thirty Four Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TensHigherOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(30, 56, "");
		String expectedRes = "Thirty Dollars and Fifty Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TensHigherTwoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(30, 6, "");
		String expectedRes = "Thirty Dollars and Six Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Single() Method:
	
	@Test
	public void SingleNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(1, 23, "");
		String expectedRes = "One Dollar and Twenty Three Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void SingleOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(1, 3, "");
		String expectedRes = "One Dollar and Three Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test Single() Method with higher values:
	
	@Test
	public void SingleHigherNoZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(6, 78, "");
		String expectedRes = "Six Dollars and Seventy Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void SingleHigherOneZerosTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(6, 8, "");
		String expectedRes = "Six Dollars and Eight Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test All Methods With '1' at the End:
	
	@Test
	public void BillionsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.Billions(1000000001, 0);
		String expectedRes = "One Billion and One Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredMillionsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredMillions(100000001, 0, "");
		String expectedRes = "One Hundred Million and One Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMillionsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(10000001, 0, "");
		String expectedRes = "Ten Million and One Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenMillionsHigherOneTest() {
		
		//Setup for tests:
		String actualRes = converter.TenMillions(50000001, 0, "");
		String expectedRes = "Fifty Million and One Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void MillionsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.Millions(1000001, 0, "");
		String expectedRes = "One Million and One Dollars and Zero Cents";
	    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredThousandsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.HundredThousands(100001, 0, "");
		String expectedRes = "One Hundred Thousand and One Dollars and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousandsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(10001, 0, "");
		String expectedRes = "Ten Thousand and One Dollars and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TenThousandsOneHigherTest() {
		
		//Setup for tests:
		String actualRes = converter.TenThousands(90001, 0, "");
		String expectedRes = "Ninety Thousand and One Dollars and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void ThousandsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.Thousands(1001, 0, "");
		String expectedRes = "One Thousand and One Dollars and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void HundredsOneTest() {
		
		//Setup for tests:
		String actualRes = converter.Hundreds(101, 0, "");
		String expectedRes = "One Hundred and One Dollars and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void TensOneTest() {
		
		//Setup for tests:
		String actualRes = converter.Tens(71, 0, "");
		String expectedRes = "Seventy One Dollars and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	@Test
	public void SingleOneTest() {
		
		//Setup for tests:
		String actualRes = converter.Single(1, 0, "");
		String expectedRes = "One Dollar and Zero Cents";
			    
		//Run the test:
		assertEquals(expectedRes, actualRes);
		
	}
	
	//Test for exceptions:
	
//	@Test(expected = incorrectCentsFormatException.class)
//	public void whenExceptionThrown_thenExpectationSatisfied() {
//		//Setup for tests:
//		String actualRes = converter.Single(1, 0, "");
//		String expectedRes = "One Dollar and Zero Cents";
//					    
//		//Run the test:
//		assertEquals(expectedRes, actualRes);
//	}
	
}

