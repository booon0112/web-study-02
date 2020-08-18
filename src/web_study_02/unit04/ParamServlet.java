package web_study_02.unit04;

import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("04_result.jsp");
		
		String userName = request.getParameter("userName").trim();
		int userNum = Integer.parseInt(request.getParameter("userNum").trim());
		String id = request.getParameter("id").trim();
		String pwd1 = request.getParameter("pwd1").trim();
		String pwd2 = request.getParameter("pwd2").trim();
		String email1 = request.getParameter("email1").trim();
		String email2 = request.getParameter("email2").trim();
		int addressNum = Integer.parseInt(request.getParameter("addressNum").trim());
		String address1 = request.getParameter("address1").trim();
		String address2 = request.getParameter("address2").trim();
		int phone = Integer.parseInt(request.getParameter("phone").trim());
		String job = request.getParameter("job").trim();
		String content = request.getParameter("content");
		String foods[] = request.getParameterValues("foods");
		if(foods == null) foods = new String[] {"선택한 항목이 없음"};
		String arrToFoods = Arrays.stream(foods).collect(Collectors.joining(","));
		
		request.setAttribute("userName", userName);
		request.setAttribute("userNum", userNum);
		request.setAttribute("id", id);
		request.setAttribute("pwd1", pwd1);
		request.setAttribute("pwd2", pwd2);
		request.setAttribute("email1", email1);
		request.setAttribute("email2", email2);
		request.setAttribute("addressNum", addressNum);
		request.setAttribute("address1", address1);
		request.setAttribute("address2", address2);
		request.setAttribute("phone", phone);
		request.setAttribute("job", job);
		request.setAttribute("content", content);
		request.setAttribute("foods", arrToFoods);
		
		dispatcher.forward(request, response);
	}

}
