package fans.club.member.management.member.controller;

import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/addMember")
    @ResponseBody
    public String register(ClubUser user){
        return memberService.register(user);
    }


}
