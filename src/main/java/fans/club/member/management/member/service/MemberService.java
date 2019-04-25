package fans.club.member.management.member.service;

import fans.club.member.management.member.dao.ClubUserMapper;
import fans.club.member.management.member.entity.ClubUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MemberService {

    @Resource
    private ClubUserMapper clubUserMapper;

    public String register(ClubUser user){
        int i = clubUserMapper.insertSelective(user);
        if(i>0){
            return "注册成功!";
        }else {
            return "注册失败！请联系管理员！";
        }
    }

}