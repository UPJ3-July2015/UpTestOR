package me.replace;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CLoginServlet
 */
@WebServlet("/doLogin")
public class CLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		HttpSession ses = request.getSession(true);

		// look for sesn usr
		Object ousr = ses.getAttribute("UserName");
		if (ousr != null)
			request.getRequestDispatcher("/logout.jsp").forward(request,
					response);
		else {
			String target = "/login.jsp";
			String userName = request.getParameter("username");
			if (!CUtils.isNullOrEmptyTrim(userName)) {
				ses.setAttribute("UserName", userName);
				// success login
				target = "/index.jsp";
			}
			request.getRequestDispatcher(target).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String s = request.getParameter("paramName1");
		//request.g
	}

}
