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
public class ReviewVO {
	// 리뷰 게시판
	
	private String review_id; // NOT NULL NUMBER
	private String review_content; // NOT NULL VARCHAR2(300)
	private Timestamp review_date; // NOT NULL DATE 
	private String member_id; // NOT NULL VARCHAR2(20)
	private int product_id; // NOT NULL NUMBER  


}
