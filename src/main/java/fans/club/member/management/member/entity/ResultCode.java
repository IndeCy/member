package fans.club.member.management.member.entity;

import lombok.Data;

@Data
public class ResultCode {

    public ResultCode(int code,String url){
        this.resultCode = code;
        this.url = url;
    }

    private int resultCode;

    private String url;
}
