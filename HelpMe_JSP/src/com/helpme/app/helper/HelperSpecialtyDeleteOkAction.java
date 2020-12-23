package com.helpme.app.helper;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpme.action.Action;
import com.helpme.action.ActionForward;
import com.helpme.app.helper.dao.HelperDAO;

public class HelperSpecialtyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//전달받은 파라미터가 한글일 경우 문자깨짐 방지
		request.setCharacterEncoding("UTF-8");

		//html코드를 작성하기 위해서 getWriter()를 out에 담아준다.
		PrintWriter out = response.getWriter();
		
		// out으로 작성할 문자열 환경을 text, html로 잡아준다.
		response.setContentType("text/html;charset=utf-8");
		
		//삭제할 서비스 이름을 ajax를 통해 전달 받는다
		String service = request.getParameter("deleteSpecialty");
		
		HelperDAO h_dao = new HelperDAO();
		
		//세션에 저장된 헬퍼 아이디를 저장한다
		String helper_id = (String) request.getSession().getAttribute("session_id");
		
		//서비스 이름을 삭제한다
		h_dao.deleteSpecialty(helper_id, service);
		
		//삭제한 서비스 이름을 jsp에서 보이지 않기하기 위해 ajax로 전송한다
		out.println(service);
		out.close();
		
		return null;
	}

}
