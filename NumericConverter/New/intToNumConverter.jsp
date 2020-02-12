<%@include file="numberConverter.jsp" %>

<%!

    //Initial Arrays:
    String[] singles = new String[]{"One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Zero"};
    String[] teens = new String[]{"Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"};
    String[] tys = new String[]{"Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty"};
    String[] bigNums = new String[]{"Hundred", "Thousand", "Million", "Billion", "Trillion", "Quadrillion", "Quintillion", "sextillion", 
                                    "Septillion", "Octillion", "Nonillion", "Decillion", "Undecillion", "Duodecillion", "Tredecillion", "Quattuordecillion", 
                                    "Quindecillion", "Sexdecillion", "Septendecillion", "Octodecillion", "Novemdecillion", "Vigintillion", "Centillion"};

    //Get the parameters sent by the request:
    String outputString = "";

    try{
        String inputNumber = request.getParameter("userInput");
        string[] valueSplit = inputNumber.split(".", 2); 
    }catch(Exception e){
        outputString = "An unknow error occured, please try again."
    }

	//Analyse the parameters:
    int wholeNumber = valueSplit[0];
	int decimalNumber = valueSplit[1];
    int wholeNumberLength = wholeNumber.length();
    int decimalLength = decimalNumber.length();

    if(decimalNumber == 2){
        if (wholeNumberLength == 19){
            outputString = Quintillion(wholeNumber, decimalNumber);
        }else if (wholeNumberLength == 16){
            outputString = Quadrillion(wholeNumber, decimalNumber);
        }else if (wholeNumberLength == 13){
            outputString = Trillion(wholeNumber, decimalNumber);
        }else if (wholeNumberLength == 10){
            outputString = Billion(wholeNumber, decimalNumber);
        }else if (wholeNumberLength == 7){
            outputString = Million(wholeNumber, decimalNumber);
        }else if(wholeNumberLength == 6){
            outputString = HundredThousands(wholeNumber, decimalNumber);
        }else if(wholeNumberLength == 5){
            outputString = TenThousands(wholeNumber, decimalNumber);
        }else if(wholeNumberLength == 4){
            outputString = Thousands(wholeNumber, decimalNumber);
        }else if(wholeNumberLength == 3){
            outputString = Hundreds(wholeNumber, decimalNumber);
        }else if(wholeNumberLength == 2){
            outputString = Tens(wholeNumber, decimalNumber);
        }else if(wholeNumberLength == 1){
            outputString = Single(wholeNumber, decimalNumber);
        }
    }else{
        outputString = "Please enter a number correct to two decimal places.";
    }
    
%>

<html>
  <head>
  	<title>Number to String Converter - Result</title>
  </head>
  <body>
  	<p><%=outputString%></p>
  </body>
</html>