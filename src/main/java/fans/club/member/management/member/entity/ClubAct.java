package fans.club.member.management.member.entity;

import lombok.Data;

import java.util.Date;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2019-04-25
 */
@Data
public class ClubAct {
    private Integer id;

    private String name;

    private String via;

    private Date date;

    private String address;

}