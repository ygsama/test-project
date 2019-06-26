package io.ygsama;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Application {

    @RequestMapping("/")
    public String home() {
        return "Hello Docker World.";
    }


    @RequestMapping("/home")
    public String home2() {
        return "Hello App Home.";
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}