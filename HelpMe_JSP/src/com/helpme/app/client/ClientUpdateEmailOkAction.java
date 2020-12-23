package com.helpme.app.client;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpme.action.Action;
import com.helpme.action.ActionForward;
import com.helpme.app.client.dao.ClientDAO;

public class ClientUpdateEmailOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//전달받은 파라미터가 한글일 경우 문자깨짐 방지
		request.setCharacterEncoding("UTF-8");

		// out으로 작성할 문자열 환경을 text, html로 잡아준다.
		response.setContentType("text/html;charset=utf-8");
		
		//html코드를 작성하기 위해서 getWriter()를 out에 담아준다.
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		
		//헬퍼 또는 고객으로 로그인했는지 판단하기 위해 값을 받아온다
		String loginAs = request.getParameter("loginAs");
		
		String client_id = (String) request.getSession().getAttribute("session_id");
		
		ClientDAO c_dao = new ClientDAO();
		
		//새로운 고객의 이메일을 업데이트한다
		c_dao.updateEmail(client_id, email);
		
		//ajax로 다시 loginAs를 전달한다
		out.println(loginAs);
		out.close();
		
		return null;
	}

}
