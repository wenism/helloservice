package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.context.annotation.Configuration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.beans.factory.annotation.Value;

//@Configuration
@EnableAutoConfiguration
@SpringBootApplication
public class DemoApplication {

    
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
}

@RestController
@RefreshScope
class MyRestController {

  @Value("${key1}")
  String name = "World";
  
  @RequestMapping("/")
  public String home() {
      return "Hello " + name;
  }

	public MyRestController() {
		System.out.println(getClass().getName() + " re-initialized");
	}

	
}
