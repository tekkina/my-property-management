package com.waa.exceptions;

public class PasswordNotMatchException extends Exception{
    public PasswordNotMatchException(){
        super();
    }
    public PasswordNotMatchException(String message){
        super(message);
    }
    public PasswordNotMatchException(String message, Throwable cause){
        super(message, cause);
    }
    public PasswordNotMatchException(Throwable cause){
        super(cause);
    }
}
