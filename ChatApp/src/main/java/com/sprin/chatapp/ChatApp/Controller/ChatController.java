package com.sprin.chatapp.ChatApp.Controller;

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

}
