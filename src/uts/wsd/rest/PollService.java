package uts.wsd.rest;
import uts.wsd.assign.*;
import java.util.List;

import javax.ws.rs.*;
import javax.ws.rs.core.*;

@Path("/pollservice")  //Regex to help with multiple pathing
public class PollService 
{
	@GET
	@Path("openPolls")
	@Produces(MediaType.TEXT_PLAIN)
	public String getPolls() 
	{
		return "Return Open Polls here";
	}
	
	@GET
	@Path("filter/{creatorid: [0-9]*}")
	@Produces(MediaType.TEXT_PLAIN)
	public String filterByCreator (@PathParam("creatorid") int creatorId )
	{
		return "Creator filtered Polls here";
	}
	
	@GET
	@Path("filter/{stringfilter: [A-Z]*[a-z]*}")
	@Produces(MediaType.TEXT_PLAIN)
	public String filterByStatOrResp (@PathParam("stringfilter") String filter)
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
}
