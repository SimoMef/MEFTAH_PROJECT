package server;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;




@WebService
public class Dao extends DBInteraction {
	@WebMethod(operationName = "inscr")
	
public Utilisateur inscr(@WebParam(name="x") String em,@WebParam(name="y") String pass) {
	Utilisateur u=null;
	connect();
	String sql ="select email,password from utilisateur where email='"+em+"'and password='"+pass+"'";
	ResultSet rs=Select(sql);
	try {
		if(rs.next())
		{
			u=new Utilisateur() ;
			u.setEmail(rs.getString(1));
			u.setPassword(rs.getString(2));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	disconnect();
	return u ;
	
}
	@WebMethod(operationName = "getLivre")
public Livre getLivre(@WebParam(name="z") int id) {
	Livre u=null;
	connect();
	String sql ="select id,nom,img,descr,prix from livre where id='"+id+"'";
	ResultSet rs=Select(sql);
	try {
		if(rs.next())
		{
			u=new Livre() ;
			u.setId(Integer.parseInt(rs.getString(1)));
			u.setNom(rs.getString(2));
			u.setImg(rs.getString(3));
			u.setDescr(rs.getString(4));
			u.setPrix(Integer.parseInt(rs.getString(5)));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	disconnect();
	return u ;
}
	@WebMethod(operationName = "ajouterpanier")
public int ajouterpanier(@WebParam(name="a") Livre l) {
	connect();
	String sql="insert into panier (id,nom,img,descr,prix) values('"+l.getId()+"','" +l.getNom()+"','"  +l.getImg()+"','" +l.getDescr()+"','" +l.getPrix()+"')";
	int nbr=Maj(sql);
	disconnect();
	return nbr;
}
	@WebMethod(operationName = "supprimerpanier")
public int supprimerpanier() {
	connect();
	String sql="DELETE FROM  panier ";
	int nbr2=Maj(sql);
	disconnect();
	return nbr2;
}
	@WebMethod(operationName = "supprimerlpanier")
public int supprimerelpanier(@WebParam(name="b") Livre l) {
	connect();
	String sql="DELETE FROM  panier where id='"+l.getId()+"' ";
	int nbr2=Maj(sql);
	disconnect();
	return nbr2;
}
	@WebMethod(operationName = "ajouteruser")
public int ajouteruser(@WebParam(name="c") Utilisateur u) {
	
	connect();
	String sql="insert into utilisateur (email,password) values('"+u.getEmail()+"','"+u.getPassword()+"')";
	int nb=Maj(sql);
	disconnect();
	return nb;
}
	@WebMethod(operationName = "ajouterbook")
public int ajouterbook(@WebParam(name="d") Livre l) {
	
	connect();
	String sql="insert into livre (id,nom,img,descr,prix) values('"+l.getId()+"','" +l.getNom()+"','"  +l.getImg()+"','" +l.getDescr()+"','" +l.getPrix()+"')";
	int nb=Maj(sql);
	disconnect();
	return nb;
}
	@WebMethod(operationName = "recherchertLivre")
public Livre recherchertLivre(@WebParam(name="e") String nom) {
	Livre l=null;
	connect();
	String sql ="select id,nom,img,descr,prix from livre where nom='"+nom+"'";
	ResultSet rs=Select(sql);
	try {
		if(rs.next())
		{
			l=new Livre() ;
			l.setId(Integer.parseInt(rs.getString(1)));
			l.setNom(rs.getString(2));
			l.setImg(rs.getString(3));
			l.setDescr(rs.getString(4));
			l.setPrix(Integer.parseInt(rs.getString(5)));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	disconnect();
	return l ;
}


	
	



}
	