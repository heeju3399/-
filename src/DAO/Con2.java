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
					return 1; // 로그인 성공
				} else {
					return 0; // 로그인 실패 비번다름
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			System.out.println("login err:" + e);
			return -2;
		} finally {
			System.out.println("=====");
			pool.freeConnection(conn, pre);
			System.out.println("접속종료");
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

	public Vector<notice_Board> border_List() {
		Vector<notice_Board> vlist = new Vector<notice_Board>();

		try {
			conn = pool.getConnection();
			sql = "select * from userborder where avaliable=1 ORDER BY num desc";
			pre = conn.prepareStatement(sql);
			
			rs = pre.executeQuery();
			while (rs.next()) {
				notice_Board bb = new notice_Board();
				bb.setNum(rs.getInt(1));
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

	public void boder_insert(notice_Board bb) {
		try {
			conn = pool.getConnection();
			sql =  " insert INTO userborder (userid, title, content, "; 
			sql += " DATE, avaliable ) "; 
			sql += " VALUES (?,?,?,DATE_FORMAT(NOW(),'%Y-%m-%d'),1) ";
			pre = conn.prepareStatement(sql);
			pre.setString(1, bb.getUserId());
			pre.setString(2, bb.getNbTitle());
			pre.setString(3, bb.getNbContent());
		
			pre.executeUpdate();
		} catch (Exception e) {
			System.out.println("bbinsert_err:" + e);
		} finally {
			pool.freeConnection(conn, pre);
		}
	}
	public Vector<notice_Board> read_list(int num) {
		Vector<notice_Board> vlist = new Vector<notice_Board>();

		try {
			conn = pool.getConnection();
			sql = "select * from userborder where avaliable=1 and num = ? ";
					
			pre = conn.prepareStatement(sql);
			pre.setInt(1, num);
			rs = pre.executeQuery();
			if (rs.next()) {
				notice_Board bb = new notice_Board();
				bb.setNum(rs.getInt(1));
				bb.setUserId(rs.getString(2));
				bb.setNbTitle(rs.getString(3));
				bb.setNbContent(rs.getString(4));
				bb.setNbDate(rs.getString(5));
				bb.setNbAvailable(rs.getInt(6));				

				vlist.addElement(bb);
			}

		} catch (Exception e) {
			System.out.println("read_list_err:" + e);
		} finally {
			pool.freeConnection(conn, pre, rs);
		}
		return vlist;
	}
	public void delete(int num) {
		try {
			conn = pool.getConnection();
			sql = "update hoho.userborder set avaliable=0 where num = ? ";
			pre = conn.prepareStatement(sql);
			pre.setInt(1, num);
			pre.executeUpdate();
			flag = true;

		} catch (Exception e) {
			System.out.println("delete_err" + e);
		} finally {
			pool.freeConnection(conn, pre);
		}
		
	}
	public void update(notice_Board nb) {
		try {
			conn = pool.getConnection();
			sql =  " update hoho.userborder " ;
			sql += " set title=?, content=? , " ;
			sql += " DATE=DATE_FORMAT(NOW(),'%Y-%m-%d') ";			
			sql += " where num = ? ";
			pre = conn.prepareStatement(sql);
			pre.setString(1, nb.getNbTitle());
			pre.setString(2, nb.getNbContent());
			pre.setInt(3, nb.getNum());
			pre.executeUpdate();
		} catch (Exception e) {
			System.out.println("update_err" + e);
		} finally {
			pool.freeConnection(conn, pre);
		}
	}
//	public int count(int num) {
//		
//	}
}
