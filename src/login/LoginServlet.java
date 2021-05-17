package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String message = "";
		if (id.equals("a") && pass.equals("a")) {
			message  = "ログイン成功";
		}else {
			message = "ログイン失敗";
		}
		
//		リクエストでデータを転送する
//		request.setAttribute("id", id);
//		request.setAttribute("pass", pass);
		request.setAttribute("ste", message);
		
//		 セッションへデータを格納
		HttpSession session = request.getSession( true );
		session.setAttribute("id", id);
		session.setAttribute("pass", pass);
		
		
//		フォワードで転送
		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}
}
