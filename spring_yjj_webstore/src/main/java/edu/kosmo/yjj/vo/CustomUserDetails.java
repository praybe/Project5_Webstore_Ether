package edu.kosmo.yjj.vo;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
// userHome.jsp에서 ㅇㅇ님 환영합니다. = principal 가져오는 것
@Log4j
@Getter
@Setter
public class CustomUserDetails implements UserDetails {
	
	
	//=================================================================================================
	private UserVO userVO; //property="principal.userVO.username
	
	
	// ================================================================================================
	private String member_password;
	private final String member_id; 
	private final Collection<? extends GrantedAuthority> authorities; //권한
	private final boolean accountNonExpired; //일단 true로 한다
	private final boolean accountNonLocked; //일단 true로 한다
	private final boolean credentialsNonExpired; //일단 true로 한다
	private final boolean enabled; //계정 활성화 여부

	// ~ Constructors
	// ===================================================================================================
	
	public CustomUserDetails(UserVO userVO) {
		 //Integer.toString(empVO.getEmpno()),getAuth(empVO)
		// 로그인 아이디 비밀번호 맞춰야함
		this(userVO.getMember_id(), userVO.getMember_password()  , true, true, true, true, getAuth(userVO));
		this.userVO = userVO;	
	}
	// 로그인 아이디 비밀번호 맞춰야함
	public CustomUserDetails(String member_id, String member_password, boolean enabled,
			boolean accountNonExpired, boolean credentialsNonExpired,
			boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {

		if (((member_id == null) || "".equals(member_id)) || (member_password == null)) {
			throw new IllegalArgumentException(
					"Cannot pass null or empty values to constructor");
		}

		this.member_id = member_id;
		this.member_password = member_password;
		this.enabled = enabled;
		this.accountNonExpired = accountNonExpired;
		this.credentialsNonExpired = credentialsNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.authorities = authorities;
	}
	
	//유저가 갖고 있는 권한 목록
	public static Collection<? extends GrantedAuthority> getAuth(UserVO userVO) { 

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for (AuthVO auth: userVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}
		
		return authorities;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return member_password; 
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return member_id;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return accountNonExpired; 
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return credentialsNonExpired; 
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled; 
	}
	

}
