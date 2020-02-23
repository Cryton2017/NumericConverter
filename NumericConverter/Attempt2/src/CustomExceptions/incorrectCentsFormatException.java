package CustomExceptions;

public class incorrectCentsFormatException extends Exception{
	private static final long serialVersionUID = 3313996728460454171L;

	public incorrectCentsFormatException(String s) {
        // Call constructor of parent Exception 
        super(s); 
    } 
}
