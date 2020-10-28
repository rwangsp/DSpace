<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Home page JSP
  -
  - Attributes:
  -    communities - Community[] all communities in DSpace
  -    recent.submissions - RecetSubmissions
  --%>

<%@page import="org.dspace.core.factory.CoreServiceFactory"%>
<%@page import="org.dspace.core.service.NewsService"%>
<%@page import="org.dspace.content.service.CommunityService"%>
<%@page import="org.dspace.content.factory.ContentServiceFactory"%>
<%@page import="org.dspace.content.service.ItemService"%>
<%@page import="org.dspace.core.Utils"%>
<%@page import="org.dspace.content.Bitstream"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.dspace.core.I18nUtil" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.app.webui.components.RecentSubmissions" %>
<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.browse.ItemCounter" %>
<%@ page import="org.dspace.content.Item" %>
<%@ page import="org.dspace.services.ConfigurationService" %>
<%@ page import="org.dspace.services.factory.DSpaceServicesFactory" %>

<%
    List<Community> communities = (List<Community>) request.getAttribute("communities");

    Locale sessionLocale = UIUtil.getSessionLocale(request);
    Config.set(request.getSession(), Config.FMT_LOCALE, sessionLocale);
    NewsService newsService = CoreServiceFactory.getInstance().getNewsService();
    String topNews = newsService.readNewsFile(LocaleSupport.getLocalizedMessage(pageContext, "news-top.html"));
    String sideNews = newsService.readNewsFile(LocaleSupport.getLocalizedMessage(pageContext, "news-side.html"));

    ConfigurationService configurationService = DSpaceServicesFactory.getInstance().getConfigurationService();

    boolean feedEnabled = configurationService.getBooleanProperty("webui.feed.enable");
    String feedData = "NONE";
    if (feedEnabled)
    {
        // FeedData is expected to be a comma separated list
        String[] formats = configurationService.getArrayProperty("webui.feed.formats");
        String allFormats = StringUtils.join(formats, ",");
        feedData = "ALL:" + allFormats;
    }

    ItemCounter ic = new ItemCounter(UIUtil.obtainContext(request));

    RecentSubmissions submissions = (RecentSubmissions) request.getAttribute("recent.submissions");
    ItemService itemService = ContentServiceFactory.getInstance().getItemService();
    CommunityService communityService = ContentServiceFactory.getInstance().getCommunityService();
%>

<dspace:layout style="home" locbar="nolink" titlekey="jsp.home.title" feedData="<%= feedData %>">

<main id="content" role="main">

<div class="facets-container">

  <div class="row" id="homepage-facets">

  	<div class="col-md-6" style="width:100%;">

        <h2 class="facets home discovery-icon" style="text-align:center; font-size:210%;">
      		<img src="image/discover.jpg" alt="discover" style="height:30px; opacity: .5">
      	</h2>

        <%-- <%@ include file="discovery/homepage-facets.jsp" %> --%>

        <div id="recent_submissions" class="facet facet-home col-md-12">

          <h3 class="facetName">Recent submissions</h3>
            <ul class="list-group">
        <%

          // Retrieve recent submissions
          if (submissions != null && submissions.count() > 0)
          {
              boolean first = true;

              for (Item item : submissions.getRecentSubmissions()){

                  String displayTitle = itemService.getMetadataFirstValue(item, "dc", "title", null, Item.ANY);
                  String itemHandle = item.getHandle();

                  if (displayTitle == null)
      		        {
      		        	   displayTitle = "Untitled";
      		        }
                  //Display the title and handle in a ul/li/a tags
                  %>
                  <li class="list-group-item">
                    <a href="<%= request.getContextPath() %>/handle/<%=item.getHandle() %>">
                      <%= Utils.addEntities(StringUtils.abbreviate(displayTitle, 500)) %>
                    </a>
                  </li>
                  <%
              }//for (Item item : submissions.getRecentSubmissions()){

          }//(submissions != null && submissions.count() > 0)

        %>
            </ul> <!--<ul class="list-group">-->
        </div>

        <div class="facet facet-home col-md-12">

          <h3 class='facetName'>Featured collections</h3>

            <ul class='list-group'>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/9944">
                  U of T Theses and Dissertations
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/80309">
                  U of T Policy Reports Collection
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/67548">
                  Canadian Science Publishing Journals
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/70607">
                  The Sophie Lucyk Virtual Library
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/9948">
                  Faculty of Applied Science and Engineering
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/16827">
                  Faculty of Arts and Science
                </a>
              </li>
          </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/75711">
                  Faculty of Law
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/364">
                  Ontario Institute for Studies in Education (OISE)
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/3044">
                  University of Toronto Mississauga (UTM)
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/1">
                  University of Toronto Scarborough (UTSC)
                </a>
              </li>
              <li class='list-group-item'>
                <a href="<%= request.getContextPath() %>/handle/1807/73266">
                  University of Toronto Libraries Undergraduate Research Prize
                </a>
              </li>
            </ul>

        </div><!--<div class="facet facet-home col-md-12">-->

    </div> <!--<div class="col-md-6" style="width:100%;">-->

  </div> <!--<div class="row" id="homepage-facets">-->

</div> <!--<div class="facets-container">-->

</main> <!--main div-->







</dspace:layout>
