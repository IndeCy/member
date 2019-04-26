package fans.club.member.management.member.service;

import fans.club.member.management.member.dao.ClubActMapper;
import fans.club.member.management.member.entity.ClubAct;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClubActService {

    @Resource
    private ClubActMapper clubActMapper;

    public String addClubAct(ClubAct clubAct){
        int i = clubActMapper.insertSelective(clubAct);
        if(i>0){
            return "增加成功!";
        }else {
            return "增加失败！请联系管理员！";
        }
    }

    public String edit(ClubAct clubAct){
        int i = clubActMapper.updateByPrimaryKey(clubAct);
        if(i>0){
            return "修改成功!";
        }else {
            return "修改失败!";
        }
    }

    public String delete(int id){
        int i = clubActMapper.deleteByPrimaryKey(id);
        if(i>0){
            return "删除成功!";
        }else {
            return "删除失败!";
        }
    }

    public List<ClubAct> getClubActList(){
        List<ClubAct> clubActs = clubActMapper.selectActList();
        return clubActs;
    }

    public ClubAct getClubAct(int id){
        ClubAct clubAct = clubActMapper.selectByPrimaryKey(id);
        return clubAct;
    }
}
