<%!
	
	//Calculate the amount of cents:
	public String zeroDecimals(int length, String userInput, int Decimals){
		
		//Variables:
		int deminalLength = length - 1 - Decimals;
		char firstDigit = userInput.charAt(Decimals + 1);
		char secondDigit = userInput.charAt(Decimals + 2);
		char firstChar = userInput.charAt(1);
		String usrIn = ""+firstChar;
		String complete = "";
		String outPut = "";
		
		//Send the converted characters to be processed:
		switch(Integer.parseInt(usrIn)){
			case 0:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 1:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 2:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 3:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 4:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 5:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 6:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 7:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 8:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 9:		complete = outPut.concat("Zero Dollars and "+tys(firstDigit, secondDigit));
						break;
			default:	complete = "Please enter a number with a maximum of two decimal points.";
		}
	
		//Retunr the complete cents value:
		return complete;
		
	}
	
%>