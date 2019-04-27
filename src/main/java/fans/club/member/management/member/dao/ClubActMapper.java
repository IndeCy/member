package fans.club.member.management.member.dao;


import fans.club.member.management.member.entity.ClubAct;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClubActMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClubAct record);

    int insertSelective(ClubAct record);

    ClubAct selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClubAct record);

    int updateByPrimaryKey(ClubAct record);

    List<ClubAct> selectActList();
}