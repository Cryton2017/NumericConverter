<%!

    //Initial Arrays:
    String[] singles = new String[]{"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
    String[] teens = new String[]{"Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"};
    String[] tys = new String[]{"Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty"};
    String[] bigNums = new String[]{"Hundred", "Thousand", "Million", "Billion", "Trillion", "Quadrillion", "Quintillion"};

    //Calculate a number in the range of Billion:
    public String Billions(int wholeNumber, int decimalNumber){
        return "Billions";
    }

    //Calculate a number in the range of HundredMillions:
    public String HundredMillions(int wholeNumber, int decimalNumber, String converted){
        
        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 9));

        //Convert the number:
        switch(currentChar){
            case 9:     converted = converted + singles[9] + " " + bigNums[0] + " ";
                        break;
            case 8:     converted = converted + singles[8] + " " + bigNums[0] + " ";
                        break;
            case 7:     converted = converted + singles[7] + " " + bigNums[0] + " ";
                        break;
            case 6:     converted = converted + singles[6] + " " + bigNums[0] + " ";
                        break;
            case 5:     converted = converted + singles[5] + " " + bigNums[0] + " ";
                        break;
            case 4:     converted = converted + singles[4] + " " + bigNums[0] + " ";
                        break;
            case 3:     converted = converted + singles[3] + " " + bigNums[0] + " ";
                        break;
            case 2:     converted = converted + singles[2] + " " + bigNums[0] + " ";
                        break;
            case 1:     converted = converted + singles[1] + " " + bigNums[0] + " ";
                        break;
            default:    converted = "An Unknown Error Occured.";
                        break;
        }

        //If the number contains a sub digit between 100 and 999:
        if(String.valueOf(nextNum).length() == 8){

            //Calculate the tens value:
            converted = converted + " and ";
            return TenMillions(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 7){

            //Calculate the tens value:
            converted = converted + " and ";
            return Millions(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 6){

            //Calculate the tens value:
            converted = converted + " Million ";
            return HundredThousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 5){
            
            //Calculate the tens value:
            converted = converted + " Million and ";
            return TenThousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 4){

            //Calculate the tens value:
            converted = converted + " Million and ";
            return Thousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 3){

            //Calculate the tens value:
            converted = converted + " Million ";
            return Hundreds(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 2){

            //Calculate the tens value:
            converted = converted + " Million and ";
            return Tens(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 1){

            //If there is no singals value:
            if(nextNum == 0){

                //Calculate cents value:
                converted = converted + " Million Dollars and ";
                return cents(decimalNumber, converted);

            }else{

                //Calcualte the singles value:
                converted = converted + " Million and ";
                return Single(nextNum, decimalNumber, converted);

            }

        }else{

            //Return and error:
            return "Unknow Error";
            
        }

    }

    //Calculate a number in the range of TenMillions:
    public String TenMillions(int wholeNumber, int decimalNumber, String converted){
        
        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 8));

        if(currentChar == 1){

            //Setup teen specific parameters:
            int secondChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(1)));
            nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(2, 8));

            //Convert the number:
            switch(secondChar){
                case 9:     converted = converted + teens[9] + " ";
                            break;
                case 8:     converted = converted + teens[8] + " ";
                            break;
                case 7:     converted = converted + teens[7] + " ";
                            break;
                case 6:     converted = converted + teens[6] + " ";
                            break;
                case 5:     converted = converted + teens[5] + " ";
                            break;
                case 4:     converted = converted + teens[4] + " ";
                            break;
                case 3:     converted = converted + teens[3] + " ";
                            break;
                case 2:     converted = converted + teens[2] + " ";
                            break;
                case 1:     converted = converted + teens[1] + " ";
                            break;
                case 0:     converted = converted + teens[0] + " ";
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //If the number contains a sub digit between 100 and 999:
            if(String.valueOf(nextNum).length() == 6){

                //Calculate the tens value:
                converted = converted + " Million ";
                return HundredThousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 5){
                
                //Calculate the tens value:
                converted = converted + " Million ";
                return TenThousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 4){

                //Calculate the tens value:
                converted = converted + " Million and ";
                return Thousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 3){

                //Calculate the tens value:
                converted = converted + " Million ";
                return Hundreds(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 2){

                //Calculate the tens value:
                converted = converted + " Million and ";
                return Tens(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 1){

                //If there is no singals value:
                if(nextNum == 0){

                    //Calculate cents value:
                    converted = converted + "Million Dollars and ";
                    return cents(decimalNumber, converted);

                }else{

                    //Calcualte the singles value:
                    converted = converted + " Million and ";
                    return Single(nextNum, decimalNumber, converted);

                }

            }else{

                //Return and error:
                return "Unknow Error";
                
            }

        }else{

            //Convert the number:
            switch(currentChar){
                case 9:     converted = converted + tys[7] + " ";
                            break;
                case 8:     converted = converted + tys[6] + " ";
                            break;
                case 7:     converted = converted + tys[5] + " ";
                            break;
                case 6:     converted = converted + tys[4] + " ";
                            break;
                case 5:     converted = converted + tys[3] + " ";
                            break;
                case 4:     converted = converted + tys[2] + " ";
                            break;
                case 3:     converted = converted + tys[1] + " ";
                            break;
                case 2:     converted = converted + tys[0] + " ";
                            break;
                case 1:     converted = converted + teens[0] + " ";
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //If the number contains a sub digit between 100 and 999:
            if(String.valueOf(nextNum).length() == 7){

                //Calculate the tens value:
                converted = converted + " ";
                return Millions(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 6){

                //Calculate the tens value:
                converted = converted + " Million ";
                return HundredThousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 5){
                
                //Calculate the tens value:
                converted = converted + " Million and ";
                return TenThousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 4){

                //Calculate the tens value:
                converted = converted + " Million and ";
                return Thousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 3){

                //Calculate the tens value:
                converted = converted + " Million ";
                return Hundreds(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 2){

                //Calculate the tens value:
                converted = converted + " Million and ";
                return Tens(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 1){

                //If there is no singals value:
                if(nextNum == 0){

                    //Calculate cents value:
                    converted = converted + " Million Dollars and ";
                    return cents(decimalNumber, converted);

                }else{

                    //Calcualte the singles value:
                    converted = converted + " Million and ";
                    return Single(nextNum, decimalNumber, converted);

                }

            }else{

                //Return and error:
                return "Unknow Error";
                
            }

        }

    }

    //Calculate a number in the range of Million:
    public String Millions(int wholeNumber, int decimalNumber, String converted){

        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 7));

        //Convert the number:
        switch(currentChar){
            case 9:     converted = converted + singles[9] + " " + bigNums[2] + " ";
                        break;
            case 8:     converted = converted + singles[8] + " " + bigNums[2] + " ";
                        break;
            case 7:     converted = converted + singles[7] + " " + bigNums[2] + " ";
                        break;
            case 6:     converted = converted + singles[6] + " " + bigNums[2] + " ";
                        break;
            case 5:     converted = converted + singles[5] + " " + bigNums[2] + " ";
                        break;
            case 4:     converted = converted + singles[4] + " " + bigNums[2] + " ";
                        break;
            case 3:     converted = converted + singles[3] + " " + bigNums[2] + " ";
                        break;
            case 2:     converted = converted + singles[2] + " " + bigNums[2] + " ";
                        break;
            case 1:     converted = converted + singles[1] + " " + bigNums[2] + " ";
                        break;
            default:    converted = "An Unknown Error Occured.";
                        break;
        }

        //If the number contains a sub digit between 100 and 999:
        if(String.valueOf(nextNum).length() == 6){

            //Calculate the tens value:
            converted = converted + " ";
            return HundredThousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 5){
            
            //Calculate the tens value:
            converted = converted + " and ";
            return TenThousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 4){

            //Calculate the tens value:
            converted = converted + " and ";
            return Thousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 3){

            //Calculate the tens value:
            converted = converted + " ";
            return Hundreds(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 2){

            //Calculate the tens value:
            converted = converted + " and ";
            return Tens(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 1){

            //If there is no singals value:
            if(nextNum == 0){

                //Calculate cents value:
                converted = converted + " Dollars and ";
                return cents(decimalNumber, converted);

            }else{

                //Calcualte the singles value:
                converted = converted + " and ";
                return Single(nextNum, decimalNumber, converted);

            }

        }else{

            //Return and error:
            return "Unknow Error";
            
        }
    }

    //Calculate a number in the range of HundredThousands:
    public String HundredThousands(int wholeNumber, int decimalNumber, String converted){

        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 6));

        //Convert the number:
        switch(currentChar){
            case 9:     converted = converted + singles[9] + " " + bigNums[0];
                        break;
            case 8:     converted = converted + singles[8] + " " + bigNums[0];
                        break;
            case 7:     converted = converted + singles[7] + " " + bigNums[0];
                        break;
            case 6:     converted = converted + singles[6] + " " + bigNums[0];
                        break;
            case 5:     converted = converted + singles[5] + " " + bigNums[0];
                        break;
            case 4:     converted = converted + singles[4] + " " + bigNums[0];
                        break;
            case 3:     converted = converted + singles[3] + " " + bigNums[0];
                        break;
            case 2:     converted = converted + singles[2] + " " + bigNums[0];
                        break;
            case 1:     converted = converted + singles[1] + " " + bigNums[0];
                        break;
            default:    converted = "An Unknown Error Occured.";
                        break;
        }

        //If the number contains a sub digit between 100 and 999:
        if(String.valueOf(nextNum).length() == 5){
            
            //Calculate the tens value:
            converted = converted + " and ";
            return TenThousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 4){

            //Calculate the tens value:
            converted = converted + " and ";
            return Thousands(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 3){

            //Calculate the tens value:
            converted = converted + " thousand ";
            return Hundreds(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 2){

            //Calculate the tens value:
            converted = converted + " thousand and ";
            return Tens(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 1){

            //If there is no singals value:
            if(nextNum == 0){

                //Calculate cents value:
                converted = converted + "Thousand Dollars and ";
                return cents(decimalNumber, converted);

            }else{

                //Calcualte the singles value:
                converted = converted + " Thousand and ";
                return Single(nextNum, decimalNumber, converted);

            }

        }else{

            //Return and error:
            return "Unknow Error";
            
        }
    }

    //Calculate a number in the range of TenThousands:
    public String TenThousands(int wholeNumber, int decimalNumber, String converted){

        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 5));

        if(currentChar == 1){

            //Setup teen specific parameters:
            int secondChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(1)));
            nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(2, 5));

            //Convert the number:
            switch(secondChar){
                case 9:     converted = converted + teens[9] + " ";
                            break;
                case 8:     converted = converted + teens[8] + " ";
                            break;
                case 7:     converted = converted + teens[7] + " ";
                            break;
                case 6:     converted = converted + teens[6] + " ";
                            break;
                case 5:     converted = converted + teens[5] + " ";
                            break;
                case 4:     converted = converted + teens[4] + " ";
                            break;
                case 3:     converted = converted + teens[3] + " ";
                            break;
                case 2:     converted = converted + teens[2] + " ";
                            break;
                case 1:     converted = converted + teens[1] + " ";
                            break;
                case 0:     converted = converted + teens[0] + " ";
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //If the number contains a sub digit between 100 and 999:
            if(String.valueOf(nextNum).length() == 3){

                //Calculate the tens value:
                converted = converted + " Thousand ";
                return Hundreds(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 2){

                //Calculate the tens value:
                converted = converted + " Thousand and ";
                return Tens(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 1){

                //If there is no singals value:
                if(nextNum == 0){

                    //Calculate cents value:
                    converted = converted + "Thousand Dollars and ";
                    return cents(decimalNumber, converted);

                }else{

                    //Calcualte the singles value:
                    converted = converted + " Thousand and ";
                    return Single(nextNum, decimalNumber, converted);

                }

            }else{

                //Return and error:
                return "Unknow Error";
                
            }

        }else{

            //Convert the number:
            switch(currentChar){
                case 9:     converted = converted + tys[7] + " ";
                            break;
                case 8:     converted = converted + tys[6] + " ";
                            break;
                case 7:     converted = converted + tys[5] + " ";
                            break;
                case 6:     converted = converted + tys[4] + " ";
                            break;
                case 5:     converted = converted + tys[3] + " ";
                            break;
                case 4:     converted = converted + tys[2] + " ";
                            break;
                case 3:     converted = converted + tys[1] + " ";
                            break;
                case 2:     converted = converted + tys[0] + " ";
                            break;
                case 1:     converted = converted + teens[0] + " ";
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //If the number contains a sub digit between 100 and 999:
            if(String.valueOf(nextNum).length() == 4){

                //Calculate the tens value:
                converted = converted + " ";
                return Thousands(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 3){

                //Calculate the tens value:
                converted = converted + " and ";
                return Hundreds(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 2){

                //Calculate the tens value:
                converted = converted + " and ";
                return Tens(nextNum, decimalNumber, converted);

            }else if(String.valueOf(nextNum).length() == 1){

                //If there is no singals value:
                if(nextNum == 0){

                    //Calculate cents value:
                    converted = converted + "Thousand Dollars and ";
                    return cents(decimalNumber, converted);

                }else{

                    //Calcualte the singles value:
                    converted = converted + " and ";
                    return Single(nextNum, decimalNumber, converted);

                }

            }else{

                //Return and error:
                return "Unknow Error";
                
            }

        }

        

        
    }

    //Calculate a number in the range of Thousands:
    public String Thousands(int wholeNumber, int decimalNumber, String converted){
        
        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 4));

        //Convert the number:
        switch(currentChar){
            case 9:     converted = converted + singles[9] + " " + bigNums[1] + " ";
                        break;
            case 8:     converted = converted + singles[8] + " " + bigNums[1] + " ";
                        break;
            case 7:     converted = converted + singles[7] + " " + bigNums[1] + " ";
                        break;
            case 6:     converted = converted + singles[6] + " " + bigNums[1] + " ";
                        break;
            case 5:     converted = converted + singles[5] + " " + bigNums[1] + " ";
                        break;
            case 4:     converted = converted + singles[4] + " " + bigNums[1] + " ";
                        break;
            case 3:     converted = converted + singles[3] + " " + bigNums[1] + " ";
                        break;
            case 2:     converted = converted + singles[2] + " " + bigNums[1] + " ";
                        break;
            case 1:     converted = converted + singles[1] + " " + bigNums[1] + " ";
                        break;
            default:    converted = "An Unknown Error Occured.";
                        break;
        }

        //If the number contains a sub digit between 100 and 999:
        if(String.valueOf(nextNum).length() == 3){

            //Calculate the tens value:
            converted = converted + " ";
            return Hundreds(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 2){

            //Calculate the tens value:
            converted = converted + " and ";
            return Tens(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 1){

            //If there is no singals value:
            if(nextNum == 0){

                //Calculate cents value:
                converted = converted + "Dollars and ";
                return cents(decimalNumber, converted);

            }else{

                //Calcualte the singles value:
                converted = converted + " and ";
                return Single(nextNum, decimalNumber, converted);

            }

        }else{

            //Return and error:
            return "Unknow Error";
            
        }

    }

    //Calculate a number in the range of Hundreds:
    public String Hundreds(int wholeNumber, int decimalNumber, String converted){
        
        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int nextNum = Integer.parseInt(Integer.toString(wholeNumber).substring(1, 3));

        //Convert the number:
        switch(currentChar){
            case 9:     converted = converted + singles[9] + " " + bigNums[0];
                        break;
            case 8:     converted = converted + singles[8] + " " + bigNums[0];
                        break;
            case 7:     converted = converted + singles[7] + " " + bigNums[0];
                        break;
            case 6:     converted = converted + singles[6] + " " + bigNums[0];
                        break;
            case 5:     converted = converted + singles[5] + " " + bigNums[0];
                        break;
            case 4:     converted = converted + singles[4] + " " + bigNums[0];
                        break;
            case 3:     converted = converted + singles[3] + " " + bigNums[0];
                        break;
            case 2:     converted = converted + singles[2] + " " + bigNums[0];
                        break;
            case 1:     converted = converted + singles[1] + " " + bigNums[0];
                        break;
            default:    converted = "An Unknown Error Occured.";
                        break;
        }

        //If the number contains a sub digit between 10 and 99:
        if(String.valueOf(nextNum).length() == 2){

            //Calculate the tens value:
            converted = converted + " and ";
            return Tens(nextNum, decimalNumber, converted);

        }else if(String.valueOf(nextNum).length() == 1){

            //If there is no singals value:
            if(nextNum == 0){

                //Calculate cents value:
                //converted = converted.substring(0, converted.length() - 5);
                converted = converted + " Dollars and ";
                return cents(decimalNumber, converted);

            }else{

                //Calcualte the singles value:
                converted = converted + " and ";
                return Single(nextNum, decimalNumber, converted);

            }
        }else{

            //Return and error:
            return "Unknow Error";

        }

        

    }

    //Calculate a number in the range of Tens:
    public String Tens(int wholeNumber, int decimalNumber, String converted){

        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(0)));
        int singalChar = Integer.parseInt(Character.toString(Integer.toString(wholeNumber).charAt(1)));

        //Determine if teen or not:
        if(currentChar == 1){

            //Convert the number:
            switch(wholeNumber){
                case 19:    converted = converted + teens[9];
                            break;
                case 18:    converted = converted + teens[8];
                            break;
                case 17:    converted = converted + teens[7];
                            break;
                case 16:    converted = converted + teens[6];
                            break;
                case 15:    converted = converted + teens[5];
                            break;
                case 14:    converted = converted + teens[4];
                            break;
                case 13:    converted = converted + teens[3];
                            break;
                case 12:    converted = converted + teens[2];
                            break;
                case 11:    converted = converted + teens[1];
                            break;
                case 10:    converted = converted + teens[0];
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //Return the converted number:
            converted = converted + " Dollars and ";
            return cents(decimalNumber, converted);
            
        }else{

            //Convert the number:
            switch(currentChar){
                case 9:     converted = converted + tys[7];
                            break;
                case 8:     converted = converted + tys[6];
                            break;
                case 7:     converted = converted + tys[5];
                            break;
                case 6:     converted = converted + tys[4];
                            break;
                case 5:     converted = converted + tys[3];
                            break;
                case 4:     converted = converted + tys[2];
                            break;
                case 3:     converted = converted + tys[1];
                            break;
                case 2:     converted = converted + tys[0];
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            if(singalChar == 0){
                //Return the converted number:
                converted = converted + " Dollars  and ";
                return cents(decimalNumber, converted);
            }else{
                //Get the rest of the number:
                return Single(singalChar, decimalNumber, converted);
            }

        }

    }

    //Calculate a signle digit number:
    public String Single(int wholeNumber, int decimalNumber, String converted){

        //Check that the number is a single digit:
        if(String.valueOf(wholeNumber).length() == 1){
            switch(wholeNumber){
                case 9:     converted = converted + " " + singles[9];
                            break;
                case 8:     converted = converted + " " + singles[8];
                            break;
                case 7:     converted = converted + " " + singles[7];
                            break;
                case 6:     converted = converted + " " + singles[6];
                            break;
                case 5:     converted = converted + " " + singles[5];
                            break;
                case 4:     converted = converted + " " + singles[4];
                            break;
                case 3:     converted = converted + " " + singles[3];
                            break;
                case 2:     converted = converted + " " + singles[2];
                            break;
                case 1:     converted = converted + " " + singles[1];
                            break;
                case 0:     converted = converted + " " + singles[0];
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            if(wholeNumber == 1){

                //Calculate cents value:
                converted = converted + " Dollar and ";
                return cents(decimalNumber, converted);

            }else{

                //Calculate cents value:
                converted = converted + " Dollars and ";
                return cents(decimalNumber, converted);

            }

            

        }else{
            return "Singles: Error.";
        }
    }

    public String cents(int decimalNumber, String converted){

        //Determine how many cents are present:
        if(String.valueOf(decimalNumber).length() == 2){
            return centTens(decimalNumber, converted);
        }else{
            return centSingle(decimalNumber, converted);
        }

    }

    //Calcualte the double digit cents value:
    public String centTens(int decimalNumber, String converted){

        //Initial Calculations:
        int currentChar = Integer.parseInt(Character.toString(Integer.toString(decimalNumber).charAt(0)));
        int singalChar = Integer.parseInt(Character.toString(Integer.toString(decimalNumber).charAt(1)));

        //Determine if teen or not:
        if(currentChar == 1){

            //Convert the number:
            switch(decimalNumber){
                case 19:    converted = converted + teens[9];
                            break;
                case 18:    converted = converted + teens[8];
                            break;
                case 17:    converted = converted + teens[7];
                            break;
                case 16:    converted = converted + teens[6];
                            break;
                case 15:    converted = converted + teens[5];
                            break;
                case 14:    converted = converted + teens[4];
                            break;
                case 13:    converted = converted + teens[3];
                            break;
                case 12:    converted = converted + teens[2];
                            break;
                case 11:    converted = converted + teens[1];
                            break;
                case 10:    converted = converted + teens[0];
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //Return the converted number:
            return converted + " Cents.";
            
        }else{

            //Convert the number:
            switch(currentChar){
                case 9:     converted = converted + tys[7];
                            break;
                case 8:     converted = converted + tys[6];
                            break;
                case 7:     converted = converted + tys[5];
                            break;
                case 6:     converted = converted + tys[4];
                            break;
                case 5:     converted = converted + tys[3];
                            break;
                case 4:     converted = converted + tys[2];
                            break;
                case 3:     converted = converted + tys[1];
                            break;
                case 2:     converted = converted + tys[0];
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            if(singalChar == 0){
                //Return the converted number:
                return converted + " Cents.";
            }else{
                //Get the rest of the number:
                return centSingle(singalChar, converted);
            }

        }

    }

    //Calculate the single cents:
    public String centSingle(int decimalNumber, String converted){

        //Check that the number is a single digit:
        if(String.valueOf(decimalNumber).length() == 1){
            switch(decimalNumber){
                case 9:     converted = converted + " " + singles[9];
                            break;
                case 8:     converted = converted + " " + singles[8];
                            break;
                case 7:     converted = converted + " " + singles[7];
                            break;
                case 6:     converted = converted + " " + singles[6];
                            break;
                case 5:     converted = converted + " " + singles[5];
                            break;
                case 4:     converted = converted + " " + singles[4];
                            break;
                case 3:     converted = converted + " " + singles[3];
                            break;
                case 2:     converted = converted + " " + singles[2];
                            break;
                case 1:     converted = converted + " " + singles[1];
                            break;
                case 0:     converted = converted + " " + singles[0];
                            break;
                default:    converted = "An Unknown Error Occured.";
                            break;
            }

            //Calculate cents value:
            return converted + " Cents";

        }else{
            return converted + " : Singles: Error. (Cents)";
        }

    }

%>