package db;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.ShainBeans;

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		文字コード設定
		request.setCharacterEncoding("UTF-8");
		String messe = "失敗しました。";
		
//		modeの取得
		String mode = request.getParameter("mode");
//		ステータスの宣言
		String ste = "成功しました";
//		ビーンズの初期化
		ShainBeans shain = new ShainBeans(request);

		//hiddenで飛ばした情報で判定		
		switch(mode) {
		case "add":
			if(shain.addData() == false) {
				ste = messe;
			}
			break;
		case "delete":
			if(shain.deleteData() == false) {
				ste = messe;
			}
			break;
		case "change":
			request.setAttribute("shain", shain);
			request.getRequestDispatcher("/change.jsp").forward(request, response);
			return;
		case "del_add":
			if( !(shain.deleteData() && shain.addData() )) {
				ste=messe;
			}
			break;
		}
//		steをセットしてフォワード
		request.setAttribute("state",ste);
		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}

}
