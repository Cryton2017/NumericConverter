<%@include file="cents.jsp" %>
<%@include file="zeroDigits.jsp" %>
<%@include file="singleDigits.jsp" %>
<%@include file="doubleDigits.jsp" %>
<%@include file="tripleDigits.jsp" %>
<%@include file="quadDigits.jsp" %>

<%

	//Get the parameters sent by the request:
	String inputNumber = request.getParameter("test");
	//Analyse the parameters:
	String outputString = "";
	int decimal = inputNumber.indexOf(".");
	int paramLength = inputNumber.length();
	
	//Determine the length of the whole number (No decimals):
	switch(decimal){
		case -1:	outputString = "Please enter a number with two decimal places.";
					break;	
		case 0:		outputString = decimalOnly(paramLength, inputNumber, decimal);
					break;
		case 1:		outputString = singleDigitWithDecimal(paramLength, inputNumber, decimal);
					break;
		case 2: 	outputString = doubleDigitWithDecimal(paramLength, inputNumber, decimal);
					break;
		case 3:		outputString = tripleDigitWithDecimal(paramLength, inputNumber, decimal);
					break;

		case 4:		outputString = quadDigitWithDecimal(paramLength, inputNumber, decimal);
					break;
		default:	outputString = "Please enter a valid number taht does not have more than 4 whole digits";
					break;
	}
	
%>	
<%!
	
	//Get the converted string:
	public String decimalOnly(int length, String userInput, int decimal){
		return zeroDecimals(length, userInput, decimal);
	}

	//Get the converted string:
	public String singleDigitWithDecimal(int length, String userInput, int decimal){
		return singleSingles(length, userInput, decimal);
	}
	
	//Get the converted string:
	public String doubleDigitWithDecimal(int length, String userInput, int decimal){
		return doudbleTens(length, userInput, decimal);
	}
	
	//Get the converted string:
	public String tripleDigitWithDecimal(int length, String userInput, int decimal){
		return tripleHundreds(length, userInput, decimal);
	}
	
	//Get the converted string:
	public String quadDigitWithDecimal(int length, String userInput, int decimal){
		return quadThousands(length, userInput, decimal);
	}
	
%>

<html>
  <head>
  	<title>Result</title>
  </head>
  <body>
  	<p><%=outputString%></p>
  </body>
</html>
