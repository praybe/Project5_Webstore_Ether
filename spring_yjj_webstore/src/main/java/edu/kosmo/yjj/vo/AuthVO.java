package edu.kosmo.yjj.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class AuthVO {
	// 관리자 계정
	
	private String member_id; // NOT NULL VARCHAR2(20) 
	private String authority;  // NOT NULL VARCHAR2(100) 	 
}
