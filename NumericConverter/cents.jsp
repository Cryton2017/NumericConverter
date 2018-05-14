<%!

//Convert teen numbers from numeric values to text values:
	public String teens(char digitTwo){
		String number = ""+digitTwo;
		switch(Integer.parseInt(number)){
		
			case 0:		number = "";
						break;
			case 1: 	number = "Eleven ";
						break;
			case 2:		number = "Twelve ";
						break;
			case 3:		number = "Thirteen ";
						break;
			case 4:		number = "Forteen ";
						break;
			case 5:		number = "Fifteen ";
						break;
			case 6:		number = "Sixteen ";
						break;
			case 7:		number = "Seventeen ";
						break;
			case 8:		number = "Eighteen ";
						break;
			case 9:		number = "Nineteen ";
						break;
			default: 	number = "An error occured.";
			
		}
		
		//Return the number:
		return number;
	}
	
	public String leadingNumberZero(char digitTwo){
		
		String number = ""+digitTwo;
		switch(Integer.parseInt(number)){
		
			case 0:		number = "Zero ";
						break;
			case 1: 	number = "One ";
						break;	
			case 2:		number = "Two ";
						break;		
			case 3:		number = "Three ";
						break;
			case 4:		number = "Four ";
						break;
			case 5:		number = "Five ";
						break;
			case 6:		number = "Six ";
						break;
			case 7:		number = "Seven ";
						break;
			case 8:		number = "Eight ";
						break;
			case 9:		number = "Nine ";
						break;
			default: 	number = "An error occured.";
			
		}
		
		//Return the number:
		return number;
	} 
	
	//Convert all double digit numbers from numeric values to text values:
	public String tys(char digitOne, char digitTwo){
		
		String number = ""+digitOne;
		String number1 = "";
		
		switch(Integer.parseInt(number)){
		
			case 0:		number = "";
						number1 = leadingNumberZero(digitTwo);
						break;
			case 1: 	number = "";
						number1 = teens(digitTwo);
						break;
			case 2:		number = "Twenty ";
						number1 = singles(digitTwo);
						break;
			case 3:		number = "Thirty ";
						number1 = singles(digitTwo);
						break;
			case 4:		number = "Forty ";
						number1 = singles(digitTwo);
						break;	
			case 5:		number = "Fifty ";
						number1 = singles(digitTwo);
						break;
			case 6:		number = "Sixty ";
						number1 = singles(digitTwo);
						break;
			case 7:		number = "Seventy ";
						number1 = singles(digitTwo);
						break;
			case 8:		number = "Eighty ";
						number1 = singles(digitTwo);
						break;
			case 9:		number = "Ninty ";
						number1 = singles(digitTwo);
						break;
			default: 	number = "An error occured.";
			
		}
		
		//Return the amount of cents:
		return number.concat(number1+"Cents");
	}
	
	//Convert all regular single digit numbers from numeric values to text values:
	public String singles(char secondDigit){
		
		String number = ""+secondDigit;
		
		switch(Integer.parseInt(number)){
		
			case 0:		number = "";
						break;
			case 1:		number = "One ";
						break;
			case 2:		number = "Two ";
						break;
			case 3:		number = "Three ";
						break;
			case 4:		number = "Four ";
						break;
			case 5:		number = "Five ";
						break;
			case 6:		number = "Six ";
						break;
			case 7:		number = "Seven ";
						break;
			case 8:		number = "Eight ";
						break;
			case 9:		number = "Nine ";
						break;
			default: 	number = "An error occured.";
			
		}
		
		//Return the number:
		return number;
		
	}
	
%>