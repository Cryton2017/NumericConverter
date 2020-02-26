<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="numberConverter.converterInit" %>

<%
	
	//Set Params:
  	String input = request.getParameter("userInput");
	String outputString = "";
	String[] result = new String[2];
	boolean err = false;
	
	//Get Result:
	converterInit converter = new converterInit();
	result = converter.initialiseConverter(input);
	
	//Set Values:
	outputString = result[0];
	err = Boolean. parseBoolean(result[1]);

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