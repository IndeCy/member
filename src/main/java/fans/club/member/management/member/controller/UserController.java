package fans.club.member.management.member.controller;

import fans.club.member.management.member.common.GsonUtil;
import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.entity.UserAct;
import fans.club.member.management.member.service.MemberService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("user")
public class UserController {

    @Resource
    private MemberService memberService;

    @RequestMapping("/addUser")
    @ResponseBody
    public String addUser(ClubUser user){
        return memberService.addUser(user);
    }

    @RequestMapping("/editUser")
    @ResponseBody
    public String editUser(ClubUser user){
        return memberService.edit(user);
    }

    @RequestMapping("/selectUserList")
    @ResponseBody
    public List<ClubUser> getUserList(){
        return memberService.getUserList();
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

    /**
     * 用户增加订阅活动
     * @param userAct
     * @return
     */
    @RequestMapping("/orderUserAct")
    @ResponseBody
    public String orderUserAct(UserAct userAct){
        return memberService.insertUserAct(userAct)>0 ? "订阅成功!":"订阅失败!";
    }


}
