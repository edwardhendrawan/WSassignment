package uts.wsd.soap;

import javax.jws.WebService;
import javax.ws.rs.PathParam;
import javax.jws.WebMethod;
import javax.xml.ws.Endpoint;

@WebService
public class SoapPoll 
{

	@WebMethod
	public String getPolls() 
	{
	   return "Return Open Polls here";
	}
	@WebMethod
	public String filterByCreator (int creatorId )
	{
		return "Creator filtered Polls here";
	}
	
	@WebMethod
	public String filterByStatOrResp (String filter)
	{
		if(filter.equalsIgnoreCase("open"))
		{
			return getPolls(); 							//Returns open polls
		}
		else if (filter.equalsIgnoreCase("closed"))
		{
			return "All closed polls";
		}
		else if(filter.equalsIgnoreCase("minResponses"))
		{
			return "all polls that have more than 2 responses";			
		}
		else
		{
			return "Invalid Inputs";
		}
	}
	
	@WebMethod
	public String createPoll()
	{
		return "Poll Created";
	}

	@WebMethod
	public String closePoll()
	{
		return "Poll Closed";
	}
}


