package com.iv1201.recapp.View;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 */
@RestController
@RequestMapping("/api/v1/testEndpoint")
public class testView {

    @GetMapping
    public ResponseEntity<String> test(){
        return ResponseEntity.ok("Hello");
    }

    @GetMapping("/anotherTestEndpoint")
    public ResponseEntity<String> anotherTest(){
        return ResponseEntity.ok("Another Test");
    }
}
