/**
 * SoapPoll.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package uts.wsd.soap.client;

public interface SoapPoll extends java.rmi.Remote {
    public java.lang.String filterByCreator(int arg0) throws java.rmi.RemoteException;
    public java.lang.String getPolls() throws java.rmi.RemoteException;
    public java.lang.String closePoll() throws java.rmi.RemoteException;
    public java.lang.String createPoll() throws java.rmi.RemoteException;
    public java.lang.String filterByStatOrResp(java.lang.String arg0) throws java.rmi.RemoteException;
}
