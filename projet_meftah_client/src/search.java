

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceException;

import server.Dao;
import server.DaoService;
import server.DaoServiceLocator;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
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
		
		/*String op=request.getParameter("q");
		//String name=request.getParameter("nom");
		if(op.contentEquals("q")) {
			
			HttpSession ses=request.getSession();
			String name = (String)ses.getAttribute("i");
			
			Livre l =new Livre() ;
			l=d.recherchertLivre(name);
			
			request.getRequestDispatcher("resultat.jsp").forward(request, response);
			
			response.sendRedirect("resultat.jsp");
			
			
		}*/
		String rech=request.getParameter("qq");
		String op=request.getParameter("q");
		if (op.equals("q")) {
			request.setAttribute("reche",rech);
			request.getRequestDispatcher("resultat.jsp").forward(request, response);
			response.sendRedirect("resultat.jsp");	
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
