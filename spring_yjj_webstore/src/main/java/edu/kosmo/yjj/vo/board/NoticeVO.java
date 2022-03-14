package edu.kosmo.yjj.vo.board;

import java.sql.Timestamp;
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
public class NoticeVO {
	// 공지게시판
	
	private int notice_id; // NOT NULL NUMBER
	private String member_id; // NOT NULL VARCHAR2(20)
	private String notice_title; // NOT NULL VARCHAR2(50)
	private String notice_content; // NOT NULL VARCHAR2(300)
	private Timestamp notice_date; // NOT NULL DATE 
	private int notice_hit; // NOT NULL NUMBER
}
