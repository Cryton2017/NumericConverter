<%!

	//Determine the first part of the whole number:
	public String doudbleTens(int length, String userInput, int decimal){
	
		//Variables:
		String OutPut = "";
		String singles = "";
		//String decimals = "";
		String currentChar = Character.toString(userInput.charAt(0));
			
		//Determine where to send the number:
		switch(Integer.parseInt(currentChar)){
			case 0:		singles = "Please enter a number that isnt preceded by a zero.";
						break;
			case 1: 	OutPut = "";		
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 2:		OutPut = "Twenty ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 3:		OutPut = "Thirty ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 4:		OutPut = "Forty ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 5:		OutPut = "Fifty ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 6:		OutPut = "Sixty ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 7:		OutPut = "Seventy ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 8:		OutPut = "Eighty ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			case 9:		OutPut = "Ninety ";
						singles = OutPut.concat(doubleSignles(length, userInput, OutPut, decimal));
						break;
			default:	singles = "Please enter a valid number.";
						break;
		}
			
		//Return the whole number:
		return singles;
	}

	//Determine the send part of the whole number:
	public String doubleSignles(int length, String userInput, String outPut, int decimal){
		
		//Variables:
		String OutPut = "";
		String decimals = "";
		String currentChar = Character.toString(userInput.charAt(1));
		char firstChar = userInput.charAt(0);
		
		//If the first part of the number is 1:
		if(firstChar == '1'){
			
			//Determine where to send the number:
			switch(Integer.parseInt(currentChar)){
				case 0:		OutPut = "Ten ";		
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break; 
				case 1: 	OutPut = "Eleven ";		
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 2:		OutPut = "Twelve ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 3:		OutPut = "Thirteen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 4:		OutPut = "Forteen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 5:		OutPut = "Fifteen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 6:		OutPut = "Sixteen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 7:		OutPut = "Seventeen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 8:		OutPut = "Eighteen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 9:		OutPut = "Nineteen ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				default:	decimals = "Please enter a valid number.";
							break;
			}
		
		//If the first part of the number is not 1:
		}else{
			
			//Determine where to send the number:
			switch(Integer.parseInt(currentChar)){
				case 0:		OutPut = "";		
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break; 
				case 1: 	OutPut = "One ";		
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 2:		OutPut = "Two ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 3:		OutPut = "Three ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 4:		OutPut = "Four ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 5:		OutPut = "Five ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 6:		OutPut = "Six ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 7:		OutPut = "Seven ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 8:		OutPut = "Eight ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 9:		OutPut = "Nine ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				default:	decimals = "Please enter a valid number.";
							break;
			}
		}
				
		//Return the converted number:
		return decimals;
	}
	
	//Determine the decimal part of the number:
	public String doubleDecimals(int length, String userInput, String outPut, int Decimals){
		
		//Variables:
		int deminalLength = length - 1 - Decimals;
		char firstDigit = userInput.charAt(Decimals + 1);
		char secondDigit = userInput.charAt(Decimals + 2);
		char secondChar = userInput.charAt(1);
		String usrIn = ""+secondChar;
		String complete = "";
		
		//Determine where to send the number:
		switch(Integer.parseInt(usrIn)){
			case 0:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
						break;
			case 1:		complete = outPut.concat("Dollars and "+tys(firstDigit, secondDigit));
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
	
		//Return the complete cents value:
		return complete;
	}

%>