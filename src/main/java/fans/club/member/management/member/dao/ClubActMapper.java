package fans.club.member.management.member.dao;


import fans.club.member.management.member.entity.ClubAct;
import fans.club.member.management.member.entity.UserAct;
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

    /**
     * 根据活动name 查询活动
     * @param name
     * @return
     */
    ClubAct selectByName(String name);

    /**
     * 根据用户id查询用户订阅的活动
     * @param userId
     * @return
     */
    List<ClubAct> selectUsersAct(int userId);

    /**
     * 删除用户订阅活动
     * @param id
     * @return
     */
    int deleteUsersAct(int id);


}