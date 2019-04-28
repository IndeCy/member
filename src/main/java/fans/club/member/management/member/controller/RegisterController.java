package fans.club.member.management.member.controller;

import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.entity.ResultCode;
import fans.club.member.management.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
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
    public ResultCode register(@RequestBody ClubUser user){
        return memberService.register(user);
    }

    @RequestMapping("/login")
    @ResponseBody
    public ResultCode login(@RequestBody ClubUser user){
        ClubUser clubUser = memberService.login(user);
        if(null == clubUser){
            return new ResultCode(0,"");
        }else {
            if(clubUser.getUserType()==1) {
                return new ResultCode(1,"mainPage");
            }else {
                return new ResultCode(1,"FansPage");
            }
        }
    }

}
