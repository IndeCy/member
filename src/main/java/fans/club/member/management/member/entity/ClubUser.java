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
public class ClubUser {
    private Integer id;

    private String userName;

    private String userAccount;

    private String userPassword;

    private String userPhone;

    private Integer status;

    private Integer userEnder;

    private String userAddress;

    private String userQq;

    private String userEmail;

    private int userType;
}