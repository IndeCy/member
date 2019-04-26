package fans.club.member.management.member.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

    @RequestMapping("/registered")
    public  String registered (){
        return "registered.html";
    }

    @RequestMapping("/login")
    public String login(){
        return "index.html";
    }

    @RequestMapping("/clubPage")
    public String clubPage () {return "clubPage.html";}

    @RequestMapping("/userPage")
    public String userPage () {return "userPage.html";}

    @RequestMapping("/mainPage")
    public String mainPage () {return "mainPage.html";}

    @RequestMapping("/activePage")
    public String activePage () {return "activePage.html";}


}
