package fans.club.member.management.member.service;

import fans.club.member.management.member.dao.ClubUserMapper;
import fans.club.member.management.member.entity.Club;
import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.entity.ResultCode;
import fans.club.member.management.member.entity.UserAct;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MemberService {

    @Resource
    private ClubUserMapper clubUserMapper;

    public ResultCode register(ClubUser user){
        int i = 0;
        try {
            i = clubUserMapper.insertSelective(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(i>0){
            return new ResultCode(1,"注册成功!");
        }else {
            return new ResultCode(0,"注册失败，账号已存在！");
        }
    }

    public String addUser(ClubUser user){
        int i = clubUserMapper.insertSelective(user);
        return "";
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
        if(loginuser!=null && loginuser.getUserPassword().equals(user.getUserPassword())){
            return loginuser;
        }
        else {
            return null;
        }

    }


}
