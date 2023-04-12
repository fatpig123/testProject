package org.hwine.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class DBTest {
	/*
	 * @Setter (onMethod_ = @Autowired) private PasswordEncoder pwencoder;
	 */
	
	@Setter (onMethod_ = @Autowired)
	private DataSource ds;
	
	@Test
	public void test() {
		String sql = "select * from wine where rownum < 2";
		try {
			Connection con = ds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, "22");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
