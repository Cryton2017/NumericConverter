<%
	//Declare arrays for comparison:
	String[] charSet = {"1","2","3","4","5","6","7","8","9","0"};
	String[] charReplace = {"Zero", "One","Two","Three","Four","Five","Six","Seven","Eight","Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fifteen",
							"Eighteen", "teen", "Twenty", "Thirty", "Forty","Fifty", "ty", "Eighty", "Ninety", "Hundred", "Thousand"};
	
	//Get the parameters sent by the request:
	String inputNumber = request.getParameter("test");
	String outputString = "";
	int decimal = inputNumber.indexOf(".");
	int paramLength = inputNumber.length();
	
	//Determine the length of the whole number:
	switch(decimal){
		case 0:		outputString = decimalOnly(paramLength, charSet, charReplace, inputNumber, decimal);
					break;
		
		case 1:		outputString = finalFullDigit(paramLength, charSet, charReplace, inputNumber, decimal);
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

	public String finalFullDigit(int length, String[] input, String[] ouput, String userInput, int decimal){
		
		//Variables:
		String outPut = "";
		String decimals = "";
		String currentChar = Character.toString(userInput.charAt(0));
		
		switch(Integer.parseInt(currentChar)){
			case 1: 	outPut = "One ";		
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
			case 2:		outPut = "Two ";
						decimals = decimals(length, input, ouput, userInput, outPut, decimal);
						break;
		}
		
		
		
		/* //Determine what the digit is:
		for(int i=0; i<length; i++){
			currentChar = Character.toString(userInput.charAt(i));
			for(int j=0; j<10; j++){
				if(currentChar.equals(input[0])){
					outPut = "One ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[1])){
					outPut = "Two ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[2])){
					outPut = "Three ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[3])){
					outPut = "Four ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[4])){
					outPut = "Five ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[5])){
					outPut = "Six ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[6])){
					outPut = "Seven ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[7])){
					outPut = "Eight ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[8])){
					outPut = "Nine ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else if(currentChar.equals(input[9])){
					outPut = "Zero ";
					return decimals(length, input, ouput, userInput, outPut, decimal);
				}else{
					outPut = "Please Enter a valid number.";
					return outPut;
				}
			
			}
			
			
		} */
		
		return decimals;
	}
	
	public String doubleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return "Two Digits";
	}
	
	public String tripleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return "Three Digits";
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
		
		/* if(deminalLength == 2){
			if(userInput.charAt(0) == '1'){
				String complete = outPut.concat("Dollar and "+tys(firstDigit, secondDigit));
				return complete;
				
			}
			
		}else{
			complete = "Please enter a number with a maximum of two decimal points.";
		} */
		
		
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