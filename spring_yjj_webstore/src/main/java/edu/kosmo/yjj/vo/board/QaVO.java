package edu.kosmo.yjj.vo.board;

import java.sql.Timestamp;

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
public class QaVO { 
	// Q&A 게시판
	
	private int question_id; // NOT NULL NUMBER
	private String member_id; // NOT NULL VARCHAR2(20)
	private String question_title; // NOT NULL VARCHAR2(50)  
	private String question_content; // NOT NULL VARCHAR2(300) 
	private Timestamp question_date; // NOT NULL DATE
	private int question_group; //  NUMBER  
	private int question_step; //  NUMBER  
	private int question_indent; //  NUMBER  
	

}
