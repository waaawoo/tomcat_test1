package Beans;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

public class ShainBeans {
// 　文字コード
	
//	一番最初にプロパティの定義
	private String id;
	private String name;
	private String sei;
	private String nen;
	private String address;
	
//	 Beansを作成する場合はGetter　Setterを作成する
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSei() {
		return sei;
	}
	public void setSei(String sei) {
		this.sei = sei;
	}
	public String getNen() {
		return nen;
	}
	public void setNen(String nen) {
		this.nen = nen;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
//	DBへの接続
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;
	
//	コンストラクタ リクエストを受け取って、セットする
	public ShainBeans(HttpServletRequest request) {
		setId(request.getParameter("id"));
		setName(request.getParameter("name"));
		setSei(request.getParameter("sei"));
		setNen(request.getParameter("nen"));
		setAddress(request.getParameter("address"));
	}
	
//	DBへのアクション用メソッド
	private void doDataBase(String sql) throws Exception{
		
//		コンテキストを取得（コネクションプール）
		InitialContext ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/poor");
		conn = ds.getConnection();
		
//		sqlの表示
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
//		sql実行
		pstmt.execute();
		
//		オブジェクトのクローズ
		pstmt.close();
		conn.close();
	}
	
//	追加処理
	public Boolean addData() {
		try {
//			sqlの作成
			String sql = "insert into shain_table(id, name, sei, nen, address) values('" + id + "','" + name  + "','" + sei + "','" + nen + "','" + address + "');";
			
//			実行メソッド呼び出し
			doDataBase(sql);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
//	削除処理
	public Boolean deleteData() {
		try {
			String sql = "delete from shain_table where id =" + id;
			doDataBase(sql);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
}
