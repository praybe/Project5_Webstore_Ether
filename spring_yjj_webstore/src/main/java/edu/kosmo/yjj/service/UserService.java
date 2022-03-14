package edu.kosmo.yjj.service;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.yjj.mapper.UserMapper;
import edu.kosmo.yjj.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@NoArgsConstructor
@Service
public class UserService {

	@Inject
	private BCryptPasswordEncoder passEncoder;
	//BCryptPasswordEncoder는 암호화 시키는 객체

	@Inject
	private UserMapper userMapper;

	//@Transactional(rollbackFor = Exception.class)
	public void addUser(UserVO userVO) {
							
		String password = userVO.getMember_password();
		
		String encode = passEncoder.encode(password); // 암호화

		userVO.setMember_password(encode); // 암호화 시킨 것을 집어넣음

		userMapper.insertUser(userVO); // db에 insert시킴
		userMapper.insertAuthorities(userVO);
		
		
	}
}
