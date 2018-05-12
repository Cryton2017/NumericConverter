<%!

	//Determine the first character of the number:
	public String tripleHundreds(int length, String userInput, int decimal){
	
		//Variables:
		String tripleOutPut = "";
		String singles = "";
		String currentChar = Character.toString(userInput.charAt(0));
			
		//Determine where to send the number"
		switch(Integer.parseInt(currentChar)){
			case 0:		singles = "Please enter a number that isnt preceded by a zero.";
						break;
			case 1: 	tripleOutPut = "One Hundred and ";		
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 2:		tripleOutPut = "Two Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 3:		tripleOutPut = "Three Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 4:		tripleOutPut = "Four Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 5:		tripleOutPut = "Five Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 6:		tripleOutPut = "Six Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 7:		tripleOutPut = "Seven Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 8:		tripleOutPut = "Eight Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			case 9:		tripleOutPut = "Nine Hundred and ";
						singles = tripleOutPut.concat(tripleTens(length, userInput, decimal));
						break;
			default:	singles = "Please enter a valid number.";
						break;
		}
			
		//Return the complete number:
		return singles;
	}

	//Determine the second character of the number:
	public String tripleTens(int length, String userInput, int decimal){
		
		//Variables:
		String tripleOutPut = "";
		String singles = "";
		String currentChar = Character.toString(userInput.charAt(1));
			
		//Determine where to send the number:
		switch(Integer.parseInt(currentChar)){
			case 0:		singles = "";
						break;
			case 1: 	tripleOutPut = "";		
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 2:		tripleOutPut = "Twenty ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 3:		tripleOutPut = "Thirty ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 4:		tripleOutPut = "Forty ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 5:		tripleOutPut = "Fifty ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 6:		tripleOutPut = "Sixty ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 7:		tripleOutPut = "Seventy ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 8:		tripleOutPut = "Eighty ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			case 9:		tripleOutPut = "Ninety ";
						singles = tripleOutPut.concat(tripleSignles(length, userInput, tripleOutPut, decimal));
						break;
			default:	tripleOutPut = "Please enter a valid number.";
						break;
		}
			
		//Return the number:
		return singles;
		
	}

	//Determine the third character of the number:
	public String tripleSignles(int length, String userInput, String outPut, int decimal){
		
		//Variables:
		String OutPut = "";
		String decimals = "";
		String currentChar = Character.toString(userInput.charAt(2));
		char firstChar = userInput.charAt(1);
		
		//If the tens value is 1:
		if(firstChar == '1'){
			
			//Determine where to send the number:
			switch(Integer.parseInt(currentChar)){
				case 0:		OutPut = "Ten ";		
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break; 
				case 1: 	OutPut = "Eleven ";		
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 2:		OutPut = "Twelve ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 3:		OutPut = "Thirteen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 4:		OutPut = "Forteen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 5:		OutPut = "Fifteen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 6:		OutPut = "Sixteen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 7:		OutPut = "Seventeen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 8:		OutPut = "Eighteen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 9:		OutPut = "Nineteen ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				default:	decimals = "Please enter a valid number.";
							break;
			}
		
		//If the tens number is not 1:
		}else{
			
			//Determine where to send the number:
			switch(Integer.parseInt(currentChar)){
				case 0:		OutPut = "";		
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break; 
				case 1: 	OutPut = "One ";		
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 2:		OutPut = "Two ";
							decimals = doubleDecimals(length, userInput, OutPut, decimal);
							break;
				case 3:		OutPut = "Three ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 4:		OutPut = "Four ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 5:		OutPut = "Five ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 6:		OutPut = "Six ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 7:		OutPut = "Seven ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 8:		OutPut = "Eight ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				case 9:		OutPut = "Nine ";
							decimals = tripleDecimals(length, userInput, OutPut, decimal);
							break;
				default:	decimals = "Please enter a valid number.";
							break;
			}
		}
				
		//Return the number:
		return decimals;
	}
	
	//Determine the cents par of the number:
	public String tripleDecimals(int length, String userInput, String outPut, int Decimals){
			
			//Variabels:
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
		
			//Retunr the complete cents value:
			return complete;
			
	}
	
%>