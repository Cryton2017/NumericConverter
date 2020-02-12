<html>
  <head>
    <title>Number to String Converter</title>
    <link rel="stylesheet" type="text/css" href="index.css" />
  </head>
  <body>
    <div id="header">
      <h1 id="heading">Numeric Converter</h1>
    </div>
    <div id="buttonPanel">
      <div id="buttons">
        <input class="menuButtons" type="button" value="Refresh Page" />
      </div>
    </div>
    <div id="form">
    	<form action="processing.jsp" method="post">
    		<input id="text" type="text" name="userInput" />
    		<input id="submit" type="submit" name="submit" value="Submit">
    	</form>
    </div>
  </body>
</html>