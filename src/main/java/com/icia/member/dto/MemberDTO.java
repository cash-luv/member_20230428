package com.icia.member.dto;

import lombok.Data;

@Data
public class MemberDTO {
    private Long id;
    private String MemberEmail;
    private String memberPassword;
    private String memberName;
    private String memberBirth;
    private String memberMobile;
}
