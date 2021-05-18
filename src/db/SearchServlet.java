package db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SearchServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		DB初期設定
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null; //検索結果
		
		try {
//			ドライバーの呼び出し
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/company_db?serverTimezone=UTC&useSSL=false", "suser", "");
		
			StringBuffer sql = new StringBuffer();
			sql.append("select * from shain_table");
			
			System.out.print(sql);
			
//			SQLセット
			pstmt = conn.prepareStatement(new String(sql));
			
//			Sql実行
			pstmt.execute();
			
			rest = pstmt.executeQuery();
			
//			遷移ページへデータを渡す
			request.setAttribute("kekka", rest);
//			結果ページへ遷移
			request.getRequestDispatcher("/search.jsp").forward(request, response);
			rest.close();
			pstmt.close();
			conn.close();

		}catch (Exception e) {
			System.out.print(e);
			String state = "検索失敗";
			request.setAttribute("state", state);
			request.getRequestDispatcher("/result.jsp").forward(request, response);
		}finally {
//			使用オブジェクトの削除
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}

}
