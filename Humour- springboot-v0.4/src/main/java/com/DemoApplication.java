package com;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
//@EnableAutoConfiguration(exclude={    
//	      JpaRepositoriesAutoConfiguration.class //禁止springboot自动加载持久化bean  
//	        }) 
public class DemoApplication {
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
}
