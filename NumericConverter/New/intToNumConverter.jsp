<%@include file="numberConverter.jsp" %>

<%

    //Get the parameters sent by the request:
    String outputString = "";
    String inputNumber = request.getParameter("userInput");

    //Setup variables:
    String wholeNumberStr = "";
    String decimalNumberStr = "";
    int wholeNumber = 0;
    int decimalNumber = 0;
    int wholeNumberLength = 0;
    int decimalLength = 0;

    try{

        //Analyse the parameters:
        String[] valueSplit = inputNumber.split("\\.", 2);
        wholeNumberStr = valueSplit[0];
        decimalNumberStr = valueSplit[1];
        wholeNumber = Integer.parseInt(wholeNumberStr);
        decimalNumber = Integer.parseInt(decimalNumberStr);
        wholeNumberLength = String.valueOf(wholeNumber).length();
        decimalLength = String.valueOf(decimalNumber).length();

        //Check to make sure decimal leng is 2:
        if(decimalLength == 2 || (decimalLength == 1 && decimalNumber < 10)){

            //Convert integer number to string number:
            switch(wholeNumberLength){
                case 10:    outputString = Billions(wholeNumber, decimalNumber);
                            break;
                case 9:    outputString = HundredMillions(wholeNumber, decimalNumber, "");
                            break;
                case 8:     outputString = TenMillions(wholeNumber, decimalNumber, "");
                            break;
                case 7:     outputString = Millions(wholeNumber, decimalNumber, "");
                            break;
                case 6:     outputString = HundredThousands(wholeNumber, decimalNumber, "");
                            break;
                case 5:     outputString = TenThousands(wholeNumber, decimalNumber, "");
                            break;
                case 4:     outputString = Thousands(wholeNumber, decimalNumber, "");
                            break;
                case 3:     outputString = Hundreds(wholeNumber, decimalNumber, "");
                            break;
                case 2:     outputString = Tens(wholeNumber, decimalNumber, "");
                            break;
                case 1:     outputString = Single(wholeNumber, decimalNumber, "");
                            break;
                default:    outputString = "Please enter a value with a max size of 10 digits. (Billion)";
                            break;
            }

        }else{

            //Alert the user to an error:
            outputString = "Please ensure that the decminal is correct to two decimal places.";

        }

    }catch(Exception e){

        //Alert the user to an error:
        outputString = "Please Enter a number correct to two decimal places." + e;

    }
    
%>

<html>
  <head>
  	<title>Number to String Converter - Result</title>
  </head>
  <body>
  	<p>Output: <%=outputString%></p>
  	<p>Input: <%=inputNumber%></p>
  	<p>Whole: <%=wholeNumberStr%></p>
  	<p>Decimal: <%=decimalNumberStr%></p>
      <p>Whole: <%=wholeNumberLength%></p>
  	<p>Decimal: <%=decimalLength%></p>

  </body>
</html>