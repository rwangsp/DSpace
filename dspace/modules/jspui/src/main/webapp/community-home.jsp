<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Community home JSP
  -
  - Attributes required:
  -    community             - Community to render home page for
  -    collections           - array of Collections in this community
  -    subcommunities        - array of Sub-communities in this community
  -    last.submitted.titles - String[] of titles of recently submitted items
  -    last.submitted.urls   - String[] of URLs of recently submitted items
  -    admin_button - Boolean, show admin 'edit' button
  --%>

<%@page import="org.dspace.content.service.CollectionService"%>
<%@page import="org.dspace.content.factory.ContentServiceFactory"%>
<%@page import="org.dspace.content.service.CommunityService"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.dspace.app.webui.components.RecentSubmissions" %>

<%@ page import="org.dspace.app.webui.servlet.admin.EditCommunitiesServlet" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.browse.BrowseIndex" %>
<%@ page import="org.dspace.browse.ItemCounter" %>
<%@ page import="org.dspace.content.*" %>
<%@ page import="org.dspace.core.Utils" %>
<%@ page import="org.dspace.services.ConfigurationService" %>
<%@ page import="org.dspace.services.factory.DSpaceServicesFactory" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>

<%
    // Retrieve attributes
    Community community = (Community) request.getAttribute( "community" );
    List<Collection> collections =
        (List<Collection>) request.getAttribute("collections");
    List<Community> subcommunities =
        (List<Community>) request.getAttribute("subcommunities");

    RecentSubmissions rs = (RecentSubmissions) request.getAttribute("recently.submitted");

    Boolean editor_b = (Boolean)request.getAttribute("editor_button");
    boolean editor_button = (editor_b == null ? false : editor_b.booleanValue());
    Boolean add_b = (Boolean)request.getAttribute("add_button");
    boolean add_button = (add_b == null ? false : add_b.booleanValue());
    Boolean remove_b = (Boolean)request.getAttribute("remove_button");
    boolean remove_button = (remove_b == null ? false : remove_b.booleanValue());

	// get the browse indices
    BrowseIndex[] bis = BrowseIndex.getBrowseIndices();
	  CommunityService comServ = ContentServiceFactory.getInstance().getCommunityService();
	  CollectionService colServ = ContentServiceFactory.getInstance().getCollectionService();
    // Put the metadata values into guaranteed non-null variables
    String name = comServ.getMetadata(community, "name");
    String intro = comServ.getMetadata(community, "introductory_text");
    String copyright = comServ.getMetadata(community, "copyright_text");
    String sidebar = comServ.getMetadata(community, "side_bar_text");
    Bitstream logo = community.getLogo();

    ConfigurationService configurationService = DSpaceServicesFactory.getInstance().getConfigurationService();

    boolean feedEnabled = configurationService.getBooleanProperty("webui.feed.enable");
    String feedData = "NONE";
    if (feedEnabled)
    {
        // FeedData is expected to be a comma separated list
        String[] formats = configurationService.getArrayProperty("webui.feed.formats");
        String allFormats = StringUtils.join(formats, ",");
        feedData = "comm:" + allFormats;
    }

    ItemCounter ic = new ItemCounter(UIUtil.obtainContext(request));
    List<Item> items = rs.getRecentSubmissions();
    boolean first = true;

%>

<%@page import="org.dspace.app.webui.servlet.MyDSpaceServlet"%>
<dspace:layout style='submission' locbar="commLink" title="<%= name %>" feedData="<%= feedData %>">

<p class="copyrightText"><%= copyright %></p>

<div class='row community-home-container'>

    <div class="col-md-9 community-home-main">

        <div class="well community-header">

            <div class="col-md-8 community-title">

                  <!-- Commuity Name -->
                  <h2><%= name %></h2>

                  <!-- Community Logo -->
                  <%  if (logo != null)
                  {%>
                      <img class="img-responsive" alt="Logo" src="<%= request.getContextPath() %>/retrieve/<%= logo.getID() %>" />
                <%} %>

            </div>

            <%-- Community Intro --%>
            <% if (StringUtils.isNotBlank(intro))
            {
            %>
              <%= intro %>
            <%
            }
            %>

        </div><%-- <div class="well community-header"> --%>

        <div class="community-home-nav">
            <h1>Browse items in this community by the following</h1>
            <%-- Generate buttons on community home --%>
            <%
              for (int i = 0; i < bis.length; i++)
              {
                  String key = "browse.menu." + bis[i].getName();
              %>
                  <form method="get" action="<%= request.getContextPath() %>/handle/<%= community.getHandle() %>/browse" class="btn-group">
                      <input type="hidden" name="type" value="<%= bis[i].getName() %>"/>
                      <input type="hidden" name="starts_with" value="A"/>
                      <input class="btn btn-success" type="submit" name="submit_browse" value= "<fmt:message key="<%= key %>"/>" />
                  </form>

              <%
              }
          %>
        </div>

        <div class="community-home-tab" id='tabs'>

            <script>
                $(function() {
                    $( "#tabs" ).tabs();

                    var cols = "<%= collections.size() %>";
                    var coms = "<%= subcommunities.size() %>";
                    var name = "<%= community.getName() %>";

                    if (coms > cols || name == 'The Brent Mitton Collection') {
                        $("#tabs").tabs("option", "active", 1);
                    }
              });
            </script>

            <ul class='community-home-tab-headings'>

                <% if (collections.size() > 0) { %>
                    <li class='community-home-tab-heading'>
                        <h3><a href='#sub-cols'><fmt:message key="jsp.community-home.heading2"/></a></h3>
                    </li>
                <% } %>
                <% if (subcommunities.size() > 0) { %>
                    <li class='community-home-tab-heading'>
                        <h3><a href='#sub-coms'><fmt:message key="jsp.community-home.heading3"/></a></h3>
                    </li>
                <% } %>

                <h3 class='community-subnav-anchor'><a target="_blank" href='<%= request.getContextPath() %>/handle/<%= community.getHandle() %>/statistics'>Statistics</a></h3>

            </ul>


            <%
            	boolean showLogos = configurationService.getBooleanProperty("jspui.community-home.logos", true);
            	if (subcommunities.size() != 0)
              {%>

                  <div class="col-md-6 boxes" id='sub-coms'>

                  <div class="list-group">
            <%
                for (int j = 0; j < subcommunities.size(); j++)
                {
            %>
            		  <div class="list-group-item row">
            <%
            		  Bitstream logoCom = subcommunities.get(j).getLogo();

              		if (showLogos && logoCom != null)
                  { %>

                    <div class="col-md-3">
              		        <img alt="Logo" class="img-responsive" src="<%= request.getContextPath() %>/retrieve/<%= logoCom.getID() %>" />
              			</div>

                    <div class="col-md-9">

              <% } else { %>
                    <div class="col-md-12">
              <% }  %>

                <h4 class="list-group-item-heading">
                  <a href="<%= request.getContextPath() %>/handle/<%= subcommunities.get(j).getHandle() %>"><%= subcommunities.get(j).getName() %></a>
                <%

                if (configurationService.getBooleanProperty("webui.strengths.show"))// ITS Customization
                {
                    out.println(" <span class=\"badge\">" + ic.getCount(subcommunities.get(j))+ "</span>");
                }
                %>

             <% if (remove_button)
                { %>
                  <form class="btn-group" method="post" action="<%=request.getContextPath()%>/tools/edit-communities">
                    <input type="hidden" name="parent_community_id" value="<%= community.getID() %>" />
                    <input type="hidden" name="community_id" value="<%= subcommunities.get(j).getID() %>" />
                    <input type="hidden" name="action" value="<%=EditCommunitiesServlet.START_DELETE_COMMUNITY%>" />
                    <button type="submit" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span></button>
                  </form>
            <% } %>

              </h4>
            </div>
          </div>

            <%
          }//for loop
            %>
          	</div> <!--<div class="list-group">-->
          	</div> <!--<div class="col-md-6">-->

          <%
          }
          %><%-- if (subcommunities.size() != 0) --%>


        </div> <%-- Subcommunities --%>

        <%-- Communities --%>
        </div>


<%-- Collections --%>
<%
    if (collections.size() != 0)
    {
%>
	<div class="col-md-6" id='sub-cols'>

  <%-- <h2>Collections in this community</h2> --%>
		<div class="list-group">
<%
        for (int i = 0; i < collections.size(); i++)
        {
%>
			<div class="list-group-item row">
<%
		Bitstream logoCol = collections.get(i).getLogo();
		if (showLogos && logoCol != null) { %>
			<div class="col-md-3">
		        <img alt="Logo" class="img-responsive" src="<%= request.getContextPath() %>/retrieve/<%= logoCol.getID() %>" />
			</div>
			<div class="col-md-9">
<% } else { %>
			<div class="col-md-12">
<% }  %>

	      <h4 class="list-group-item-heading"><a href="<%= request.getContextPath() %>/handle/<%= collections.get(i).getHandle() %>">
	      <%= collections.get(i).getName() %></a>
<%
        if(configurationService.getBooleanProperty("webui.strengths.show"))
        {
            out.println("<span class=\"badge\">" + ic.getCount(collections.get(i)) + "</span>");
        }
%>
	    <% if (remove_button) { %>
	      <form class="btn-group" method="post" action="<%=request.getContextPath()%>/tools/edit-communities">
	          <input type="hidden" name="parent_community_id" value="<%= community.getID() %>" />
	          <input type="hidden" name="community_id" value="<%= community.getID() %>" />
	          <input type="hidden" name="collection_id" value="<%= collections.get(i).getID() %>" />
	          <input type="hidden" name="action" value="<%=EditCommunitiesServlet.START_DELETE_COLLECTION%>" />
	          <button type="submit" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span></button>
	      </form>
	    <% } %>
		  </h4>
      <p class="collectionDescription"><%= colServ.getMetadata(collections.get(i), "short_description") %></p>
    </div>
  </div>
<%
        }
%>
  </div>
</div>
<%
    }
%>
</div>


<%
  int discovery_panel_cols = 12;
  int discovery_facet_cols = 12;
%>

<div class="col-md-3 community-discovery">

<%@ include file="discovery/static-sidebar-facet.jsp" %>

        <div class='col-md-12'>
            <% if (sidebar != null && !sidebar.isEmpty()) { %>
                <h4 class='collection-additional-info'>Additional information</h4>
            <% } %>
            <%= sidebar %>
        </div>

        <% if(editor_button || add_button)  // edit button(s)
        { %>
            <dspace:sidebar>
             <div class="panel panel-warning">

                    <div class="panel-heading">
                      <fmt:message key="jsp.admintools"/>
                    </div>

                     <div class="panel-body">

                     <% if(editor_button) { %>

                          <form method="post" action="<%=request.getContextPath()%>/tools/edit-communities">
                            <input type="hidden" name="community_id" value="<%= community.getID() %>" />
                            <input type="hidden" name="action" value="<%=EditCommunitiesServlet.START_EDIT_COMMUNITY%>" />
                            <input class="btn btn-default col-md-12" type="submit" value="<fmt:message key="jsp.general.edit.button"/>" />
                          </form>

                     <% } %>

                     <% if(add_button)
                        { %>

                          <form method="post" action="<%=request.getContextPath()%>/tools/collection-wizard">
                            <input type="hidden" name="community_id" value="<%= community.getID() %>" />
                            <input class="btn btn-default col-md-12" type="submit" value="<fmt:message key="jsp.community-home.create1.button"/>" />
                          </form>

                          <form method="post" action="<%=request.getContextPath()%>/tools/edit-communities">
                            <input type="hidden" name="action" value="<%= EditCommunitiesServlet.START_CREATE_COMMUNITY%>" />
                            <input type="hidden" name="parent_community_id" value="<%= community.getID() %>" />
                            <input class="btn btn-default col-md-12" type="submit" name="submit" value="<fmt:message key="jsp.community-home.create2.button"/>" />
                         </form>

                     <% } %>

                    <% if( editor_button )
                      { %>

                        <form method="post" action="<%=request.getContextPath()%>/mydspace">
                          <input type="hidden" name="community_id" value="<%= community.getID() %>" />
                          <input type="hidden" name="step" value="<%= MyDSpaceServlet.REQUEST_EXPORT_ARCHIVE %>" />
                          <input class="btn btn-default col-md-12" type="submit" value="<fmt:message key="jsp.mydspace.request.export.community"/>" />
                        </form>

                        <form method="post" action="<%=request.getContextPath()%>/mydspace">
                          <input type="hidden" name="community_id" value="<%= community.getID() %>" />
                          <input type="hidden" name="step" value="<%= MyDSpaceServlet.REQUEST_MIGRATE_ARCHIVE %>" />
                          <input class="btn btn-default col-md-12" type="submit" value="<fmt:message key="jsp.mydspace.request.export.migratecommunity"/>" />
                        </form>

                       <form method="post" action="<%=request.getContextPath()%>/dspace-admin/metadataexport">
                         <input type="hidden" name="handle" value="<%= community.getHandle() %>" />
                         <input class="btn btn-default col-md-12" type="submit" value="<fmt:message key="jsp.general.metadataexport.button"/>" />
                       </form>

                  <% } %>
              </div>
            </div> <!-- <div class="panel panel-warning">-->
            </dspace:sidebar>

      </div><%-- End Tag <div class="community-home-tab" id='tabs'> --%>

    <%-- </div> <%--End Tag <div class="col-md-9 community-home-main"> --%>

  <%
    } //if(editor_button || add_button)
  %>
</dspace:layout>
