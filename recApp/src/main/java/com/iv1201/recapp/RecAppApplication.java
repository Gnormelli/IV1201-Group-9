package com.iv1201.recapp;

import com.iv1201.recapp.Config.ConfigProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties(ConfigProperties.class)
public class RecAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(RecAppApplication.class, args);
		System.out.println("Hello Gustav");
	}

}
