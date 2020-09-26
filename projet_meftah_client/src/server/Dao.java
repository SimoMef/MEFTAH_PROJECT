/**
 * Dao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package server;

public interface Dao extends java.rmi.Remote {
    public int supprimerlpanier(server.Livre b) throws java.rmi.RemoteException;
    public int ajouteruser(server.Utilisateur c) throws java.rmi.RemoteException;
    public int supprimerpanier() throws java.rmi.RemoteException;
    public server.Livre recherchertLivre(java.lang.String e) throws java.rmi.RemoteException;
    public int ajouterpanier(server.Livre a) throws java.rmi.RemoteException;
    public server.Livre getLivre(int z) throws java.rmi.RemoteException;
    public server.Utilisateur inscr(java.lang.String x, java.lang.String y) throws java.rmi.RemoteException;
    public int ajouterbook(server.Livre d) throws java.rmi.RemoteException;
}
