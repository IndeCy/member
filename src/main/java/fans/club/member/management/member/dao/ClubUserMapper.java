package fans.club.member.management.member.dao;

import fans.club.member.management.member.entity.Club;
import fans.club.member.management.member.entity.ClubUser;
import fans.club.member.management.member.entity.UserAct;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClubUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClubUser record);

    int insertSelective(ClubUser record);

    ClubUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClubUser record);

    int updateByPrimaryKey(ClubUser record);

    List<ClubUser> selectAllUser();

    ClubUser selectByName(String name);

    int insertUserAct (UserAct userAct);

}