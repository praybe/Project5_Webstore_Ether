package edu.kosmo.yjj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.yjj.vo.AuthVO;
import edu.kosmo.yjj.vo.UserVO;

@Mapper
public interface UserMapper {
	
	//@Select("select * from member where member_id = #{member_id}")
	public UserVO getUser(String userid); // UserMapper.xml에 있음	
	

	//회원가입
	@Insert("insert into member(member_id,member_password,member_name, member_call,member_birth,member_gender,member_address) "
			+ "values(#{member_id},#{member_password},#{member_name}, #{member_call}, #{member_birth},#{member_gender},#{member_address})")
	public int insertUser(UserVO userVO);

	//권한가입
	@Insert("insert into AUTHORITIES (member_id,AUTHORITY) values(#{member_id},'ROLE_USER')") //,'ROLE_USER'를 ,'ROLE_ADMIN'으로 고쳐서 가입하면 관리자가 된다.
	public void insertAuthorities(UserVO UserVO);

	
}
