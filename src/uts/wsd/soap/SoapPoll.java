package uts.wsd.soap;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.xml.ws.Endpoint;

@WebService
public class SoapPoll 
{

	@WebMethod
	public String hello() 
	{
	   return "Hello World";
	}
}

