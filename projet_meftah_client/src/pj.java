

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
import server.Utilisateur;


/**
 * Servlet implementation class pj
 */
@WebServlet("/pj")
public class pj extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        //this.getServletContext().getRequestDispatcher( "/WEB-INF/p.jsp"  ).forward( request, response );
    	DaoService service = new DaoServiceLocator();
		Dao port = null;
		try {
			port = service.getDaoPort();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	String em,pass;
		String op=request.getParameter("Inscription"); 
		em=request.getParameter("email");
		pass=request.getParameter("password");
		System.out.print(em);
		if(op.equals("Inscription")) {
			Utilisateur u=port.inscr(em,pass);
			if(!"mohamedmeftah1997@gmail.com".equals(em) && !"mohamed".equals(pass)) {
				HttpSession ses=request.getSession();
				int k = (int)ses.getAttribute("i");
				Livre l =new Livre() ;
				l=port.getLivre(k);
				String a=l.getNom();
				
				String b=l.getImg();
				String c=l.getDescr();
				int e=l.getPrix();
				int f=l.getId();
				request.setAttribute("nom",a);
				request.setAttribute("img",b);
				request.setAttribute("descr",c);
				request.setAttribute("prix",e);
				request.setAttribute("id",f);
				request.getRequestDispatcher("detail.jsp").forward(request, response);
				
				response.sendRedirect("detail.jsp");
			
			}
			else {
			
			
			
			
       
				
	                request.getRequestDispatcher("admin.jsp").forward(request, response);
					
					response.sendRedirect("admin.jsp");}
					
						
						}}
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Récupération des champs du formulaire. */
       
}
}


