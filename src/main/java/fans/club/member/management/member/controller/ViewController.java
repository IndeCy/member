package fans.club.member.management.member.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

//    public String login
    @RequestMapping("/registered")
    public  String registered (){
        return "registered.html";
    }

    @RequestMapping("/login")
    public String login(){
        return "index.html";
    }

    @RequestMapping("/mainPage")
    public String mainPage () {return "mainPage.html";}
}
