package uts.wsd.rest;

import javax.ws.rs.*;
import javax.ws.rs.core.*;

@Path("/pollservice")
public class PollService 
{
	@Path("hello")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	
	public String hello() 
	{
	   return "Hello World";
	}
}
