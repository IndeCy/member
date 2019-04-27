package fans.club.member.management.member.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserAct {

    private int id;

    private int userId;

    private int actId;

    private String name;

    private String via;

    private Date date;

    private String address;
}
