package com.oracle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class HelloController {

    @GetMapping("/sayHello.do") // <--- This maps to /sayHello.do
    public String sayHello() {
        return "Hello"; // resolves to /WEB-INF/views/Hello.jsp
    }
}
