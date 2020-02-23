<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="numberConverter.numberConverter" %>
<%@ page import="CustomExceptions.NegativeNumberException" %>
<%@ page import="CustomExceptions.incorrectCentsFormatException" %>

<%

  numberConverter Converter = new numberConverter();

  //Get the input:
  String inputNumber = request.getParameter("userInput");

  //Get the parameters sent by the request:
  String outputString = "";
  String wholeNumberStr = "";
  String decimalNumberStr = "";
  int wholeNumber = 0;
  int decimalNumber = 0;
  int wholeNumberLength = 0;
  int decimalLength = 0;
  boolean err = false;

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
        case 10:    outputString = Converter.Billions(wholeNumber, decimalNumber);
                    break;
        case 9:    outputString = Converter.HundredMillions(wholeNumber, decimalNumber, "");
                    break;
        case 8:     outputString = Converter.TenMillions(wholeNumber, decimalNumber, "");
                    break;
        case 7:     outputString = Converter.Millions(wholeNumber, decimalNumber, "");
                    break;
        case 6:     outputString = Converter.HundredThousands(wholeNumber, decimalNumber, "");
                    break;
        case 5:     outputString = Converter.TenThousands(wholeNumber, decimalNumber, "");
                    break;
        case 4:     outputString = Converter.Thousands(wholeNumber, decimalNumber, "");
                    break;
        case 3:     outputString = Converter.Hundreds(wholeNumber, decimalNumber, "");
                    break;
        case 2:     outputString = Converter.Tens(wholeNumber, decimalNumber, "");
                    break;
        case 1:     outputString = Converter.Single(wholeNumber, decimalNumber, "");
                    break;
        default:    outputString = "Please enter a value with a max size of 10 digits. (Billion)";
                    break;
      }

    }else{

      //Alert the user to an error:
      throw new incorrectCentsFormatException("Please ensure that the decminal is correct to two decimal places.");

    }

  }catch(NumberFormatException e){
    //Alert the user to an error:
    err = true;
    outputString = "Maximum Number allowed is 2 147 483 647.99";
    System.out.println(e);
  }catch(ArrayIndexOutOfBoundsException e){
    //Alert the user to an error:
    err = true;
    outputString = "Please Enter a Number with Two (2) Decimal Places.";
    System.out.println(e);
  }catch(StringIndexOutOfBoundsException e){
    //Alert the user to an error:
    err = true;
    outputString = "Please Enter a Number Before Submitting.";
    System.out.println(e);
  }catch(NegativeNumberException e){
    //Alert the user to an error:
    err = true;
    outputString = e.getMessage();
    System.out.println(e);
  }catch(incorrectCentsFormatException e){
    //Alert the user to an error:
    err = true;
    outputString = e.getMessage();
    System.out.println(e);
  }catch(Exception e){
    //Alert the user to an error:
    err = true;
    outputString = "Unknown Error Occured. Please Try Again.";
    System.out.println(e);
  }

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	<title>Number to String Converter - Result</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
  </head>
  <body>
    <div class="header">
      <h4 class="heading">Numeric Converter</h4>
    </div>
    <div class="content">
      <div class="numToStr">
        <% if(err){ %>
          <h5 class="resHdg"><%=outputString%></h5>
        <% }else{ %>
          <h5 class="resHdg">The result is: </h5>
          <h4 class="resHdg"><%=outputString%></h4>
        <%} %>
        <input class="formBTM backBTN" type="button" name="backBTN" value="Back" onclick="window.location.href = 'index.jsp'">
      </div>
    </div>
  </body>
</html>