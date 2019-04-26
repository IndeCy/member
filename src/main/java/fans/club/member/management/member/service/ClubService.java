package fans.club.member.management.member.service;

import fans.club.member.management.member.dao.ClubMapper;
import fans.club.member.management.member.entity.Club;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClubService {

    @Resource
    private ClubMapper clubMapper;

    public String addClub(Club club){
        int i = clubMapper.insertSelective(club);
        if(i>0){
            return "增加成功!";
        }else {
            return "增加失败！请联系管理员！";
        }
    }

    public String edit(Club club){
        int i = clubMapper.updateByPrimaryKey(club);
        if(i>0){
            return "修改成功!";
        }else {
            return "修改失败!";
        }
    }

    public String delete(int id){
        int i = clubMapper.deleteByPrimaryKey(id);
        if(i>0){
            return "删除成功!";
        }else {
            return "删除失败!";
        }
    }

    public List<Club> getClubList(){
        List<Club> clubs = clubMapper.getClubList();
        return clubs;
    }

    public Club getClub(int id){
        Club club = clubMapper.selectByPrimaryKey(id);
        return club;
    }


}
