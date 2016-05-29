package uts.wsd.rest;
import uts.wsd.assign.*;
import java.util.List;

import javax.ws.rs.*;
import javax.ws.rs.core.*;

@Path("/pollservice")
public class PollService 
{
	@Path("getOpenPolls")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	
	public int getAllOpenPolls() 
	{
		return 0;
	}
}
