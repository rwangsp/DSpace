<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>

<%--
  - Display hierarchical list of communities and collections
  -
  - Attributes to be passed in:
  -    communities         - array of communities
  -    collections.map  - Map where a keys is a community IDs (Integers) and
  -                      the value is the array of collections in that community
  -    subcommunities.map  - Map where a keys is a community IDs (Integers) and
  -                      the value is the array of subcommunities in that community
  -    admin_button - Boolean, show admin 'Create Top-Level Community' button
  --%>

<%@page import="java.util.List"%>
<%@page import="org.dspace.content.service.CollectionService"%>
<%@page import="org.dspace.content.factory.ContentServiceFactory"%>
<%@page import="org.dspace.content.service.CommunityService"%>
<%@page import="org.dspace.content.Bitstream"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page import="org.dspace.app.webui.servlet.admin.EditCommunitiesServlet" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.browse.ItemCountException" %>
<%@ page import="org.dspace.browse.ItemCounter" %>
<%@ page import="org.dspace.content.Collection" %>
<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Map" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%
    List<Community> communities = (List<Community>) request.getAttribute("communities");
    Map collectionMap = (Map) request.getAttribute("collections.map");
    Map subcommunityMap = (Map) request.getAttribute("subcommunities.map");
    Boolean admin_b = (Boolean)request.getAttribute("admin_button");
    boolean admin_button = (admin_b == null ? false : admin_b.booleanValue());
    ItemCounter ic = new ItemCounter(UIUtil.obtainContext(request));
%>

<%!
	CommunityService comServ = ContentServiceFactory.getInstance().getCommunityService();
	CollectionService colServ = ContentServiceFactory.getInstance().getCollectionService();


    void showCommunity(Community c, JspWriter out, HttpServletRequest request, ItemCounter ic, String parent_id,
    		Map collectionMap, Map subcommunityMap, int index, int header_tag_level) throws ItemCountException, IOException, SQLException
    {

				boolean showLogos = ConfigurationManager.getBooleanProperty("jspui.community-list.logos", true);
				// Retrieve communities and subcommunities
				List<Community> comms = (List<Community>) subcommunityMap.get(c.getID().toString());
				List<Collection> cols = (List<Collection>) collectionMap.get(c.getID().toString());

				int header_level = header_tag_level+1;// <h tag level>
				Bitstream logo = c.getLogo();

				out.println( "<div class=\"panel panel-default\">" );
        out.println("<div class=\"panel-heading\">");
				out.println( "<h" + header_level + " class=\"media-heading cclist-heading\">");

				if (showLogos) // Shows all icons in accordian drop down
        {
						out.println("<img class=\"community-default-image media-object img-responsive\" src=\"" +
						request.getContextPath() + "/image/community-default-image.png\" alt='community logo' />");
        }
				//Generate Handle URL
				out.println("<a href=\"" + request.getContextPath() + "/handle/" + c.getHandle() + "\">"
				+ c.getName() + "</a>");


        if(ConfigurationManager.getBooleanProperty("webui.strengths.show"))
        {
            out.println(" <span class=\"badge\">" + ic.getCount(c) + "</span>");
        }

				// Generate panel-toggle <a> and <img>  tags
				if (cols != null || comms != null) {
	     			out.println("<a class=\"panel-toggle\" data-toggle=\"collapse\" data-parent=\"#"+parent_id+"\" href=\"#collapse"+c.getID()+"\"><img src='image/expand.png' alt='expand community sub list' class='community-arrow' /></a>");
        }

				out.println("</h" + header_level + ">");
				out.println("</div> <!--end of panel-heading-->");

				if (cols != null || comms != null) {

						out.println("<div class=\"panel-body collapse community-container\" id=\"collapse"+c.getID()+"\">");

						if (StringUtils.isNotBlank(comServ.getMetadata(c, "short_description")))
						{
								out.println("<h" + header_level + " class='sub-header' >Description</h" + header_level + ">");
								out.println("<div class='community-description'>" + comServ.getMetadata(c,"short_description") + "</div>");
						}
				}

				// Get the collections in this community
        if (cols != null && cols.size() > 0)
        {
						out.println("<h" + header_level + " class='sub-header' >Collections under " + c.getName() + "</h" + header_level + ">");
						out.println("<ul>");

            for (int j = 0; j < cols.size(); j++)
            {
                Bitstream logoCol = cols.get(j).getLogo();

								out.println("<li class=\"media-heading cclist-heading\"><a href=\""+ request.getContextPath() + "/handle/" + cols.get(j).getHandle()+ "\">" + cols.get(j).getName() +"</a>");

								if(ConfigurationManager.getBooleanProperty("webui.strengths.show"))
								{
										out.println(" <span class=\"badge\">" + ic.getCount(cols.get(j)) + "</span>");
								}

                if (showLogos && logoCol != null)
                {
										out.println("<img class=\"collection-logo-preview media-object img-responsive\" src=\"" +request.getContextPath() + "/retrieve/" + logoCol.getID() + "\" alt=\"collection logo\" />");
                }
								out.println("</li>");

        		}// End Tag for (int j = 0; j < cols.size(); j++)

						out.println("</ul>");
    		}//End Tag if (cols != null && cols.size() > 0)

        // Get the sub-communities in this community
        if (comms != null && comms.size() > 0)
        {
						out.println("<h" + header_level + " class='sub-header'>Sub-Communities under " + c.getName() + "</h" + header_level + ">");
						out.println("<ul>");

            for (int k = 0; k < comms.size(); k++)
            {
								String sub_col_id = c.getID()+"-"+k;
								out.println("<div class=\"panel-group subcomm\" id=\""+sub_col_id+"\">");

              	showCommunity(comms.get(k), out, request, ic, sub_col_id, collectionMap, subcommunityMap, k, header_level);
								out.println("</div>");
            }
            out.println("</ul>");
        }

        out.println("</div>");
        out.println("</div> <!-- end of panel panel-default-->");
    }
%>
<!--Top of the Community Browse Page-->
<dspace:layout titlekey="jsp.community-list.title">

<%
    if (admin_button)
    {
%>
<dspace:sidebar>

			<div class="panel panel-warning">
			<div class="panel-heading">
				<fmt:message key="jsp.admintools"/>
			</div>

			<div class="panel-body">
          <form method="post" action="<%=request.getContextPath()%>/dspace-admin/edit-communities">
              <input type="hidden" name="action" value="<%=EditCommunitiesServlet.START_CREATE_COMMUNITY%>" />
							<input class="btn btn-default" type="submit" name="submit" value="<fmt:message key="jsp.community-list.create.button"/>" />
          </form>
      </div>

</dspace:sidebar>
<%
    }
%>
	<!--<h1 id="cc-title">Communities and collections</h1>-->
	<h1 id='cc-title'><fmt:message key="jsp.community-list.title"/></h1>
	<!--	<p id="cc-desc">Shown below is a list of communities
	and the collections and sub-communities within them. Click on a
	name to view that community or click on the arrow to see what
	collections and sub-communities are contained within the community. </p>
	-->
	<p id='cc-desc'><fmt:message key="jsp.community-list.text1"/></p>

<!--Display all the communities and subcommunities-->
<% if (communities.size() != 0)
{
%>
    <div class="panel-group" id="accordion_parent">
<%
        for (int i = 0; i < communities.size(); i++)
        {
						showCommunity(communities.get(i), out, request, ic, "accordion_parent", collectionMap, subcommunityMap, i ,1);
        }
%>
		</div>

<% }
%>
</dspace:layout>
