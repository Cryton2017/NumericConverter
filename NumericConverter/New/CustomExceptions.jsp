<%!

class NegativeNumberException extends Exception {
    public NegativeNumberException(String s) {
        // Call constructor of parent Exception 
        super(s); 
    } 
}

class incorrectCentsFormatException extends Exception{
    public incorrectCentsFormatException(String s) {
        // Call constructor of parent Exception 
        super(s); 
    } 
}

%>