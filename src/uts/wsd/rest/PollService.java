package uts.wsd.rest;
import uts.wsd.assign.*;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;

@Path("/pollservice")  //Regex to help with multiple pathing
public class PollService 
{
	@Context
	private ServletContext application;
	
	private WebApplication getWebApp() throws JAXBException, IOException 
	{
		synchronized (application) 
		{
			WebApplication webApp = (WebApplication)application.getAttribute("webApp");
			if (webApp == null) 
			{
				webApp = new WebApplication();
				webApp.save(application.getRealPath("polls.xml"));
				application.setAttribute("webApp", webApp);
			}
			return webApp;
		}
	}
	
	@GET
	@Path("openPolls")
	@Produces(MediaType.APPLICATION_XML)
	public Response getPolls() throws JAXBException, IOException 
	{
		return Response.status(200).entity(getWebApp().getPolls().fetchOpenPolls())
				.build();

	}
	
	@GET
	@Path("filter/{creatorid: [0-9]*}")
	@Produces(MediaType.APPLICATION_XML)
	public Response filterByCreator (@PathParam("creatorid") int creatorId ) throws JAXBException, IOException
	{
		return Response.status(200).entity(getWebApp().getPolls().fetchUserPolls(creatorId))
				.build();
	}
	
	@GET
	@Path("filter/{stringfilter: [A-Z]*[a-z]*}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response filterByStatAndResp (@PathParam("stringfilter") String filter) throws JAXBException, IOException
	{
		List<Poll> temp;
		if(filter.equalsIgnoreCase("open"))
		{
			//temp = getPolls(); 							//Returns open polls
		}
		else if (filter.equalsIgnoreCase("closed"))
		{
			temp = getWebApp().getPolls().fetchClosedPolls();
		}
		
		return (Response) getWebApp().getPolls().fetchOpenPolls();
//		
//		if(filter.equalsIgnoreCase("minResponses"))
//		{
//			temp = getWebApp().getPolls();			
//		}
//		else
//		{
//			return "Invalid Inputs";
//		}
		
	}
}
