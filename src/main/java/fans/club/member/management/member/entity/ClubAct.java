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
public class ClubAct {
    private Integer id;

    private String name;

    private String via;

    private Date actDate;

    private String address;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVia() {
        return via;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public Date getActDate() {
        return actDate;
    }

    public void setActDate(Date actDate) {
        this.actDate = actDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}