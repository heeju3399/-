package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import bean.notice_Board;
import bean.user;

public class Con2 {

	private Connection conn = null;
	private PreparedStatement pre = null;
	private String sql = null;
	private boolean flag = false;
	private ResultSet rs = null;
	private DBConnectionMgr pool;

	public Con2() {
		pool = DBConnectionMgr.getInstance();
	}

	public int login(user uu) {

		try {
			conn = pool.getConnection();
			sql = " select userPassword from user where userid = ? ";
			pre = conn.prepareStatement(sql);
			pre.setString(1, uu.getUserId());
			rs = pre.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(uu.getUserPass())) {
					return 1; // �α��� ����
				} else {
					return 0; // �α��� ���� ����ٸ�
				}
			}
			return -1; // ���̵� ����
		} catch (Exception e) {
			System.out.println("login err:" + e);
			return -2;
		} finally {
			System.out.println("=====");
			pool.freeConnection(conn, pre);
			System.out.println("��������");
		}

	}

	public boolean signin(user uu) {

		try {
			conn = pool.getConnection();
			sql = "insert into user values (?,?,?,?,?)";
			pre = conn.prepareStatement(sql);

			pre.setString(1, uu.getUserId());
			pre.setString(2, uu.getUserPass());
			pre.setString(3, uu.getUserName());
			pre.setString(4, uu.getUserGender());
			pre.setString(5, uu.getUserEmail());

			pre.executeUpdate();
			flag = true;

		} catch (Exception e) {
			System.out.println("signin err" + e);
			flag = false;
		} finally {
			pool.freeConnection(conn, pre);
		}
		return flag;

	}

	public Vector<notice_Board> border_List(int num) {
		Vector<notice_Board> vlist = new Vector<notice_Board>();

		try {
			conn = pool.getConnection();
			sql = "select * from userborder where num = ? ";
			pre = conn.prepareStatement(sql);
			pre.setInt(1, num);
			rs = pre.executeQuery();
			while (rs.next()) {
				notice_Board bb = new notice_Board();
				bb.setNbId(rs.getInt(1));
				bb.setUserId(rs.getString(2));
				bb.setNbTitle(rs.getString(3));
				bb.setNbContent(rs.getString(4));
				bb.setNbDate(rs.getString(5));
				bb.setNbAvailable(rs.getInt(6));

				vlist.addElement(bb);
			}

		} catch (Exception e) {
			System.out.println("list_err:" + e);
		} finally {
			pool.freeConnection(conn, pre, rs);
		}

		return vlist;
	}

	public int insert() {

		
		
		return 1;
	}
}











