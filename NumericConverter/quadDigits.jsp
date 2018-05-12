<%!

	//Determine the first character of the number:
	public String quadThousands(int length, String userInput, int decimal){
		
		//Variables:
		String quadOutPut = "";
		String singles = "";
		String currentChar = Character.toString(userInput.charAt(0));
			
		//Determine where to send the number:
		switch(Integer.parseInt(currentChar)){
			case 0:		singles = "Please enter a number that isnt preceded by a zero.";
						break;
			case 1: 	quadOutPut = "One Thousand ";		
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 2:		quadOutPut = "Two Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 3:		quadOutPut = "Three Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 4:		quadOutPut = "Four Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 5:		quadOutPut = "Five Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 6:		quadOutPut = "Six Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 7:		quadOutPut = "Seven Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 8:		quadOutPut = "Eight Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			case 9:		quadOutPut = "Nine Thousand ";
						singles = quadOutPut.concat(quadHundreds(length, userInput, decimal));
						break;
			default:	singles = "Please enter a valid number.";
						break;
		}
			
		//Return the full amount:
		return singles;
	}

	//Determine the second character of the number:
	public String quadHundreds(int length, String userInput, int decimal){
	
		//Variables:
		String quadOutPut = "";
		String singles = "";
		//String decimals = "";
		String currentChar = Character.toString(userInput.charAt(1));
			
		//Determine where to send the number:
		switch(Integer.parseInt(currentChar)){
			case 0:		singles = "Please enter a number that isnt preceded by a zero.";
						break;
			case 1: 	quadOutPut = "One Hundred and ";		
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 2:		quadOutPut = "Two Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 3:		quadOutPut = "Three Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 4:		quadOutPut = "Four Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 5:		quadOutPut = "Five Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 6:		quadOutPut = "Six Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 7:		quadOutPut = "Seven Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 8:		quadOutPut = "Eight Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			case 9:		quadOutPut = "Nine Hundred and ";
						singles = quadOutPut.concat(quadTens(length, userInput, decimal));
						break;
			default:	singles = "Please enter a valid number.";
						break;
		}
			
		//Return the number:
		return singles;
		
	}

	//Determine the third character of the number:
	public String quadTens(int length, String userInput, int decimal){
		
		//Variables:
		String quadOutPut = "";
		String singles = "";
		String currentChar = Character.toString(userInput.charAt(2));
			
		//Determine whre to send the number:
		switch(Integer.parseInt(currentChar)){
			case 0:		singles = "";
						break;
			case 1: 	quadOutPut = "";		
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 2:		quadOutPut = "Twenty ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 3:		quadOutPut = "Thirty ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 4:		quadOutPut = "Forty ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 5:		quadOutPut = "Fifty ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 6:		quadOutPut = "Sixty ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 7:		quadOutPut = "Seventy ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 8:		quadOutPut = "Eighty ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			case 9:		quadOutPut = "Ninety ";
						singles = quadOutPut.concat(quadSignles(length, userInput, quadOutPut, decimal));
						break;
			default:	quadOutPut = "Please enter a valid number.";
						break;
		}
			
		//Return the number:
		return singles;
		
	}

	//Determine the fourth character of the number:
	public String quadSignles(int length, String userInput, String outPut, int decimal){
		
		//Variables:
		String OutPut = "";
		String decimals = "";
		String currentChar = Character.toString(userInput.charAt(3));
		char firstChar = userInput.charAt(2);
		
		//If the third character of the number is a 1:
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
		
		//If the character is not a 1:
		}else{
			
			//Determine where to send the number:
			switch(Integer.parseInt(currentChar)){
				case 0:		OutPut = "";		
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break; 
				case 1: 	OutPut = "One ";		
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 2:		OutPut = "Two ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 3:		OutPut = "Three ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 4:		OutPut = "Four ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 5:		OutPut = "Five ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 6:		OutPut = "Six ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 7:		OutPut = "Seven ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 8:		OutPut = "Eight ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				case 9:		OutPut = "Nine ";
							decimals = quadDecimals(length, userInput, OutPut, decimal);
							break;
				default:	decimals = "Please enter a valid number.";
							break;
							
			}
		}
				
		//Return the number:
		return decimals;
	}
	
//Determine the cents section of the number:
public String quadDecimals(int length, String userInput, String outPut, int Decimals){
		
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
	
		//Retunr the complete cents value:
		return complete;
		
	}
	
%>