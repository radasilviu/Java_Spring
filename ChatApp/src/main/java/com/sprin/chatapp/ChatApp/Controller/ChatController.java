package com.sprin.chatapp.ChatApp.Controller;

import org.springframework.messaging.handler.annotation.MessageExceptionHandler;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

import com.sprin.chatapp.ChatApp.model.ChatInMessage;
import com.sprin.chatapp.ChatApp.model.ChatOutMessage;

@Controller
public class ChatController {

	
	@MessageMapping("/guestchat")
	@SendTo("/topic/guestchats")
	public ChatOutMessage handelMessaging(ChatInMessage message) throws Exception
	{
		Thread.sleep(1000); //simulate delay
		return new ChatOutMessage(message.getMessage());
	} 
	
	@MessageMapping("/guestupdate")
	@SendTo("/topic/guestupdates")
	public ChatOutMessage handleUserTyping(ChatInMessage message) throws Exception
	{
		return new ChatOutMessage("Someone is typing...");
	}
	
	@MessageMapping("/guestjoin")
    @SendTo("/topic/guestnames")
    public ChatOutMessage handleMemberJoins(ChatInMessage message) throws Exception {
        return new ChatOutMessage(message.getMessage());
    }
	
	@MessageExceptionHandler
	@SendTo("/topic/errors")
	public ChatOutMessage handleException(Throwable exception)
	{
		ChatOutMessage myError = new ChatOutMessage("An error happened");
		return myError;
	}

}
