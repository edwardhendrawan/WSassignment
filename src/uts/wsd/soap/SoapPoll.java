package uts.wsd.soap;

import javax.jws.WebService;
import javax.jws.WebMethod;

@WebService
public class SoapPoll 
{

	@WebMethod
	public String hello() 
	{
	   return "Hello World";
	}
}

