package jspmvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControlerJsp
 */
@WebServlet("/ControlerJsp")
public class ControllerJsp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerJsp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		BeanAsModel bean = new BeanAsModel();
		
		bean.setName(name);
		bean.setPassword(password);
		request.setAttribute("bean", bean);
		
		Boolean status  = bean.validate();
		
		if(status) {
			RequestDispatcher rd = request.getRequestDispatcher("JspMvc/login-success.jsp");
			rd.forward(request, response);
			
			
		}else {
			
			RequestDispatcher rd = request.getRequestDispatcher("JspMvc/login-fail.jsp");
			rd.forward(request, response);
			
		}
		
		
	}

}
