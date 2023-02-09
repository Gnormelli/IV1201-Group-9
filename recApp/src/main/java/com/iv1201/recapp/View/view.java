
package com.iv1201.recapp.View;

import org.slf4j.spi.DefaultLoggingEventBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 *
 */
@RestController
@CrossOrigin
@RequestMapping("/")
public class view {

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody LoginRequest request ){
        String username = request.getUsername();
        String password = request.getPassword();
        System.out.println(username);
        return ResponseEntity.ok(username);
    }

}