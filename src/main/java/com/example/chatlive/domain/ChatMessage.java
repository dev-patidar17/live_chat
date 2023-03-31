package com.example.chatlive.domain;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ChatMessage {

   
    private String sender;
    private MessageType type;
    private String content;
    public enum MessageType {
    	JOIN,
        LEAVE,
        CHAT
        
    }

}
