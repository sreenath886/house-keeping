package com.houseservice.service;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class GenerateCallId {
//    private String val1 = null;
//    private int val2 = 0;
//    private String callId = null;
    
    private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#-";
    @Async
    public  String randomAlphaNumericCallId(int count) {
    StringBuilder builder = new StringBuilder();
    while (count-- != 0) {
    int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
    builder.append(ALPHA_NUMERIC_STRING.charAt(character));
    }
    return builder.toString();
    }
    
    
    @Async
    public String getCallId()
    {
    //	randomAlphaNumeric
    	return "13r5yohoo";
    }

}
