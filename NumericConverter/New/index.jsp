<%@include file="numberConverter.jsp"%>
<%@include file="CustomExceptions.jsp"%>

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

    //Ensure the number is not negative:
    if(Character.toString(inputNumber.charAt(0)).compareTo("-") == 0){
      System.out.println("Exepction right!!");
      throw new NegativeNumberException("Negative Numbers are Not Allowed!");
    }

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

      System.out.println(outputString);

    }else{

        //Alert the user to an error:
        throw new incorrectCentsFormatException("Please ensure that the decminal is correct to two decimal places.");

    }

  }catch(NumberFormatException e){
    //Alert the user to an error:
    outputString = "Maximum Number allowed is 2 147 483 647.99";
    System.out.println(outputString);
    System.out.println(e);
  }catch(ArrayIndexOutOfBoundsException e){
    //Alert the user to an error:
    outputString = "Please Enter a Number with Two (2) Decimal Places.";
    System.out.println(outputString);
    System.out.println(e);
  }catch(StringIndexOutOfBoundsException e){
    //Alert the user to an error:
    outputString = "Please Enter a Number Before Submitting.";
    System.out.println(outputString);
    System.out.println(e);
  }catch(NegativeNumberException e){
    //Alert the user to an error:
    outputString = e.getMessage();
    System.out.println(outputString);
    System.out.println(e);
  }catch(incorrectCentsFormatException e){
    //Alert the user to an error:
    outputString = e.getMessage();
    System.out.println(outputString);
    System.out.println(e);
  }catch(Exception e){
    //Alert the user to an error:
    outputString = "Unknown Error Occured. Please Try Again.";
    System.out.println(outputString);
    System.out.println(e);
  }

%>

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Number to String Converter</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
  </head>
  <body>
    <div class="header">
      <h4 class="heading">Numeric Converter</h4>
    </div>
    <div class="content">
      <div class="numToStr">
        <h5 class="formHdg">Please Enter a Number Betwwen 0.00 and 2 147 483 647.99:</h5>
        <form id="conveter" action="intToNumConverter.jsp" method="post" class="formOne">
          <div class="inputOne">
            <label class="label1" for="userInput"><strong>Input: </strong></label>
            <input class="userInput" step="0.01" type="number" name="userInput" />
          </div>
          <input class="formBTM" type="submit" name="submit" value="Submit">
        </form>
      </div>
    </div>
  </body>
</html>