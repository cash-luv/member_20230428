package com.icia.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String index(){
        return "index";
    }
    @GetMapping("/save")
    public String save(){
        return "memberSave";
    }
    @GetMapping("/login")
    public String login(){
        return "memberLogin";
    }

    @GetMapping("/member")
    public String member(){
        return "memberDetail";
    }
}
