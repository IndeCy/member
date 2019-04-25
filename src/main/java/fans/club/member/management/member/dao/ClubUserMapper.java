package fans.club.member.management.member.dao;

import fans.club.member.management.member.entity.ClubUser;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClubUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClubUser record);

    int insertSelective(ClubUser record);

    ClubUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClubUser record);

    int updateByPrimaryKey(ClubUser record);
}