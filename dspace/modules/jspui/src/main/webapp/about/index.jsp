<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - About page JSP
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<dspace:layout style='about' locbar="nolink" titlekey="jsp.about.title" >

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/about.css" type="text/css" />

<main id="about-page">

<h1>About TSpace</h1>
<p>TSpace is a free and secure research repository established by University of Toronto Libraries to disseminate and preserve the scholarly record of the University of Toronto community, including faculty and graduate student research. All items in TSpace are <a href="http://onesearch.library.utoronto.ca/copyright/open-access">openly accessible</a>, either immediately or after publisher's embargo period.</p>

<h2>Why submit to TSpace?</h2>
<ul>
    <li>Openly accessible scholarly work and research is read and cited more often than work not freely available on the web <a href="http://eprints.soton.ac.uk/268516/2/Citation_advantage_paper.pdf">(Swan, 2010)</a>.</li>
    <li>Work submitted to TSpace has priority search engine indexing <a href="https://wiki.duraspace.org/display/DSDOC4x/Search+Engine+Optimization">(Donohue, 2014)</a>, resulting in higher search engine rankings than items posted on departmental or personal websites.</li>
    <li>TSpace uses permanent identifiers&mdash;URLs that do not change&mdash;ensuring links to your submitted material always work. We also ensure that every file you upload does not degrade or change over time.</li>
    <li>Meet your funding agency's requirements&mdash;if you receive funding from CIHR, NSERC, or SSHRC, you can comply with the new <a href="http://www.science.gc.ca/eic/site/063.nsf/eng/h_F6765465.html">Tri-Agency Open Access Policy</a> in effect May 1, 2015 by depositing your publication to TSpace. To learn more about the new policy and ways to comply, visit our <a href="http://onesearch.library.utoronto.ca/triagencyopenaccesspolicy">policy's about page</a> or contact <a href="mailto:open.access@library.utoronto.ca">open access support</a>.</li>
</ul>
    
<h2>Who can participate?</h2>
<p>TSpace accepts submissions the University of Toronto faculty, staff, and students with faculty sponsorship. As a part of the <a href="http://www.carl-abrc.ca/advancing-research/institutional-repositories/adoptive-repositories/">CARL Adoptive Repositories Program</a>, TSpace also accepts submissions from Canadian researchers whose institutions do not have their own repositories.</p>
    
<h2>Copyright and your research</h2>
<p>When you upload your work to TSpace, you retain copyright over it and grant the Library an universal non-exclusive license to distribute and preserve. Our <a href="https://onesearch.library.utoronto.ca/copyright/home">Scholarly Communications and Copyright Office</a> is there to answer your questions on copyright and author rights.</p>
    
<h2>How to get started</h2>
<p>To start publicizing and preserving your research, follow the steps outlined in our <a href="https://tspace.library.utoronto.ca/help/firsttimeusers.jsp">getting started guide</a> or <a href="mailto:tspace@library.utoronto.ca">contact us</a>.</p>

<h2>Theses and dissertations</h2>
<p>TSpace has full-text theses and dissertations from 1992 to present. Since November 2009, all graduate students at the University of Toronto are required to submit their theses or dissertations to TSpace. If you are a graduate student looking to deposit your thesis, read the <a href="https://tspace.library.utoronto.ca/help/index.jsp#collapse1300">graduate student help section</a>.</p>
    
<h2>Ask us</h2>
<p>Please <a href="mailto:tspace@library.utoronto.ca">contact us</a> with any questions or comments.</p>
    
</main>

</dspace:layout>
