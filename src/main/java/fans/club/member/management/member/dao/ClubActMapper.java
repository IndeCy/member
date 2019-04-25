package fans.club.member.management.member.dao;


import fans.club.member.management.member.entity.ClubAct;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClubActMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClubAct record);

    int insertSelective(ClubAct record);

    ClubAct selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClubAct record);

    int updateByPrimaryKey(ClubAct record);
}