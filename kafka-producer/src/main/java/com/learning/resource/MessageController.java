package com.learning.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.learning.service.MessageService;

@RestController
@RequestMapping("/message")
public class MessageController {

    @Autowired
    MessageService messageService;

    @PostMapping
    public ResponseEntity<String> enviarMensagem(@RequestBody String mensagem){
        messageService.sendMessage(mensagem);
        return ResponseEntity.ok().body("Mensagem enviada com sucesso: " + mensagem);
    }
    
    @GetMapping
    public ResponseEntity<String> helloWorld(){
        return ResponseEntity.ok().body("Hello World");
    }
}