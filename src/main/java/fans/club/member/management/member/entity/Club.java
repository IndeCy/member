package fans.club.member.management.member.entity;

import lombok.Data;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2019-04-25
 */
@Data
public class Club {
    private Integer id;

    private String clubName;

    private String clubAddress;

    private Integer status;
}