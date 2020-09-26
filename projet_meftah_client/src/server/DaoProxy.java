package server;

public class DaoProxy implements server.Dao {
  private String _endpoint = null;
  private server.Dao dao = null;
  
  public DaoProxy() {
    _initDaoProxy();
  }
  
  public DaoProxy(String endpoint) {
    _endpoint = endpoint;
    _initDaoProxy();
  }
  
  private void _initDaoProxy() {
    try {
      dao = (new server.DaoServiceLocator()).getDaoPort();
      if (dao != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)dao)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)dao)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (dao != null)
      ((javax.xml.rpc.Stub)dao)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public server.Dao getDao() {
    if (dao == null)
      _initDaoProxy();
    return dao;
  }
  
  public int supprimerlpanier(server.Livre b) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.supprimerlpanier(b);
  }
  
  public int ajouteruser(server.Utilisateur c) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.ajouteruser(c);
  }
  
  public int supprimerpanier() throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.supprimerpanier();
  }
  
  public server.Livre recherchertLivre(java.lang.String e) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.recherchertLivre(e);
  }
  
  public int ajouterpanier(server.Livre a) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.ajouterpanier(a);
  }
  
  public server.Livre getLivre(int z) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.getLivre(z);
  }
  
  public server.Utilisateur inscr(java.lang.String x, java.lang.String y) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.inscr(x, y);
  }
  
  public int ajouterbook(server.Livre d) throws java.rmi.RemoteException{
    if (dao == null)
      _initDaoProxy();
    return dao.ajouterbook(d);
  }
  
  
}