

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
import server.Livre;


/**
 * Servlet implementation class ajouterlivre
 */
@WebServlet("/ajouterlivre")
public class ajouterlivre extends HttpServlet {
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
		 
		String nome,imge,descre;
			String op=request.getParameter("addbook"); 
			nome=request.getParameter("nom");
			imge=request.getParameter("img");
			descre=request.getParameter("descr");
			int ide=Integer.parseInt(request.getParameter("id"));
			int prixe=Integer.parseInt(request.getParameter("prix"));
		
			if(op.contentEquals("addbook")) {
				Livre l = null;
				
					port.ajouterbook(l);
			}
					response.sendRedirect("admin.jsp");
					
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
