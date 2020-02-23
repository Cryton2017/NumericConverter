<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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