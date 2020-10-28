<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>
<dspace:layout locbar="nolink" titlekey="jsp.about.title" >

<main id='about-page'>    

   <h1>Format Support for TSpace</h1>
        <p>We wish to provide support for as many file formats as possible. 
              Over time, items stored in TSpace will be preserved as is, using 
              a combination of time-honored techniques for data management and 
              best practices for digital preservation. As for specific formats, 
              however, the proprietary nature of many file types makes it impossible 
              to make guarantees. Put simply, our policy for file formats is:</p>
            <ul>
              <li>Everything put in TSpace will be retrievable<br>
              </li>
              <li>We will recognize as many files' formats as possible<br>
              </li>
              <li>We will support as many known file formats as possible</li>
            </ul>
            <p>When a file is uploaded to TSpace, we assign it one of the following 
              categories:</p>
            <ul>
              <li><b>Supported:</b> we fully support the format</li>
              <li><b>Known:</b> we can recognize the format, but cannot guarantee 
                full support</li>
              <li><b>Unsupported:</b> we cannot recognize a format; these will 
                be listed as &quot;application/octet-stream,&quot; aka Unknown</li>
            </ul>
            <p>By &quot;support,&quot; we mean &quot;make usable in the future, 
              using whatever combination of techniques (such as migration, emulation, 
              etc.) is appropriate given the context of need.&quot; For supported 
              formats, we might choose to bulk-transform files from a current 
              format version to a future one, for instance. But we can't predict 
              which services will be necessary down the road, so we'll continually 
              monitor formats and techniques to ensure we can accomodate needs 
              as they arise.</p>
            <p>In the meantime, we can choose to &quot;support&quot; a format 
              if we can gather enough documentation to capture how the format 
              works. In particular, we collect file specifications, descriptions, 
              and code samples, and make those available in the <a href="#formats">TSpace 
              Format Reference Collection</a> below. Unfortunately, this means 
              that proprietary formats for which these materials are not publicly 
              available cannot be supported in TSpace. We will still preserve 
              these files, and in cases where those formats are native to tools 
              supported by U of T Information Systems, we will provide you with guidance 
              on converting your files into formats we do support. It is also 
              likely that for extremely popular but proprietary formats (such 
              as Microsoft .doc, .xls, and .ppt), we will be able to help make 
              files in those formats more useful in the future simply because 
              their prevalence makes it likely tools will be available. Even so, 
              we cannot guarantee this level of service without also having more 
              information about the formats, so we will still list these formats 
              as &quot;known,&quot; not &quot;supported.&quot;</p>
            <p><br>
              <h2>What to do if your format isn't recognized</h2>
            <p>We understand that there are always more formats to consider, and 
              we would appreciate your help in identifying and studying the suitability 
              of support for formats you care about. If we can't identify a format, 
              TSpace will record it as &quot;unknown,&quot; aka &quot;application/octet-stream,&quot; 
              but we would like to keep the percentage of supported format materials 
              in TSpace as high as possible. Don't hesitate to contact us if you 
              have any questions or concerns.<br>
            </p>
            <h2><a name="formats"></a>TSpace Format Reference Collection</h2>
            <p>In the table below, MIME type is the Multipurpose Internet Mail 
              Extensions (MIME) type identifier. Description is what most people 
              use as the name for the format. Extensions are typical file name 
              extensions (the part after the dot, e.g. the extension for &quot;index.html&quot; 
              is &quot;html&quot;). These are not case-sensitive in TSpace, so 
              either &quot;sample.XML&quot; or &quot;sample.xml&quot; will be 
              recognized as XML. Level is TSpace's support level for each format:</p>
            <ul>
              <li>Supported: we fully support the format</li>
              <li>Known: we can recognize the format, but cannot guarantee full 
                support</li>
              <li>Unsupported: we cannot recognize a format; these will be listed 
                as &quot;application/octet-stream,&quot; aka Unknown<br>
              </li>
            </ul>
            <table width="77%" border="1" align="center">
              <tr bgcolor="#CCCCCC"> 
                <td width="34%"> 
                  <div align="center"><b>Description</b></div>
                </td>
                <td width="27%">
                  <div align="center"><b>Extensions</b></div>
                </td>
                <td width="20%">
                  <div align="center"><b>MIME type</b></div>
                </td>
                <td width="19%">
                  <div align="center"><b>Level</b></div>
                </td>
              </tr>
  <TR>
    <TH align=left>Description</TH>
    <TH align=left>Extensions</TH>
 <TH align=left>MIME type</TH>
<TH align=left>Level</TH></TR>
  <TR>
       <TD>MARC</TD>
    <TD>marc, mrc</TD>
 <TD>application/marc</TD>
<TD>supported</TD>
              </TR>
  <TR>
        <TD>Mathematica</TD>
    <TD>ma</TD>
<TD>application/mathematica</TD>
<TD>known</TD>
              </TR>
  <TR>
        <TD>Microsoft Word</TD>
    <TD>doc</TD>
<TD>application/msword</TD>
<TD>known</TD>
              </TR>
  <TR>
       <TD>Unknown</TD>
    <TD>(anything not listed)</TD>
 <TD>application/octet-stream</TD>
<TD>unsupported</TD>
              </TR>
  <TR>
       <TD>Adobe PDF</TD>
    <TD>pdf</TD>
 <TD>application/pdf</TD>
<TD>supported</TD>
              </TR>
  <TR>
      <TD>Postscript</TD>
    <TD>ps, eps, ai</TD>
  <TD>application/postscript</TD>
<TD>supported</TD>
              </TR>
  <TR>
     <TD>SGML</TD>
    <TD>sgm, sgml</TD>
   <TD>application/sgml</TD>
<TD>known</TD>
              </TR>
  <TR>
        <TD>Microsoft Excel</TD>
    <TD>xls</TD>
<TD>application/vnd.ms-excel</TD>
<TD>known</TD>
              </TR>
  <TR>
      <TD>Microsoft Powerpoint</TD>
    <TD>ppt</TD>
  <TD>application/vnd.ms-powerpint</TD>
<TD>known</TD>
              </TR>
  <TR>
       <TD>Microsoft Project</TD>
    <TD>mpp, mpx, mpd</TD>
 <TD>application/vnd.ms-project</TD>
<TD>known</TD></TR>
  <TR>
     <TD>Microsoft Visio</TD>
    <TD>vsd</TD>
   <TD>application/vnd.visio</TD>
<TD>known</TD></TR>
  <TR>
     <TD>WordPerfect</TD>
    <TD>wpd</TD>
   <TD>application/wordperfect5.1</TD>
<TD>known</TD></TR>
  <TR>
    <TD>TeXdvi</TD>
    <TD>dvi</TD>
    <TD>application/x-dvi</TD>
<TD>known</TD></TR>
  <TR>
     <TD>FMP3</TD>
    <TD>fm</TD>
   <TD>application/x-filemaker</TD>
<TD>known</TD></TR>
  <TR>
      <TD>LateX</TD>
    <TD>latex</TD>
  <TD>application/x-latex</TD>
<TD>known</TD></TR>
  <TR>
       <TD>Photoshop</TD>
    <TD>psd, pdd</TD>
 <TD>application/x-photoshop</TD>
<TD>known</TD>
              </TR>
  <TR>
       <TD>TeX</TD>
    <TD>tex</TD>
 <TD>application/x-tex</TD>
<TD>known</TD>
              </TR>
  <TR>
      <TD>AIFF</TD>
    <TD>aiff, aif, aifc</TD>
  <TD>audio/x-aiff</TD>
<TD>supported</TD>
              </TR>
  <TR>
      <TD>audio/basic</TD>
    <TD>au, snd</TD>
  <TD>audio/basic</TD>
<TD>known</TD>
              </TR>
  <TR>
       <TD>MPEG Audio</TD>
    <TD>mpa, abs, mpeg</TD>
 <TD>audio/x-mpeg</TD>
<TD>known</TD>
              </TR>
  <TR>
      <TD height=30>RealAudio</TD>
    <TD height=30>ra, ram</TD>
  <TD height=30>audio/x-pn-realaudio</TD>
<TD height=30>known</TD>
              </TR>
  <TR>
        <TD>WAV</TD>
    <TD>wav</TD>
<TD>audio/x-wav</TD>
<TD>known</TD>
              </TR>
  <TR>
      <TD>GIF</TD>
    <TD>gif</TD>
  <TD>image/gif</TD>
<TD>supported</TD>
              </TR>
  <TR>
      <TD>JPEG</TD>
    <TD>jpeg, jpg</TD>
  <TD>image/jpeg</TD>
<TD>supported</TD>
              </TR>
  <TR>
      <TD>PNG</TD>
    <TD>png</TD>
  <TD>image/png</TD>
<TD>supported</TD>
              </TR>
  <TR>
       <TD>TIFF</TD>
    <TD>tiff, tif</TD>
 <TD>image/tiff</TD>
<TD>supported</TD>
              </TR>
  <TR>
      <TD>BMP</TD>
    <TD>bmp</TD>
  <TD>image/x-ms-bmp</TD>
<TD>known</TD>
              </TR>
  <TR>
      <TD>Photo CD</TD>
    <TD>pcd</TD>
  <TD>image/x-photo-cd</TD>
<TD>known</TD>
              </TR>
  <TR>
     <TD>HTML</TD>
    <TD>html, htm</TD>
   <TD>text/html</TD>
<TD>supported</TD>
              </TR>
  <TR>
       <TD>Text</TD>
    <TD>txt</TD>
 <TD>text/plain</TD>
<TD>supported</TD>
              </TR>
  <TR>
      <TD>Rich Text Format</TD>
    <TD>rtf</TD>
  <TD>text/richtext</TD>
<TD>supported</TD>
              </TR>
  <TR>
        <TD>XML</TD>
    <TD>xml</TD>
<TD>text/xml</TD>
<TD>supported</TD>
              </TR>
  <TR>
     <TD>MPEG</TD>
    <TD>mpeg, mpg, mpe</TD>
   <TD>video/mpeg</TD>
<TD>known</TD>
              </TR>
  <TR>
      <TD>Video Quicktime</TD>
    <TD>mov, qt</TD>
  <TD>video/quicktime</TD>
<TD>known</TD>
      </TR>
    </table>


</main>

</dspace:layout>
