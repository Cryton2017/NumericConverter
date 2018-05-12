<%@include file="doubleDigits.jsp" %>
<%@include file="tripleDigits.jsp" %>

<%
	//Declare arrays for comparison:
	String[] charSet = {"1","2","3","4","5","6","7","8","9","0"};
	String[] charReplace = {"Zero ", "One ","Two ","Three ","Four ","Five ","Six ","Seven ","Eight ","Nine ",
							"Ten ", "Eleven ", "Twelve ", "Thirteen ", "Fifteen ", "Eighteen ", "teen ", "Twenty", "Thirty", "Forty","Fifty", "ty", "Eighty", "Ninety", "Hundred", "Thousand"};
	
	//Get the parameters sent by the request:
	String inputNumber = request.getParameter("test");
	String outputString = "";
	int decimal = inputNumber.indexOf(".");
	int paramLength = inputNumber.length();
	
	//Determine the length of the whole number:
	switch(decimal){
		case 0:		outputString = decimalOnly(paramLength, charSet, charReplace, inputNumber, decimal);
					break;
		
		case 1:		outputString = singleDigitWithDecimal(paramLength, charSet, charReplace, inputNumber, decimal);
					break;
				
		case 2: 	outputString = doubleDigitWithDecimal(paramLength, charSet, charReplace, inputNumber, decimal);
					break;
		
		case 3:		outputString = tripleDigitWithDecimal(paramLength, charSet, charReplace, inputNumber, decimal);
					break;
			
		case 4:		outputString = quadDigitWithDecimal(paramLength, charSet, charReplace, inputNumber, decimal);
					break;
			
		case -1:	outputString = noDecimal(paramLength, charSet, charReplace, inputNumber, decimal);
					break;	
					
		default:	outputString = "Please enter a valid number taht does not have more than 4 whole digits";
					break;
	}
	
%>	
<%!

	public String decimalOnly(int length, String[] input, String[] ouput, String userInput, int decimal){
		return "No Digit";
	}

	public String singleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		
		//Variables:
		String outPut = "";
		String decimals = "";
		String currentChar = Character.toString(userInput.charAt(0));
		
		switch(Integer.parseInt(currentChar)){
			case 0:		outPut = "Zero ";		
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 1: 	outPut = "One ";		
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 2:		outPut = "Two ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 3:		outPut = "Three ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 4:		outPut = "Four ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 5:		outPut = "Five ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 6:		outPut = "Six ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 7:		outPut = "Seven ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 8:		outPut = "Eight ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 9:		outPut = "Nine ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			default:	decimals = "Please enter a valid number.";
						break;
		}
		
		//Return the amount:
		return decimals;
	}
	
	public String doubleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return doudbleTens(length, input, ouput, userInput, decimal);
	}
	
	public String tripleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return tripleHundreds(length, input, ouput, userInput, decimal);
	}
	
	public String quadDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return "Four Digits";
	}
	
	public String noDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return "Digit/s with No Decimal";
	}
	
	
	
	public String decimals(int length, String[] input, String[] ouput, String userInput, String outPut, int Decimals){
		
		int deminalLength = length - 1 - Decimals;
		char firstDigit = userInput.charAt(Decimals + 1);
		char secondDigit = userInput.charAt(Decimals + 2);
		char firstChar = userInput.charAt(0);
		String usrIn = ""+firstChar;
		String complete = "";
		
		switch(Integer.parseInt(usrIn)){
		
			case 0:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 1:		complete = outPut.concat("Dollar and "+tys(firstDigit, secondDigit));
						break;
			case 2:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 3:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 4:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 5:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 6:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 7:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 8:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 9:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			default:	complete = "Please enter a number with a maximum of two decimal points.";
			
		}
	
		//Retunr the complete cents value:
		return complete;
	}
	
	//Convert teen numbers from numeric values to text values:
	public String teens(char digitTwo){
		String number = ""+digitTwo;
		switch(Integer.parseInt(number)){
		
			case 0:	number = "";
					break;
			case 1: number = "Eleven ";
					break;
			case 2:	number = "Twelve ";
					break;
			case 3:	number = "Thirteen ";
					break;
			case 4:	number = "Fourteen ";
					break;
			case 5:	number = "Fifteen ";
					break;
			case 6:	number = "Sixteen ";
					break;
			case 7:	number = "Seventeen ";
					break;
			case 8:	number = "Eighteen ";
					break;
			case 9:	number = "Nineteen ";
					break;
			default: number = "Error (teens)";
			
		}
		
		//Return the number:
		return number;
	}
	
	public String leadingNumberZero(char digitTwo){
		
		String number = ""+digitTwo;
		switch(Integer.parseInt(number)){
		
			case 0:	number = "Zero ";
					break;
			case 1: number = "One ";
					break;	
			case 2:	number = "Two ";
					break;		
			case 3:	number = "Three ";
					break;
			case 4:	number = "Four ";
					break;
			case 5:	number = "Five ";
					break;
			case 6:	number = "Six ";
					break;
			case 7:	number = "Seven ";
					break;
			case 8:	number = "Eight ";
					break;
			case 9:	number = "Nine ";
					break;
			default: number = "Error (leadingNumberZero)";
			
		}
		
		//Return the number:
		return number;
	}
	
	//Convert all double digit numbers from numeric values to text values:
	public String tys(char digitOne, char digitTwo){
		
		String number = ""+digitOne;
		String number1 = "";
		
		switch(Integer.parseInt(number)){
		
			case 0:	number = "";
					number1 = leadingNumberZero(digitTwo);
					break;
			case 1: number = "";
					number1 = teens(digitTwo);
					break;
			case 2:	number = "Twenty ";
					number1 = singles(digitTwo);
					break;
			case 3:	number = "Thirty ";
					number1 = singles(digitTwo);
					break;
			case 4:	number = "Forty ";
					number1 = singles(digitTwo);
					break;	
			case 5:	number = "Fifty ";
					number1 = singles(digitTwo);
					break;
			case 6:	number = "Sixty ";
					number1 = singles(digitTwo);
					break;
			case 7:	number = "Seventy ";
					number1 = singles(digitTwo);
					break;
			case 8:	number = "Eighty ";
					number1 = singles(digitTwo);
					break;
			case 9:	number = "Ninty ";
					number1 = singles(digitTwo);
					break;
			default: number = "Error (tys)";
			
		}
		
		//Return the amount of cents:
		return number.concat(number1+"Cents");
	}
	
	//Convert all regular single digit numbers from numeric values to text values:
	public String singles(char secondDigit){
		
		String number = ""+secondDigit;
		
		switch(Integer.parseInt(number)){
		
			case 0:	number = "";
					break;
			case 1: number = "One ";
					break;
			case 2:	number = "Two ";
					break;
			case 3:	number = "Three ";
					break;
			case 4:	number = "Four ";
					break;
			case 5:	number = "Five ";
					break;
			case 6:	number = "Six ";
					break;
			case 7:	number = "Seven ";
					break;
			case 8:	number = "Eight ";
					break;
			case 9:	number = "Nine ";
					break;
			default: number = "Error (singles)";
			
		}
		
		//Return the number:
		return number;
		
	}

%>


<html>
  <head>
  	
  </head>
  <body>
  	<p><%=outputString%></p>
  </body>
</html>