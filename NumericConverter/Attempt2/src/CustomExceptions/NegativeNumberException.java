package CustomExceptions;

public class NegativeNumberException extends Exception {
	private static final long serialVersionUID = 1834429113488527875L;

	public NegativeNumberException(String s) {
        // Call constructor of parent Exception 
        super(s); 
    } 
}
