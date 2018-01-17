package com.codeup.springbootblog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class HomeController {


    @ResponseBody

        @GetMapping("/")
    public String showLandingPage() {
            return "This is the landing page!";
        }
        @GetMapping("/roll-dice")
    public String rollingDice(){
        return  "Enter a Number....";
        }
    }


