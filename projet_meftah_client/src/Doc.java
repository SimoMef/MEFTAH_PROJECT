



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.rpc.ServiceException;

import server.Dao;
import server.DaoService;
import server.DaoServiceLocator;
import server.Utilisateur;
/**
 * Servlet implementation class Doc
 */
@WebServlet("/Doc")
public class Doc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DaoService service = new DaoServiceLocator();
		Dao port = null;
		try {
			port = service.getDaoPort();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String em,pass;
		String op=request.getParameter("Inscription");
		em=request.getParameter("email");
		pass=request.getParameter("password");
		if(op.equals("Inscription")) {
			Utilisateur u=port.inscr(em,pass);
			if(u!=null) {
				
				response.sendRedirect("home.jsp");
			}
			else {
				response.sendRedirect("erreur.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
