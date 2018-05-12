<%!

	public String singleSingles(int length, String[] input, String[] ouput, String userInput, int decimal){
	//Variables:
			String outPut = "";
			String decimals = "";
			String currentChar = Character.toString(userInput.charAt(0));
			
			switch(Integer.parseInt(currentChar)){
				case 0:		decimals = "Please enter a number that isnt zero. (If you want to convert zero dollars and something cents, try starting with a '.') ";		
							//decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 1: 	outPut = "One ";		
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 2:		outPut = "Two ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 3:		outPut = "Three ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 4:		outPut = "Four ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 5:		outPut = "Five ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 6:		outPut = "Six ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 7:		outPut = "Seven ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 8:		outPut = "Eight ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				case 9:		outPut = "Nine ";
							decimals = singleDecimals(length, input, ouput, userInput, outPut, decimal);
							break;
				default:	decimals = "Please enter a valid number.";
							break;
			}
			
			//Return the amount:
			return decimals;
}

public String singleDecimals(int length, String[] input, String[] ouput, String userInput, String outPut, int Decimals){
	
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
	
%>