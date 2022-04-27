package pack_Member;

import java.sql.*;
import java.util.*;

import pack_DBCP.DBConnectionMgr;

public class MemberMgr {
	Connection objConn = null;
	Statement objStmt = null;
	ResultSet objRs = null;
	PreparedStatement objPstmt = null;
	DBConnectionMgr objPool = null;
	boolean res = false;
	boolean flag = false;
	String sql = null;

	/* 아이디 중복 검사 시작 */
	public boolean checkuEmail(String uEmail) {
		res = false;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bread?";
			url += "useSSL=false&";
			url += "serverTimezone=Asia/Seoul&";
			url += "useUnicode=true&";
			url += "characterEncoding=UTF-8&";
			url += "allowPublicKeyRetrieval=true";
			String user = "root";
			String password = "1234";
			objConn = DriverManager.getConnection(url, user, password);
			sql = "select count(*) from member where uEmail = ?";
			objPstmt = objConn.prepareStatement(sql);
			objPstmt.setString(1, uEmail);
			objRs = objPstmt.executeQuery();

			if (objRs.next()) {
				int recordCnt = objRs.getInt(1);
				if (recordCnt == 1)
					res = true;
			}

		} catch (ClassNotFoundException e) {
			System.out.println("CNFE : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("SQLE : " + e.getMessage());
		}

		return res;
	}

	/* 회원가입 시작 */
	public boolean insertMember(MemberBean bean) {
		flag = false;

		try {
			objPool = DBConnectionMgr.getInstance();
			objConn = objPool.getConnection();

			sql = "insert into member (uEmail,uPw,uName,uPhone,uBirthday,uBread,joinTM) values";
			sql += "(?,?,?,?,?,?,now())";
			objPstmt = objConn.prepareStatement(sql);
			objPstmt.setString(1, bean.getuEmail());
			objPstmt.setString(2, bean.getuPw());
			objPstmt.setString(3, bean.getuName());
			objPstmt.setString(4, bean.getuPhone());
			objPstmt.setString(5, bean.getuBirthday());

			String[] breadName = { "식빵", "크림빵", "도넛", "고로케", "팥빵" };
			char[] breadCode = { '0', '0', '0', '0', '0' };
			String[] bread = bean.getuBread();
			
			int breadLen = 0;
			if (bread != null) {
				breadLen = bread.length;
			}
			for (int i = 0; i < breadLen; i++) {
				for (int j = 0; j < breadName.length; j++) {
					if (bread[i].equals(breadName[j])) {
						breadCode[j] = '1';
					}
				}
			}

			objPstmt.setString(6, new String(breadCode));
			int rowCnt = objPstmt.executeUpdate();
			if (rowCnt == 1) {
				flag = true;
			}

		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		} finally {
			objPool.freeConnection(objConn, objPstmt);
		}

		return flag;
	}
	/* 회원가입 끝 */

	/* 로그인 처리 시작 */
	public boolean loginMember(String uEmail, String uPw) {
		flag = false;

		try {

			objPool = DBConnectionMgr.getInstance();
			objConn = objPool.getConnection();

			sql = "select count(*) from member where uEmail = ? and uPw = ?";
			objPstmt = objConn.prepareStatement(sql);
			objPstmt.setString(1, uEmail);
			objPstmt.setString(2, uPw);
			objRs = objPstmt.executeQuery();

			if (objRs.next()) {
				int recordCnt = objRs.getInt(1);
				if (recordCnt == 1)
					flag = true;
			}

		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		} finally {
			objPool.freeConnection(objConn, objPstmt, objRs);
		}

		return flag;
	}

	/* 로그인 처리 끝 */

	/* 로그인 사용자 이름 반환 시작 */
	public String getMemberName(String uEmail) {

		String uName = "";

		try {

			objPool = DBConnectionMgr.getInstance();
			objConn = objPool.getConnection();

			sql = "select uName from member where uEmail = ?";
			objPstmt = objConn.prepareStatement(sql);
			objPstmt.setString(1, uEmail);

			objRs = objPstmt.executeQuery();
			if (objRs.next()) {
				uName = objRs.getNString(1);
			}

		} catch (Exception e) {
			System.out.println("Exception 이슈 : " + e.getMessage());
		} finally {
			objPool.freeConnection(objConn, objPstmt, objRs);
		}

		return uName;
	}

	/* 로그인 사용자 이름 반환 끝 */
}
