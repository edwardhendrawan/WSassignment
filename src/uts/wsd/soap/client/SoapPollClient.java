package uts.wsd.soap.client;

import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;

public class SoapPollClient
{
	 public static void main(String[] args) throws ServiceException, RemoteException 
	 {
	  SoapPollServiceLocator locator = new SoapPollServiceLocator();
	  SoapPoll poll = locator.getSoapPollPort();
	  
	  System.out.print(poll.hello());
	  
	 }
}
