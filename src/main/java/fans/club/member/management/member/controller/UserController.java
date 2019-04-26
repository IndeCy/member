package fans.club.member.management.member.controller;

import fans.club.member.management.member.common.GsonUtil;
import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.service.MemberService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("user")
public class UserController {

    @Resource
    private MemberService memberService;

    @RequestMapping("/addUser")
    @ResponseBody
    public String addUser(ClubUser user){
        return memberService.register(user);
    }

    @RequestMapping("/editUser")
    @ResponseBody
    public String editUser(ClubUser user){
        return memberService.edit(user);
    }

    @RequestMapping("/selectUserList")
    @ResponseBody
    public String getUserList(){
        return GsonUtil.toJson(memberService.getUserList());
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public String deleteUser(int id){
        return memberService.delete(id);
    }

    @RequestMapping("/selectUser")
    @ResponseBody
    public String getUser(int id){
        return GsonUtil.toJson(memberService.getUser(id));
    }


}
