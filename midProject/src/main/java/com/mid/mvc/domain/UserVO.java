package com.mid.mvc.domain;

import lombok.Data;
 
@Data
public class UserVO {
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String addr;
	private String email;
	private String role;
	private String logo;
}
