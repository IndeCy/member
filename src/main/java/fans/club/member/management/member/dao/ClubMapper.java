package fans.club.member.management.member.dao;


import fans.club.member.management.member.entity.Club;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClubMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Club record);

    int insertSelective(Club record);

    Club selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Club record);

    int updateByPrimaryKey(Club record);
}