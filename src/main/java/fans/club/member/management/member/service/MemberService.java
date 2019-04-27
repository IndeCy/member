package fans.club.member.management.member.service;

import fans.club.member.management.member.dao.ClubUserMapper;
import fans.club.member.management.member.entity.Club;
import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.entity.UserAct;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    public String edit(ClubUser user){
        int i = clubUserMapper.updateByPrimaryKey(user);
        if(i>0){
            return "修改成功!";
        }else {
            return "修改失败!";
        }
    }

    public String delete(int id){
        int i = clubUserMapper.deleteByPrimaryKey(id);
        if(i>0){
            return "删除成功!";
        }else {
            return "删除失败!";
        }
    }

    public List<ClubUser> getUserList(){
        List<ClubUser> clubUsers = clubUserMapper.selectAllUser();
        return clubUsers;
    }

    public ClubUser getUser(int id){
        ClubUser user = clubUserMapper.selectByPrimaryKey(id);
        return user;
    }

    public int insertUserAct(UserAct userAct){
        return clubUserMapper.insertUserAct(userAct);
    }

    public ClubUser login(ClubUser user){
        ClubUser loginuser =  clubUserMapper.selectByAccount(user.getUserAccount());
        if(loginuser.getUserPassword().equals(user.getUserPassword())){
            return loginuser;
        }
        else {
            return null;
        }

    }


}
