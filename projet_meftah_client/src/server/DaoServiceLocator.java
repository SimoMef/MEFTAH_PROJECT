/**
 * DaoServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package server;

public class DaoServiceLocator extends org.apache.axis.client.Service implements server.DaoService {

    public DaoServiceLocator() {
    }


    public DaoServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public DaoServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for DaoPort
    private java.lang.String DaoPort_address = "http://localhost:1979/ws/calcul";

    public java.lang.String getDaoPortAddress() {
        return DaoPort_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String DaoPortWSDDServiceName = "DaoPort";

    public java.lang.String getDaoPortWSDDServiceName() {
        return DaoPortWSDDServiceName;
    }

    public void setDaoPortWSDDServiceName(java.lang.String name) {
        DaoPortWSDDServiceName = name;
    }

    public server.Dao getDaoPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(DaoPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getDaoPort(endpoint);
    }

    public server.Dao getDaoPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            server.DaoPortBindingStub _stub = new server.DaoPortBindingStub(portAddress, this);
            _stub.setPortName(getDaoPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setDaoPortEndpointAddress(java.lang.String address) {
        DaoPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (server.Dao.class.isAssignableFrom(serviceEndpointInterface)) {
                server.DaoPortBindingStub _stub = new server.DaoPortBindingStub(new java.net.URL(DaoPort_address), this);
                _stub.setPortName(getDaoPortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("DaoPort".equals(inputPortName)) {
            return getDaoPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://server/", "DaoService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://server/", "DaoPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("DaoPort".equals(portName)) {
            setDaoPortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
