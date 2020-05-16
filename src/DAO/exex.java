package DAO;

import bean.notice_Board;
import bean.user;

public class exex {

//	private String userId;
//	private String userPass;
//	private String userName;
//	private String userGender;
//	private String userEmail;
//	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Con2 mgr = new Con2();
		user uu = new user();
		notice_Board bean = new notice_Board();
		
		for (int i = 1; i < 1000; i++) {
			bean.setNbId(i);
			bean.setNbTitle("aaaaaa");
			bean.setNbContent("bbbbbb");
			mgr.boder_insert(bean);
		}
	}
}
