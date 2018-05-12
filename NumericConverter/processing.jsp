<%@include file="cents.jsp" %>
<%@include file="singleDigits.jsp" %>
<%@include file="doubleDigits.jsp" %>
<%@include file="tripleDigits.jsp" %>
<%@include file="quadDigits.jsp" %>

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
		return singleSingles(length, input, ouput, userInput, decimal);
	}
	
	public String doubleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return doudbleTens(length, input, ouput, userInput, decimal);
	}
	
	public String tripleDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return tripleHundreds(length, input, ouput, userInput, decimal);
	}
	
	public String quadDigitWithDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return quadThousands(length, input, ouput, userInput, decimal);
	}
	
	public String noDecimal(int length, String[] input, String[] ouput, String userInput, int decimal){
		return "Digit/s with No Decimal";
	}
	
	
	
	
	
	

%>


<html>
  <head>
  	
  </head>
  <body>
  	<p><%=outputString%></p>
  </body>
</html>