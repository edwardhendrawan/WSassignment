package uts.wsd.soap.client;

public class SoapPollProxy implements uts.wsd.soap.client.SoapPoll {
  private String _endpoint = null;
  private uts.wsd.soap.client.SoapPoll soapPoll = null;
  
  public SoapPollProxy() {
    _initSoapPollProxy();
  }
  
  public SoapPollProxy(String endpoint) {
    _endpoint = endpoint;
    _initSoapPollProxy();
  }
  
  private void _initSoapPollProxy() {
    try {
      soapPoll = (new uts.wsd.soap.client.SoapPollServiceLocator()).getSoapPollPort();
      if (soapPoll != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)soapPoll)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)soapPoll)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (soapPoll != null)
      ((javax.xml.rpc.Stub)soapPoll)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public uts.wsd.soap.client.SoapPoll getSoapPoll() {
    if (soapPoll == null)
      _initSoapPollProxy();
    return soapPoll;
  }
  
  public java.lang.String filterByCreator(int arg0) throws java.rmi.RemoteException{
    if (soapPoll == null)
      _initSoapPollProxy();
    return soapPoll.filterByCreator(arg0);
  }
  
  public java.lang.String getPolls() throws java.rmi.RemoteException{
    if (soapPoll == null)
      _initSoapPollProxy();
    return soapPoll.getPolls();
  }
  
  public java.lang.String closePoll() throws java.rmi.RemoteException{
    if (soapPoll == null)
      _initSoapPollProxy();
    return soapPoll.closePoll();
  }
  
  public java.lang.String createPoll() throws java.rmi.RemoteException{
    if (soapPoll == null)
      _initSoapPollProxy();
    return soapPoll.createPoll();
  }
  
  public java.lang.String filterByStatOrResp(java.lang.String arg0) throws java.rmi.RemoteException{
    if (soapPoll == null)
      _initSoapPollProxy();
    return soapPoll.filterByStatOrResp(arg0);
  }
  
  
}