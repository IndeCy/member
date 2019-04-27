package fans.club.member.management.member.entity;

import lombok.Data;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2019-04-25
 */
public class Club {
    private Integer id;

    private String clubName;

    private String clubAddress;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getClubAddress() {
        return clubAddress;
    }

    public void setClubAddress(String clubAddress) {
        this.clubAddress = clubAddress;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}