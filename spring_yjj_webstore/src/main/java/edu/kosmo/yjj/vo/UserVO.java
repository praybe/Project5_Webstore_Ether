package edu.kosmo.yjj.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserVO {
	// 회원 계정

	private String member_id; // NOT NULL VARCHAR2(20)
	private String member_password; // NOT NULL VARCHAR2(20)
	private String member_name; // NOT NULL VARCHAR2(20)
	private int member_call; // NOT NULL NUMBER 
	private int member_birth; // NOT NULL NUMBER 
	private String member_gender; // NOT NULL VARCHAR2(10)
	private String member_address; // NOT NULL VARCHAR2(100)
	
	//권한 가져오는 부분
	private List<AuthVO> authList;
}
