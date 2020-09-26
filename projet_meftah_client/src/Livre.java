

public class Livre {
	private int id ;
	private String nom ;
	private String img ;
	private String descr ;
	private int prix ;
	public Livre(int id, String nom, String img, String descr, int prix) {
		super();
		this.id = id;
		this.nom = nom;
		this.img = img;
		this.descr = descr;
		this.prix = prix;
	}
	public Livre() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	
	
	
	

}
