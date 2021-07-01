package com.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@ToString
public class UserInfo {
    private Integer userId;
    private String userName;
    private String password;
    private String userType;
}
