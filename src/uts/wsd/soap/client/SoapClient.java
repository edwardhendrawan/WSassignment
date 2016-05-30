package uts.wsd.soap.client;

import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;

public class SoapClient 
{
	public static void main(String[] args) 
	{
	  SoapPollServiceLocator locator = new SoapPollServiceLocator();
	  SoapPoll poll;
		try 
		{
			poll = locator.getSoapPollPort();
			
			System.out.print(poll.createPoll());
			System.out.print(poll.closePoll());
			  
			System.out.print(poll.getPolls());
			System.out.print(poll.filterByCreator(1234));
			System.out.print(poll.filterByStatOrResp("closed"));
			System.out.print(poll.filterByStatOrResp("minResponses"));
		} 
		catch (ServiceException e1) 
		{
			e1.printStackTrace();
		}
		catch (RemoteException e) 
	  	{
			e.printStackTrace();
		}
	 
 }
}