package fans.club.member.management.member.controller;


import fans.club.member.management.member.entity.ClubUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("/activeMainPage")
    public String activeMainPage () {return "fansMainPage.html";}

    @RequestMapping("/activePage")
    public String activePage () {return "activePage.html";}

    @RequestMapping("/FansPage")
    public String FansPage () {return "FansPage.html";}

    @RequestMapping("/fansActivePage")
    public String fansActivePage () {return "fansActivePage.html";}

    @RequestMapping("/fansClubPage")
    public String fansClubPage () {return "fansClubPage.html";}




}
