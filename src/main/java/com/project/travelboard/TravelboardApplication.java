package com.project.travelboard;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class TravelboardApplication {

	public static void main(String[] args) {
		SpringApplication.run(TravelboardApplication.class, args);
	}

}
