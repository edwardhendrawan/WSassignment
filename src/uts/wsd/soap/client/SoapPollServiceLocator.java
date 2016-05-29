/**
 * SoapPollServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package uts.wsd.soap.client;

public class SoapPollServiceLocator extends org.apache.axis.client.Service implements uts.wsd.soap.client.SoapPollService {

    public SoapPollServiceLocator() {
    }


    public SoapPollServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public SoapPollServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for SoapPollPort
    private java.lang.String SoapPollPort_address = "http://localhost:8080/WSassignment/soap/pollservice";

    public java.lang.String getSoapPollPortAddress() {
        return SoapPollPort_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String SoapPollPortWSDDServiceName = "SoapPollPort";

    public java.lang.String getSoapPollPortWSDDServiceName() {
        return SoapPollPortWSDDServiceName;
    }

    public void setSoapPollPortWSDDServiceName(java.lang.String name) {
        SoapPollPortWSDDServiceName = name;
    }

    public uts.wsd.soap.client.SoapPoll getSoapPollPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(SoapPollPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getSoapPollPort(endpoint);
    }

    public uts.wsd.soap.client.SoapPoll getSoapPollPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            uts.wsd.soap.client.SoapPollPortBindingStub _stub = new uts.wsd.soap.client.SoapPollPortBindingStub(portAddress, this);
            _stub.setPortName(getSoapPollPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setSoapPollPortEndpointAddress(java.lang.String address) {
        SoapPollPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (uts.wsd.soap.client.SoapPoll.class.isAssignableFrom(serviceEndpointInterface)) {
                uts.wsd.soap.client.SoapPollPortBindingStub _stub = new uts.wsd.soap.client.SoapPollPortBindingStub(new java.net.URL(SoapPollPort_address), this);
                _stub.setPortName(getSoapPollPortWSDDServiceName());
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
        if ("SoapPollPort".equals(inputPortName)) {
            return getSoapPollPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://soap.wsd.uts/", "SoapPollService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://soap.wsd.uts/", "SoapPollPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("SoapPollPort".equals(portName)) {
            setSoapPollPortEndpointAddress(address);
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
