package edu.kosmo.yjj.vo;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
public class CustomUser extends User {
	
	@Setter(onMethod_ = @Autowired)
	private UserVO user;
	
	//기본적으로 부모의 생성자를 호출해야만 정상적으로 작동
	public CustomUser(String member_id, String member_password, Collection<? extends GrantedAuthority> authorities) {
		super(member_id, member_password, authorities);
		
	}
	
	public CustomUser(UserVO userVO) {
		super(userVO.getMember_name(), userVO.getMember_password(),getAuth(userVO));
		
		this.user = userVO;
	}
	
	//유저가 갖고 있는 권한 목록
	public static Collection<? extends GrantedAuthority> getAuth(UserVO userVO) { 

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for (AuthVO auth: userVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}
		
		return authorities;
	}	
}
