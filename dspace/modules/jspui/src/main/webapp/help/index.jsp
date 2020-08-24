<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<dspace:layout style="about" locbar="nolink" titlekey="jsp.help.title" >

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/accordian-help.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous" style="null;">

<div id="help-search-box" style="display:none">

    <input type="text" id="term" class='form-control' placeholder="Search within help"  aria-label="search help" />

    <button type="button" id="find" class="btn btn-success" value="Go" aria-label="find" >
        <span class="glyphicon glyphicon-search"></span>
    </button>

    <button type="button" id="reset" class="btn btn-success" aria-label="reset" style="display:none">
        Reset
    </button>

</div>
<input type="button" value="Search within help" id="help-search-box-initial"/>

<!--
<div id="labels">
    <span id="current"></span>
    <span id="count"></span>
</div>
-->

<div class="accordion" id="accordion2">

        <h2>Getting Started</h2>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse10" name="registering" id="registering">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Registering and logging in to TSpace
                </h3>
            </div>
            </a>
            <div id="collapse10" class="accordion-body collapse">
                <div class="panel-body">
                    <p>TSpace registration is needed to deposit materials, subscribe to collections or perform administrative tasks. You do not need to register in order to access and download our open access materials.</p>
                    <p>Click <a href="https://tspace.library.utoronto.ca/mydspace" name="login" id="login">'Login'</a> at the top-right of any TSpace page to go to the login/register page.</p>
        <ul>
            <li>If you have a UTORid, please log in/register using the top button.</li>
            <li>If you do not have a UTORid, please log in/register using the bottom button.</li>
        </ul>
        <p>Upon registration you will be able to log into TSpace and
<a href="/help/index.jsp?refresh=true#collapse2100" name="subscribe to collections" id="subscribe to collections">subscribe to collections</a>. To obtain <strong>authorization to deposit your research</strong>, please <a href="/help/index.jsp?refresh=true#collapse2200" name="contact tspace staff">contact TSpace staff</a> with your affiliation and a brief description of the materials you would like to submit.</p>

                </div>
            </div>
        </div>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse20" name="establish new community or collection">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Establishing a new community or collection
                </h3>
            </div>
            </a>
            <div id="collapse20" class="accordion-body collapse">
                <div class="panel-body">
                    <p>Communities, sub-communities and collections correspond to the University of Toronto faculties, departments, centres, etc. Designated community/collection administrators can establish their submission workflows, content policies and authorizations within general <a href="/about/collectionpolicies.jsp" name="collection policies">TSpace Repository Policies and Guidelines</a>.</p>
    <p>If you are interested in establishing a new community, please consult the <a href="/about/collectionpolicies.jsp#adminResponsibilities" name="responsibilities and rights of community administrator">Responsibilities and Rights of Community Administrator(s)</a> and <a href="/help/index.jsp?refresh=true#collapse2200">contact us</a> with details of your proposed community.</p>
    <p>TSpace staff will create a new community according to your specifications, provide your designated community administrator(s) with authorization and training on how to perform administrative tasks.</p>
                   </div>
            </div>
        </div>


        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse30" name="deciding what">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Deciding what to deposit
                </h3>
            </div>
            </a>
            <div id="collapse30" class="accordion-body collapse">
                <div class="panel-body">
                    <p>TSpace has certain criteria for accepting submissions - please consult the <a href ="/about/collectionpolicies.jsp#content_guidelines" name="content guidelines">Content Guidelines</a> and <a href="/about/collectionpolicies.jsp#formats" name="format support">Format Support</a> sections of TSpace Repository Policies and Guidelines or <a href="/help/index.jsp?refresh=true#collapse2200" name="email us">email us</a> if you have questions.</p>
                       </div>
            </div>
        </div>

        <h2>Preparing materials for submission</h2>


        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse40" name="checking and obtaining permissions">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Checking and obtaining permissions to deposit previously published materials (video guide)
                </h3>
            </div>
            </a>
            <div id="collapse40" class="accordion-body collapse">
                <div class="panel-body">
                   <p>If your item was previously published, e.g. an article or a book, you may have signed over copyright to your publisher. Prior to uploading a copy to TSpace, you need to determine whether your publisher permits self-archiving and which version of the paper you can deposit. Follow these steps to verify/obtain the permission:</p>
<ul>
<li>Check the copyright agreement you signed when your article/book was published.</li>
<li>If your item was published in a journal, check the <a href="http://sherpa.ac.uk/romeo/index.php" name="SHERPA/RoMEO">SHERPA/RoMEO website</a> that contains self-archiving policies for most journals. <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">Contact us</a> if you need help interpreting these policies.</li>
<li>Find the permissions or copyright email address from the publisher's website, then contact the publisher to request self-archiving permission. Feel free to adapt these <a href="http://hdl.handle.net/1807/68611" name="request templates">request templates</a> to your needs.</li>
</ul>
<p>For a detailed walk through watch this <strong class="fas fa-video">&nbsp;</strong> <a href ="https://play.library.utoronto.ca/wwGvzvTEqB7Z" name="video tutorial to check publisher permissions"> video tutorial on how to check publisher permissions</a>.</p>
<!-- <center><a href="https://play.library.utoronto.ca/wwGvzvTEqB7Z"><img src="/image/tspacevideo.png" alt="TSpace permission checking video" width="600" height="160"></a></center>-->
<!--<iframe style='width:100%;min-height:30em' src='https://play.library.utoronto.ca/embed/wwGvzvTEqB7Z' frameborder='0' allowfullscreen></iframe>-->
                       </div>
            </div>
        </div>


<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse50" name="identifying and location version">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Identifying and locating the version of a paper permitted for deposit
                </h3>
            </div>
            </a>
            <div id="collapse50" class="accordion-body collapse">
                <div class="panel-body">

<p>Some publishers do not permit the deposit of the final published paper in a repository. However they may allow the deposit of a <strong>submitted manuscript</strong> (version before peer review) or an <strong>accepted manuscript</strong> (version after peer review and changes made by the author). Consult this <a href="http://hdl.handle.net/1807/72484" name="consult this guide">Published Paper Versions guide</a> for more detailed definitions of different versions and frequently asked questions.</p>
<p>Please note that to comply with the <a href="https://onesearch.library.utoronto.ca/copyright/funding-policy-cihr-nserc-and-sshrc" name="tri-agency open access policy">Tri-Agency Open Access Policy</a>, you need to deposit an accepted manuscript (post-print) where final version cannot be self-archived.</p>
<p>If you cannot locate your accepted manuscript, you can try requesting a copy from the editorial team of the journal in which you published.</p>
                       </div>
            </div>
        </div>



<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse60" name="formatting your document">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Formatting your document before upload
                </h3>
            </div>
            </a>
            <div id="collapse60" class="accordion-body collapse">
                <div class="panel-body">

<p>To make sure your document is properly cited, include the necessary identifying information, such as title, author name(s) and publication details on the front page. When uploading a manuscript, you can use the front page or add a coversheet to include citation and link (DOI) to the final published version as well as copyright/licensing information as appropriate and required by the publisher. <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">Contact us</a> for coversheet templates.</p>
<p>We recommend <strong>converting text documents to PDF prior to upload</strong>. To learn more about the other supported formats, see the <a href="/about/collectionpolicies.jsp#formats" name="format support section">Format Support section</a> of TSpace Repository Policies and Guidelines.</p>
                       </div>
            </div>
        </div>

        <h2>Submitting research to TSpace</h2>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse70" name="starting a new submission">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Starting a new submission (video guides)
                </h3>


            </div>
            </a>
            <div id="collapse70" class="accordion-body collapse">
                <div class="panel-body">

<ol>
<li>Once logged in, click on the <strong>Start a New Submission</strong> button to begin the submission process.</li>
<img src="/image/startsubmission.png" alt="Start a new submission button" width="185" height="40">

<li> You will be presented with 3 submission options/tabs: </li>


                     <div class="panel panel-default">

                         <div class="accordion" id="accordion3">

                             <div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse71" name="manual submission">
                                        Option 1 - Manual submission (video guide)
                                     </a>
                                 </h4>
                             </div>
                             <div id="collapse71" class="accordion-body collapse">
                                 <div class="panel-body">
                                     <p>This option should be used to manually fill out descriptive information (metadata) about your item. If the item has a DOI, PubMed ID or arXiv ID, start by looking it up via Options 2 or 3 to see if its metadata can be imported.</p>
<p>For a detailed walkthrough watch this <strong class="fas fa-video">&nbsp;</strong> <a href ="https://play.library.utoronto.ca/keJ6HLPZH4Z3" name="video tutorial on submit"> video tutorial on how to submit items to TSpace</a></p>
<!--<iframe style='width:100%;min-height:30em' src='https://play.library.utoronto.ca/embed/keJ6HLPZH4Z3' frameborder='0' allowfullscreen></iframe>-->
<p>Choose a collection from the drop down menu and follow the steps in <a href="/help/index.jsp?refresh=true#collapse90" name="filling out submission form">Filling out submission form</a> section.</p>

<img src="/image/manualsubmission.png" alt="Manual submission collection selection" width="934" height="179">

<p>If you are not seeing a collection you would like to submit to, <a href="/help/index.jsp?refresh=true#collapse2200" name=" contact us">contact us</a>.</p>
                                 </div>
                             </div>

                             <div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse72">
                                        Option 2 - Search by Identifier: DOI, PubMed ID, arXiv ID (video guide)
                                     </a>
                                 </h4>
                             </div>
                             <div id="collapse72" class="accordion-body collapse">
                                 <div class="panel-body">
                                     <p>For a detailed walkthrough watch this <strong class="fas fa-video">&nbsp;</strong> <a href ="https://play.library.utoronto.ca/gZEU8I456cMv" name="video tutorial"> video tutorial</a></p>
<!--<iframe style='width:100%;min-height:30em' src='https://play.library.utoronto.ca/embed/gZEU8I456cMv' frameborder='0' allowfullscreen></iframe>-->
                                     <p>Look up and import metadata about a previously published item that was assigned DOI, PubMed ID or arXiv ID. Enter the identifier (DOI preferred) and hit 'Search'.</p>

<img src="/image/doi2.png" alt="DOI lookup" width="721" height="123">
<p>Review the results and click on <strong>'See details & import the record'</strong> to check the information that will be pre-filled upon submission.To start a submission, select a collection from the drop-down at the bottom of the page, click <strong>'Fill data and start submission'</strong> and follow the steps in <a href="/help/index.jsp?refresh=true#collapse90" name="filling out submission form">Filling out submission form</a> section.</p>
<p>If you do not receive relevant results or choose not to import the data, close the preview and click <strong>'Manual submission</strong>' at the bottom. If you are not seeing a collection you would like to submit to, <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">contact us</a>.</p>
 </div>
 </div>

<div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse73" name="free search">
                                        Option 3 - Free Search
                                     </a>
                                 </h4>
                             </div>
                             <div id="collapse73" class="accordion-body collapse">
                                 <div class="panel-body">
                                     <p>Look up and import metadata about a previously published item using its title, author and year. Fill out the <strong>title, year, and author</strong> (more information helps get relevant results) and hit 'Search'.</p>

<img src="/image/freesearch.png" alt="Free search" width="907" height="307">
<p>Review the results and select the best fit by clicking on <strong>'See details & import the record'</strong>. To start a submission, select a collection from the drop-down at the bottom of the page, click <strong>'Fill data and start submission'</strong> and follow the steps in <a href="/help/index.jsp?refresh=true#collapse90" name="filling out submission form">Filling out submission form</a> section.</p>
<p>If you do not receive relevant results or choose not to import the data, close the preview and click <strong>'Manual submission'</strong> at the bottom. If you are not seeing a collection you would like to submit to, <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">contact us</a>.</p>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse90" name="fill out submission form">
            <div class="panel-heading">
                <h3 class="panel-title">
                       Filling out submission form
                </h3>


            </div>
            </a>
            <div id="collapse90" class="accordion-body collapse">
                <div class="panel-body">

<p><strong>Describe your item</strong> by completing the web form. This information makes your item findable through search engines. If you used metadata lookup, some of these fields may already be pre-filled and can be modified.</p>
<p><strong>Submission Progress Bar</strong> at the top of the Submit page marks your progress as you move through the submission. You can also use these buttons to move back and forth within the submission without losing your data.</p>
<img src="/image/progressbar2.png" alt="Progress bar" width="714" height="40" />

<p><strong>Save your progress and resume later</strong> any time by clicking 'Cancel/Save' button at the bottom of the page. You will be able to access your unfinished submission from <a href="https://tspace.library.utoronto.ca/mydspace" name="my tspace workspace">My TSpace workspace</a>.</p>

            <div class="panel panel-default">

                         <div class="accordion" id="accordion3">

            <div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse91" name="describe this item">
                                        Submit: Describe this Item - page 1
                                     </a>
                                 </h4>
                             </div>
                             <div id="collapse91" class="accordion-body collapse">
                                 <div class="panel-body">

    <p><strong>AUTHORS</strong> - An author can be a person, organization or service responsible for creating or contributing to the content of the item.</p>

    <img src="/image/authors.png" alt="Author submit" width="1115" height="48" />

<p> Click the 'Add More' button to add as many authors as needed.</p>
<p>If the author is an organization, use the last name input box for the organization name.</p>

<hr/>

   <p><strong> TITLE </strong>- All TSpace items must have a title! Enter the full and proper name by which this item should be known.
    <img src="/image/title.png" alt="title submit" width="945" height="51" />

<hr/>

   <p><strong>OTHER TITLES</strong> - Use the alternative title field only if the item contains abbreviations, translations, acronyms, etc.</p>
    <img src="/image/othertitles.png" alt="Other title" width="1115" height="50" />

<hr/>

   <p><strong>DATE OF ISSUE</strong> - If your item was previously published, enter the date of official publication. If you don't know the day or month, fill out the year only.</p>
    <p>If TSpace is the first means of distribution of this item, enter the date of submission</p>
    <img src="/image/dateofissue.png" alt="date of issue" width="945" height="48" />

<hr/>
<p><strong>PUBLISHER</strong> - If your item was previously published, such as a journal article or a book, enter the name of the publisher. Otherwise leave blank.<p>
 <img src="/image/publisher.png" alt="Publisher" width="815" height="45" />
<hr/>
<p><strong>JOURNAL TITLE</strong> - If your article was previously published in a journal, enter the name of the journal. Otherwise leave blank.<p>
 <img src="/image/journaltitle.png" alt="Journal title" width="815" height="45" />
<hr/>

    <p><strong>CITATION</strong> - Enter full citation information in your prefered citation style. For detailed information on citation practices and style guide please refer to <a href="http://guides.library.utoronto.ca/c.php?g=251103&p=1741147" name="libguide">UTL LibGuide on Citing Sources</a>.</p>

<img src="/image/citation.png" alt="Article citation" width="815" height="104" />

<hr/>

   <p><strong> IDENTIFIERS</strong> - Where available, enter the number or code that identifies this item in other systems, such as DOI (articles/datasets), ISSN (journals), ISBN (books).
<p>Entering journal's ISSN will allow you to view <a href="/help/index.jsp?refresh=true#collapse40" name="journal self-archiving policies">journal's self-archiving policies</a> in the file upload step.</p>
<img src="/image/issn.png" alt="ISSN" width="815" height="45" />

<hr/>

   <p><strong>TYPE</strong> - Select the type of work that best fits your item. If needed, you can hold down the 'Ctrl' key and select more than one type from the list.</p>
    <img src="/image/itemtype.png" alt="Item type" width="828" height="141" />

<hr/>

    <p><strong>LANGUAGE</strong> - Select the language of the intellectual content of your item. If your item is not a text document and language is not applicable select 'N/A'.</p>
    <img src="/image/language.png" alt="language" width="956" height="45" />
                                 </div>
                             </div>


<div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#collapse92" name ="describe this item">
                                        Submit: Describe this Item - page 2                                    </a>
                                 </h4>
                             </div>
                             <div id="collapse92" class="accordion-body collapse">
                                 <div class="panel-body">
   <p><strong>SUBJECT KEYWORDS</strong> - Provide as many appropriate keywords and subject terms about your work as possible. More words enable greater searchability and visibility of your item. Use <strong>one input box per subject word or phrase</strong>. Capitalize terms only when necessary.</p>
<p>For more input boxes, click the 'Add More' button.</p>
   <img src="/image/subjectkeywords.png" alt="keywords" width="1119" height="50" />

<hr/>

    <p><strong>ABSTRACT</strong> - Add an abstract to make your work more accessible for searching and retrieving. TSpace does not place a length limit on abstracts.</p>

<hr/>

   <p><strong>SPONSORS</strong> - If your item is the product of funded research, use this box to provide information about the sponsor(s) or funding body and grant number where applicable.</p>
    <img src="/image/sponsors.png" alt="sponsors" width="953" height="102" />

<hr/>

   <p><strong>DESCRIPTION</strong> - Use the description box to add any other relevant or interesting information about your submission.</p>
                                 </div>
                             </div>
                              </div>
                              </div>
                              </div>
                              </div>
                              </div>

<div class="panel panel-default">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse100" name="embargo delayed release">
            <div class="panel-heading">
                <h3 class="panel-title">
                       Embargo / delayed release
                </h3>
            </div>
            </a>

  <div id="collapse100" class="accordion-body collapse">
                <div class="panel-body">
<p>If mandated by publisher policy, you can temporarily restrict access to your item by placing an <strong>embargo period</strong>. Click on the Embargo Date box for the calendar to appear and set the date on which the item will become public.</p>
 <img src="/image/embargo.png" alt="Embargo" width="985" height="300" />

<p>If you enter an embargo date, your item will remain searchable in the repository but will not become accessible until the release date you've selected.</p>
<p><strong>Leave the Embargo Date field blank</strong> if you want to make your item publicly accessible immediately upon submission.</p>
<p>You can use the <strong>Reason</strong> box to explain access restrictions; this information is not public.</p>
 </div>
            </div>
        </div>


 <div class="panel panel-default">

            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse200" name="uploading your files">
            <div class="panel-heading">
                <h3 class="panel-title">
                       Uploading your file(s)
                </h3>


            </div>
            </a>
            <div id="collapse200" class="accordion-body collapse">
                <div class="panel-body">

<p>Upload your file(s) by selecting the document(s) from your computer or dragging and dropping to the upload field. To learn more preparing your files see <a href="/help/index.jsp?refresh=true#collapse60" name="formatting your document">Formatting your document before upload</a>.</p>


<img src="/image/dragndrop.png" alt="Drag and drop file upload" width="995" height="215" />



                                         <div class="panel panel-default">

                         <div class="accordion" id="accordion3">

            <div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse201" name="publisher policy lookup">
                                        Publisher policy lookup (SHERPA/RoMEO database)
                                     </a>
                                 </h4>
                             </div>
                             <div id="collapse201" class="accordion-body collapse">
                                 <div class="panel-body">

<p>If you had the journal <strong>ISSN</strong> field filled out on <a href="/help/index.jsp?refresh=true#collapse91" name="start submission form">page 1</a> of the submission form, publisher's self-archiving policy will be displayed under the upload field as available from the <a href="http://sherpa.ac.uk/romeo/index.php" name="SHERPA RoMEO database">SHERPA/RoMEO database of policy permissions</a>.</p>

<p>Please verify that publisher's policy permits you to upload the version of the article you are submitting. For more information on publisher permissions, see <a href="/help/index.jsp?refresh=true#collapse40" name="preapring materials for submission">Preparing materials for submission</a> section of the Help page or <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">contact us</a>.</p>

<img src="/image/sherpa.png" alt="Sherpa Romeo lookup" width="813" height="279" />
<hr>
<p>Upon upload, you will be presented with a review screen where you can verify your upload and add more files.</p>
<img src="/image/fileuploaded.png" alt="File upload confirmation" width="989" height="391" />
</div>
</div>

<div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse202" name="file format support">
                                        File format support                                    </a>
                                 </h4>
                             </div>
                             <div id="collapse202" class="accordion-body collapse">
                                 <div class="panel-body">

<p>Where possible upload your <strong>text documents in PDF format</strong> to ensure that they are correctly displayed and preserved.</p>
<p><strong>File Format</strong> field will identify your document's format as <strong>'supported'</strong>, </strong>'known'</strong> or <strong>'unsupported'</strong>. In case of the latter, click on <strong>'unsupported'</strong> link and describe the format in the text box lower down on the page. Be sure to give the name of the application you used to create the file and the version of that application, e.g. 'Autodesk AutoCAD R20 for UNIX'. For more information on formats supported by TSpace see our <a href="/about/collectionpolicies.jsp#formats">Format Support</a> page.</p>
</div>
            </div>

<div class="panel-heading">
                                 <h4 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse203" name="checksums">
                                        Checksums                                    </a>
                                 </h4>
                             </div>
                             <div id="collapse203" class="accordion-body collapse">
                                 <div class="panel-body">

<p>Checksums are a way to <strong>verify that your file data was transmitted properly</strong>.</p>
<p>If you wish to verify the file using checksums, click <strong>'Show Checksums'</strong> on the upload review page. The TSpace-generated MD5 checksum number will be listed beside the file name for every file you have uploaded. Then, use a local program to generate your own checksum for these files and verify that your results match ours:</p>
<ul>
<li>For Windows machines, try using <a href="http://www.fourmilab.ch/md5/" name="md5">md5</a>, or md5sum, available via the textutils package in <a href="http://www.cygwin.com/" name="cygwin">Cygwin</a>.</li>
<li>On most UNIX-like systems (including Mac OS X), use md5. For instance, type 'md5 MYFILE' for every file you want to check; the summary should print on your screen.</li></ul>
<p>All of these utilities will need to be run from a command-line, or terminal, window. When you run the MD5 tool on your local copy of the file you're uploading, the entire digest printed out should be exactly equal to what TSpace reports.</p>
                          </div>
                             </div>
                              </div>
                              </div>
                              </div>
                              </div>
                              </div>





         <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse300">
            <div class="panel-heading">
                <h3 class="panel-title">
                                        Verifying your submission
                                 </h3>
                             </div>
		</a>
                             <div id="collapse300" class="accordion-body collapse">
                                 <div class="panel-body">

<p><strong>Verify submission</strong> screen allows you to check the contents of your submission before deposit. To correct or edit information about your item, click on the corresponding button on the right, or use the buttons in the progress bar at the top of the page to move back through the submission pages.</p>
<p>If you chose to place an <a href="/help/index.jsp?refresh=true#collapse100" name="embargo">embargo</a> on your submission, the release date will be indicated at the bottom of the form.</p>
<img src="/image/verify.png" alt="Verification" width="1000" height="112" />
                                </div>
                             </div>
</div>

                           <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse400" name="select a creative commons license">
            <div class="panel-heading">
                <h3 class="panel-title">
                                        Selecting a Creative Commons license
                                 </h3>
                             </div>
		</a>
                             <div id="collapse400" class="accordion-body collapse">
                                 <div class="panel-body">
<p>The Creative Commons offers non-exclusive licenses and you can optionally apply one to let others know how they can use, distribute, or adapt your work. <strong>To license a work, you must be its copyright holder or have express authorization from its copyright holder to do so. Remember that once assigned the license may not be revoked.</strong></p>
<ul>
  <li><strong>CC0</strong> allows copyright holder to waive all copyright to the extent possible under law.</li>
  <li><strong>Creative Commons licenses</strong> (with CC BY being the most open and CC BY-NC-ND the most restrictive) leave copyright with the copyright holder (author or publisher), but specify to others how they are allowed to use the work provided they give proper credit.</li></ul>
<p>This BCcampus video <a href="https://youtu.be/reVUkLGjiGg?list=PL50LJVchZ8-LWy5H2YWyQaljmuwltxTt5" name="creative commons licenses">Creative Commons Licenses for Non-Profit Organizations</a> provides a nice visual summary:</p>

<iframe width="560" height="315" title="creative commons licenses" src="https://www.youtube.com/embed/reVUkLGjiGg?list=PL50LJVchZ8-LWy5H2YWyQaljmuwltxTt5" frameborder="0" allowfullscreen style="text-align: center;"></iframe>

<p>For more information on copyright, licenses, and how to select a CC license that is best for you, see our <a href="http://hdl.handle.net/1807/68609" name="who holds copyright">Who Holds Copyright?</a> user guide, refer to the <a href="https://creativecommons.org/licenses/" name="creative commons website">Creative Commons website</a> or <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">contact us</a>.</p>

<p>To apply a license, select one from the drop-down menu, specify the permissions you are granting, and click ‘Next’.</p>
<ul>
<li><strong>If you are the copyright holder of the work</strong>, this step is optional. If you wish to omit a license, select <strong>‘No Creative Commons License’</strong>. In this case your item will be released with a standard statement <em>'Items in TSpace are protected by copyright, with all rights reserved, unless otherwise indicated.'</em></li>
<li><strong>When depositing a previously published work</strong>, make sure to select the specific license as/if required by the publisher. If you already know which license to assign, e.g. CC BY-NC-ND, use our <a href="http://hdl.handle.net/1807/69997" name="cc license quick selector tool">CC license quick selector tool</a> to help you make appropriate selections.</li></ul>
<p>A CC licensed item in TSpace will bear the license logo, such as:
<img src="/image/cc.png" alt="CC BY logo" width="88" height="31" /> </p>
                             </div>
                             </div>
</div>

                             <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse500" name="accepting the tspace non-exclusive license">
            <div class="panel-heading">
                <h3 class="panel-title">
                                        Accepting the TSpace non-exclusive license
                                 </h3>
                             </div>
		</a>
                             <div id="collapse500" class="accordion-body collapse">
                                 <div class="panel-body">
<p><strong>Your agreement to this non-exclusive license is required before your item can appear on TSpace</strong>.</p>
<p>By signing and submitting this license, you (the author(s) or copyright owner) grant to the University of Toronto the non-exclusive right to reproduce, translate (as defined in the license), and/or distribute your submission (including the abstract) worldwide in print and electronic format and in any medium, including but not limited to audio or video.</p>
<p>For more information on the TSpace non-exclusive license and <strong>to read the full text</strong> please refer to the <a href="/about/collectionpolicies.jsp#license" name="tspace policies and procedures">TSpace Policies and Procedures</a> page.</p>
<p>What happens next?</p>
<ul>
<li>Clicking <strong>'I Grant the License'</strong> will submit your work into the repository right away or send it for review to the collection editor if one was assigned. You will no longer be able to modify the descriptive information or the file you have uploaded. You will receive an email with a permanent URL (<a href="/help/index.jsp?refresh=true#collapse2520">a handle</a>) that can be used to cite and share your work.</li>
<li>Selecting <strong>'I Do Not Grant the License'</strong> will save your submission in your <a href="https://tspace.library.utoronto.ca/mydspace" name="my tspace">'My TSpace'</a> page, where you can later edit, remove or submit it by accepting the license.</li></ul>
</div>
                             </div>
</div>

   <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse600" name="modifying or withdrawing an item">
            <div class="panel-heading">
                <h3 class="panel-title">
                                        Modifying or withdrawing an item
                                 </h3>
                             </div>
		</a>
                             <div id="collapse600" class="accordion-body collapse">
                                 <div class="panel-body">

<p>Once a submission has been made public in the repository, all modifications and withdrawals are subject to the TSpace <a href="/about/collectionpolicies.jsp#withdrawal" name="withdrawal and modification policy">Withdrawal and Modification Policy</a>. If you need to make changes to the submission please <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">contact us</a>.</p>
 </div>
            </div>
        </div>

        <h2>Searching, browsing, and using TSpace materials</h2>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse700" name="tspace structure">
            <div class="panel-heading">
                <h3 class="panel-title">
                        TSpace structure
                </h3>
            </div>
            </a>
            <div id="collapse700" class="accordion-body collapse">
                <div class="panel-body">
     <p>TSpace contents are organized hierarchically around the University of Toronto structure into:</p>
    <ul>
        <li>Communities (e.g. faculties, schools, programs, etc.)</li>
        <li>Subcommunities or collections (e.g. departmental publications, outputs of a research group, etc.)</li>
        <li>Items (e.g. articles, theses, presentations, etc.)</li>
            </ul>

                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse800" name="browsing">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Browsing
                </h3>
            </div>
            </a>
            <div id="collapse800" class="accordion-body collapse">
                <div class="panel-body">

    <p><strong>Browsing allows you to go through a list of items in some specified order:</strong></p>
    <ul>
        <li><a href="https://tspace.library.utoronto.ca/community-list" name="by community/collection" >By Community/Collection</a> takes you through the communities in alphabetical order and allows you to see the subcommunities and collections within each community.</li>
        <li><a href="https://tspace.library.utoronto.ca/browse?type=title&starts_with=A" name="by title">By Title</a> allows you to move through an alphabetical list of all titles of items in TSpace.</li>
        <li><a href="https://tspace.library.utoronto.ca/browse?type=author&starts_with=A" name="by author">By Author</a> allows you to move through an alphabetical list of all authors of items in TSpace.</li>
        <li><a href="https://tspace.library.utoronto.ca/browse?type=subject&starts_with=A" name="by subject">By Subject</a> allows you to move through an alphabetical list of subject headings/keywords assigned to items in TSpace.</li>
        <li><a href="https://tspace.library.utoronto.ca/browse?type=dateissued&starts_with=A" name="by date">By Date </a>allows you to move through a list of all items in TSpace in reverse chronological order.</li>
    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse900" name="searching">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Searching
                </h3>
            </div>
            </a>
            <div id="collapse900" class="accordion-body collapse">
                <div class="panel-body">
    <p><strong>To search all of TSpace</strong>, use the search box in the navigation bar on top right.</p>
    <img src="/image/searchtspace.png" alt="Search Box" width="256" height="42" />
    <h4>Search Hints</h4>
    <h5>What is searched in the general keyword search</h5>
    <p>The word(s) you enter in the search box will be searched against the full-text, title, author, subject abstract, series, sponsor and identifier fields of each item's record. </p>
    <h5>What is not searched</h5>
    <p>The search engine ignores certain words that occur frequently in English, but do not add value to the search. These are: "a", "and", "are" , "as" , "at" , "be" , "but" , "by" , "for" , "if" , "in" , "into", "is" ,"it", "no" , "not" , "of" , "on" , "or" , "such", "the" , "to" , "was"</p>
    <h5>Truncation</h5>
    <p>Use an asterisk (*) after a word stem to get all hits having words starting
    with that root, for example: </p>
    <img src="/image/select_.png" alt="Select asterisk" width="256" height="43" />
    <h5>Stemming</h5>
    <p>The search engine automatically expands words with common endings to include plurals, past tenses, etc.</p>
    <h5>Phrase searching</h5>
    <p>To search using multiple words as a phrase, put quotation marks (&quot;) around the phrase.</p>
    <img src="/image/_organizationalchange_.png" alt="Organizational change in quotes" width="255" height="41" />
    <h5>Exact word match</h5>
    <p>Put a plus (+) sign before a word if it MUST appear in the search result. For instance, in the following search the word &quot;training&quot; is optional, but the word &quot;dog&quot; must be in the result. </p>
    <img src="/image/+dogtraining.png" alt="Plus dog training" width="255" height="42" />
    <h5>Eliminate items with unwanted words</h5>
    <p></p>Put a minus (-) sign before a word if it should not appear in the search results. Alternatively, you can use <strong>NOT</strong>. This can limit your search to eliminate unwanted hits. For instance, in the search</p>
    <img src="/image/training-cat.png" alt="Training minus cat" width="254" height="40" />
      &nbsp; or &nbsp; <img src="/image/trainingNOTcat.png" alt="" width="254" height="41" />
    <p>you will get items containing the word &quot;training&quot;, except those that also contain the word &quot;cat&quot;.</p>
    <h5>Boolean searching</h5>
    <p>The following Boolean operators can be used to combine terms. Note that they must be CAPITALIZED! </p>
    <p>Use:</p>
    <p><strong>AND</strong> to limit searches to find items containing all words or phrases combined with this operator, e.g.</p>
    <img src="/image/catsANDdogs.png" alt="Cats AND dogs" width="258" height="43" />
    <p><strong>OR</strong> to enlarge searches to find items containing any of the words or phrases surrounding this operator</p>
    <img src="/image/catsORdogs.png" alt="Cats OR dogs" width="254" height="40" />
    <p><strong>NOT</strong> to exclude items containing the word following this operator, e.g. </p>
    <img src="/image/trainingNOTcat.png" alt="Training NOT cat" width="254" height="41" />
    <p><b>Parentheses</b> ( ) to group search terms into sets, and operators can then be applied to the whole set, e.g.</p>
    <img src="/image/(catsORdogs)ANDpigs.png" alt="Cats OR dogs AND pigs" width="254" height="40" />
</div>
</div>
</div>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1000" name="advanced searching sorting and filtering">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Advanced searching, sorting and filtering
                </h3>
            </div>
            </a>
            <div id="collapse1000" class="accordion-body collapse">
                <div class="panel-body">

    <p>Advanced search and filter menu is available in the search results or by clicking the magnifying glass <img src="/image/magnglass.png" alt="Magnifying glass" width="47" height="43" />  next to the search box.</p>
    <p>You can restrict your search to a specific community by clicking on the arrow to the right of the top box. If you want your search to encompass all of TSpace, leave that box in the default 'All of TSpace' position.</p>
    <img src="/image/advsearchbiotech.png" alt="advanced search keyword biotechnology"  width="993" height="807" />
<p>Clicking the <strong>'Refine search'</strong> button allows you to further filter search results by title, author, subject, date issued, item type, and department (for theses only). You can also sort and order search results by the number of items, title, date, etc.</p>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1100" name="searching for theses and dissertations">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Searching for theses and dissertations
                </h3>
            </div>
            </a>
            <div id="collapse1100" class="accordion-body collapse">
                <div class="panel-body">
                    <p>TSpace has complete full text coverage of the <a href="https://tspace.library.utoronto.ca/handle/1807/9944" name="university of toronto theses">University of Toronto theses</a> from November 2009 onward when electronic thesis submission became part of graduation requirement. Many of the <a href="https://tspace.library.utoronto.ca/handle/1807/10445" name="older theses">older theses</a> are also available, although the coverage of earlier years is not complete.</p>
<p>Use 'Advanced Search' to restrict your search to the <strong>School of Graduate Studies</strong>. To limit your search to either <strong>Doctoral</strong> or <strong>Master</strong> thesis collection, click on the collection drop down again and make your selection. You can further filter within search results by department, title, author, subject, or date issued. </p>
                    <img src="/image/ETDadvsearch.png" alt="advanced search keyword mammography" width="993" height="561" />
                    <hr>

                    <p>If you are not finding a University of Toronto thesis in TSpace, try searching in other sources, such as:</p>
                    <ul>
                    <li><a href="http://onesearch.library.utoronto.ca/" name="university of uoronto libraries catalogue">University of Toronto Libraries catalogue</a></li>
                    <li><a href="http://www.bac-lac.gc.ca/eng/services/theses/Pages/theses-canada.aspx" name="theses CanadaPortal">Theses CanadaPortal</a></li>
                    <li><a href="http://myaccess.library.utoronto.ca/login?url=http://search.proquest.com/pqdtglobal/advanced?accountid=14771" name="ProQuest Theses and Dissertations Global">ProQuest Theses and Dissertations Global</a> (subscription database)</li></ul>
                    <p>For instructions on finding, borrowing, and producing theses, see the <a href="http://guides.library.utoronto.ca/theses" name="Theses & Dissertations">Theses & Dissertations</a> library libguide.</p>

                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1200" name="Citing TSpace items">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Citing TSpace items
                </h3>
            </div>
            </a>
            <div id="collapse1200" class="accordion-body collapse">
                <div class="panel-body">
                <p>Cite TSpace items in accordance with your preferred citation style and item type (e.g. article, book chapter, thesis, etc.). Refer to the <a href="http://guides.library.utoronto.ca/citing" name="Citing Sources / Create Your Bibliography">Citing Sources / Create Your Bibliography</a> libguide for more information.</p>
                    <p>For articles that were previously published in a journal, <strong>always cite the published version</strong>, so the author(s) will receive recognition through services that track citation counts, e.g. Scopus. If you need to cite the page number of a manuscript in TSpace because you cannot access the published version, then cite the TSpace version <strong>in addition to</strong> the published version.</p>
    <p>The following are examples of how to cite the two different versions.</p>
    <p><strong>Published version citation:</strong></p>
    <blockquote>Kontos, P. Rethinking sociability in long-term care: An embodied dimension of selfhood. Dementia: The International Journal of Social Research and Practice 2011; 11(3):324-346.</blockquote>
    <p><strong>TSpace version citation</strong> (manuscripts or previously unpublished materials):</p>
                    <blockquote>Kontos, P. Rethinking sociability in long-term care: An embodied dimension of selfhood. Dementia: TSpace. Available at http://hdl.handle.net/1807/72491</blockquote>
                   </div>
            </div>
            </div>

            <div class="panel panel-default">
<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1250">
<div class="panel-heading">
<h3 class="panel-title">
Citing theses found in TSpace
</h3>
</div>
</a>
<div id="collapse1250" class="accordion-body collapse">
<div class="panel-body">
<p>Cite TSpace items in accordance with your preferred citation style. Refer to the <a href="http://guides.library.utoronto.ca/citing" name="Citing Sources / Create Your Bibliography">Citing Sources / Create Your Bibliography</a> libguide for more information.</p>
<p>The following are some examples of how to cite theses found in TSpace:</p>
<p><strong>APA:</strong></p>
<blockquote>Tajdaran, K. (2015). Enhancement of Peripheral Nerve Regeneration with Controlled Release of Glial Cell Line-derived Neurotrophic Factor (GDNF) (Master’s Thesis, University of Toronto). Retrieved from http://hdl.handle.net/1807/74747</blockquote>
<p><strong>MLA:</strong></p>
<blockquote>Tajdaran, Kasra. “Enhancement of Peripheral Nerve Regeneration with Controlled Release of Glial Cell Line-derived Neurotrophic Factor (GDNF).” Master's Thesis, http://hdl.handle.net/1807/74747</blockquote>
<p><strong>Chicago:</strong></p>
<blockquote>Tajdaran, Kasra. “Enhancement of Peripheral Nerve Regeneration with Controlled Release of Glial Cell Line-derived Neurotrophic Factor (GDNF).” Master’s Thesis, University of Toronto, 2015. TSpace (http://hdl.handle.net/1807/74747)</blockquote>
</div>
</div>
        </div>


        <h2>Graduate students - submitting electronic theses and dissertations</h2>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1300" name="Producing and submitting your thesis">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Producing and submitting your thesis
                </h3>
            </div>
            </a>
            <div id="collapse1300" class="accordion-body collapse">
                <div class="panel-body">
                   <p>Since November 2009, all graduate students at the University of Toronto are required to submit their theses or dissertations in electronic format. The School of Graduate Studies manages the submission process for most departments and faculties. For detailed information on formatting and submitting your thesis and accompanying documents, see the <a href="http://www.sgs.utoronto.ca/currentstudents/Pages/Producing-Your-Thesis.aspx" name ="SGS website">SGS website</a> or contact the SGS directly.</p>
<p><strong>Please note that since 2015, all theses with the exception of TST are submitted to the <a href="http://www.etdadmin.com/toronto" name="SGS-managed online database">SGS-managed online database</a> from which they will be automatically transferred to TSpace upon release.</strong></p>
<p>Graduate students from the Toronto School of Theology should refer to the <a href="http://www.tst.edu/academic/thesis-submission-convocation-information" name="TST thesis submission guidelines">TST thesis submission guidelines</a> or contact the TST administrator directly.</p>
           </div>
            </div>
        </div>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1400">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Embargo / thesis restriction
                </h3>
            </div>
            </a>
            <div id="collapse1400" class="accordion-body collapse">
                <div class="panel-body">
                    <p>Theses can be temporarily embargoed / restricted of access by submitting an embargo request to School of Graduate Studies or Toronto School of Theology respectively. For more details, see the instructions on the <a href="http://www.sgs.utoronto.ca/currentstudents/Pages/Electronic-Thesis-Submission.aspx">SGS website</a> or <a href="http://www.tst.edu/academic/thesis-submission-convocation-information">TST website</a> or contact the respective school directly.</p>
     </div>
            </div>
        </div>
<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1500">
            <div class="panel-heading">
                <h3 class="panel-title">
                       Submitted thesis does not appear in TSpace
                </h3>
            </div>
            </a>
            <div id="collapse1500" class="accordion-body collapse">
                <div class="panel-body">
                   <p>For tips and resources on finding U of T theses and dissertations, see the <a href="/help/index.jsp?refresh=true#collapse1100">Searching for theses and dissertations</a> section of the help page.</p>

<p>New thesis submissions usually become available in TSpace approximately five to six weeks following your convocation unless you chose to restrict access. If it has been longer than that and your thesis still does not appear, please <a href="/help/index.jsp?refresh=true#collapse2200" name="contact the tspace team">contact the TSpace team</a> with the following information to help us investigate:</p>
<ul>
<li>your name</li>
<li>the title of your thesis</li>
<li>your degree and department</li>
<li>when you graduated</li>
<li>whether you had requested that access to the thesis be restricted</li></ul>
</div>
</div>
</div>

<div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1600" name="Contacts for thesis submissions and questions">
            <div class="panel-heading">
                <h3 class="panel-title">
                       Contacts for thesis submissions and questions
                </h3>
            </div>
            </a>
            <div id="collapse1600" class="accordion-body collapse">
                <div class="panel-body">
                    <p>With questions on thesis preparation, submissions, or embargo contact:</p>

<ul>
<li><a href="http://www.sgs.utoronto.ca/currentstudents/Pages/Producing-Your-Thesis.aspx" name="School of Graduate Studies - Doctoral or Master Office">School of Graduate Studies - Doctoral or Master Office</a></li>
<li><a href="http://www.tst.edu/academic/thesis-submission-convocation-information" name="Toronto School of Theology">Toronto School of Theology</a></li></ul>

                </div>
            </div>
        </div>

        <h2>Open access: Tri-Agency Policy compliance, promotion, resources</h2>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1700" name="  Tri-Agency Open Access Policy on Publications">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Tri-Agency Open Access Policy on Publications (CIHR, NSERC, and SSHRC grants)

                </h3>
            </div>
            </a>
            <div id="collapse1700" class="accordion-body collapse">
                <div class="panel-body">
                    <h4>What are the requirements of the new policy?</h4>
             <p>The new <a href="http://www.science.gc.ca/eic/site/063.nsf/eng/h_F6765465.html" name="Tri-Agency Open Access Policy">Tri-Agency Open Access Policy</a> applies to all grants awarded by <strong>NSERC or SSHRC from May 1, 2015</strong> and onward, and by <strong>CIHR from January 1, 2008</strong> and onward. It requires grant recipients to ensure that <strong>peer-reviewed journal publications</strong> arising from Agency-supported research are freely accessible <strong>within 12 months of publication.</strong></p>
             <hr>
                    <h4>How to comply with the new policy?</h4>
                    <h5>Option 1 - Deposit your work into an open access repository</h5>
                    <p>Publish your research in the journal of your choice, then deposit your final, peer-reviewed manuscript into an institutional or subject repository that will make the manuscript freely accessible. <strong class="fas fa-video">&nbsp;</strong> <a href="https://play.library.utoronto.ca/wwGvzvTEqB7Z">Ensure that your publisher permits self-archiving</a>.</p>
                    <p><strong>TSpace team currently offers assisted deposit for open access policy compliance - we will check permissions, process, and deposit your manuscripts on your behalf. See our <a href="https://tspace.library.utoronto.ca/help/firsttimeusers.jsp">Deposit your Research page</a> for details and steps to join.</strong></p>

                    <h5>Option 2 - Publish in an open access journal</h5>
                    <p>Publish your research in a journal that offers open access immediately or within 12 months of publication. The cost of publishing in open access journals is an eligible expense under the <a href="http://www.nserc-crsng.gc.ca/Professors-Professeurs/FinancialAdminGuide-GuideAdminFinancier/FundsUse-UtilisationSubventions_eng.asp">Use of Grant Funds</a>.</p>
                    <p>To find open access journals that are reputable and relevant to your area of research, consult the <a href="https://doaj.org/" name="doaj">Directory of Open Access Journals (DOAJ)</a> or contact <a href="https://onesearch.library.utoronto.ca/copyright/open-access">Scholarly Communications and Copyright Office</a> for a consultation.</p>
                    <hr>
                    <p>For more details about the policy and ways to comply see the library's page on the <a href="https://onesearch.library.utoronto.ca/copyright/funding-policy-cihr-nserc-and-sshrc" name="funding policy">Funding policy from CIHR, NSERC and SSHRC</a> and feel free to use and distribute our handy <a href="http://hdl.handle.net/1807/68613" name="Tri-Agency Policy">Tri-Agency Policy one pager</a>.</p>
                  </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1800" name="Why deposit research to TSpace">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Why deposit research to TSpace?
                </h3>
            </div>
            </a>
            <div id="collapse1800" class="accordion-body collapse">
                <div class="panel-body">
               <ul>
                <li>Openly accessible scholarly work and research is read and cited more often than work not freely available on the web (<a href="http://eprints.soton.ac.uk/268516/2/Citation_advantage_paper.pdf" name="swan paper">Swan, 2010</a>).</li>
<li>Work submitted to TSpace has priority search engine indexing (<a href="https://wiki.duraspace.org/display/DSDOC4x/Search+Engine+Optimization" name="donohue paper">Donohue, 2014</a>), resulting in higher search engine rankings than items posted on departmental or personal websites.</li>
<li>TSpace uses permanent URLs, <a href="/help/index.jsp?refresh=true#collapse2520" name="handles">handles</a> ensuring links to your submitted material always work. We also ensure that every file you upload does not degrade or change over time</li>
<li>TSpace deposits allow researchers to comply with the new <a href="/help/index.jsp?refresh=true#collapse1700" name="tri-agency open access policy">Tri-Agency Open Access Policy</a> in effect May 1, 2015</li>
            </ul>
                  <p>For more answers and common misconceptions about TSpace see our handy <a href="http://hdl.handle.net/1807/68612" name="tspace info series">TSpace Info Series: Reasons to Submit</a> guide.</p>
                     </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1900" name="advocacy resources and guides">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Advocacy resources and guides
                </h3>
            </div>
            </a>
            <div id="collapse1900" class="accordion-body collapse">
                <div class="panel-body">
                    <p><a href="http://hdl.handle.net/1807/68140" href="tspace information and user guides collection">TSpace Information and User Guides collection</a> has handous, submission checklist, templates for requesting publisher's permission, and other helpful ready-to-print materials created by the University of Toronto Libraries</p>
<p>Additionally, you can find a list of responses to faculty questions and concerns about institutional repositories in <a href="http://www.rsp.ac.uk/grow/advocacy/issues/" name="answers to common issues raised in advocacy">Answers to common issues raised in advocacy</a> by the <a href="http://www.rsp.ac.uk/">Repositories Support Project</a>.</p>
                </div>
            </div>
        </div>

        <h2>Managing your profile and subscriptions</h2>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2000" name="my tspace and profile edits">
            <div class="panel-heading">
                <h3 class="panel-title">
                        My TSpace and profile edits                </h3>
            </div>
            </a>
            <div id="collapse2000" class="accordion-body collapse">
                <div class="panel-body">
                    <p>'My TSpace' is a workspace page for each member with a TSpace account. To access 'My TSpace', <a href="https://tspace.library.utoronto.ca/mydspace" name="log in">log in</a> and click 'Manage' button at the top right corner.</p>
<p>Here you will find:</p>
    <ul>
        <li>Any of your own in-progress submissions</li>
        <li>Submissions which you are peer reviewing or editing</li>
        <li>A link to a list of your accepted TSpace submissions</li>
    </ul>
    <hr>
<p>To edit your profile, <a href="https://tspace.library.utoronto.ca/mydspace" name="log in">log in</a> and click 'Manage' button at the top right corner. Select 'Edit Profile' from the drop-down menu. Here you can change your name and password (for non-UTORid accounts).</p>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2100" name="subscriptions">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Subscriptions (email alerts)
                </h3>
            </div>
            </a>
            <div id="collapse2100" class="accordion-body collapse">
                <div class="panel-body">
                    <p>To <strong>receive daily email alerts about new items</strong> added to TSpace collections:</p>
    <ul>
        <li><a href="https://tspace.library.utoronto.ca/mydspace" name="log in">log in</a> or register</li>
        <li>Go to the TSpace Home page and click on the <a href="https://tspace.library.utoronto.ca/community-list" name="communities and collection">'Communities and Collections'</a> link</li>
        <li>Choose a collection and click on the 'Subscribe' button (repeat for other collections)</li>
    </ul>
    <p>To edit your subscriptions or unsubscribe:</p>
    <ul>
        <li><a href="https://tspace.library.utoronto.ca/mydspace" name="log in">log in</a></li>
        <li>Go to your 'My TSpace' page via the 'Manage' button at the top right corner</li>
        <li>Select 'Subscriptions' from the drop-down menu</li>
    </ul>
                </div>
            </div>
        </div>

        <h2>Further assistance and contacts</h2>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2200" name="contact us">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Contact us
                </h3>
            </div>
            </a>
            <div id="collapse2200" class="accordion-body collapse">
                <div class="panel-body">
                    <p>For help using TSpace, to submit your materials or establish a new collection across all 3 campuses, please <a href="mailto:tspace@library.utoronto.ca" name="contact the tspace team">contact the TSpace team</a>.</p>
<p>With questions on the Tri-Agency Open Access policy and compliance across all 3 campuses, please <a href="mailto:open.access@library.utoronto.ca" name="contact the open access team">contact the Open Access team</a>.</p>
<p>With questions on thesis preparation, submissions, or embargo contact:</p>

<ul>
<li><a href="http://www.sgs.utoronto.ca/currentstudents/Pages/Producing-Your-Thesis.aspx" name="school of graduate studies - doctoral or master office">School of Graduate Studies - Doctoral or Master Office</a></li>
<li><a href="http://www.tst.edu/academic/thesis-submission-convocation-information" name="toronto school of theology">Toronto School of Theology</a></li></ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2300" name="library resources guides and support">
            <div class="panel-heading">
                <h3 class="panel-title">
                        Library resources, guides, and support
                </h3>
            </div>
            </a>
            <div id="collapse2300" class="accordion-body collapse">
                <div class="panel-body">
                   <ul>
<li><a href="http://hdl.handle.net/1807/68140" name="tspace information and user guides collection">TSpace Information and User Guides collection</a> has handous, submission checklist, templates for requesting publisher's permission, and other helpful ready-to-print materials created by the University of Toronto Libraries</li>
<li><a href="https://onesearch.library.utoronto.ca/faculty-research" name="supporting faculty research">Supporting Faculty Research</a> page brings together library resources and contacts for faculty</li>
<li><a href="https://onesearch.library.utoronto.ca/copyright/home" name="Scholarly communications and copyright office">Scholarly Communications and Copyright Office</a> is available to answer your questions and provide consultation on author rights, copyright, open access policy compliance and more</li>
<li>Find and contact your faculty <a href="http://resource.library.utoronto.ca/liaison/index.html" name="liaison librarian">liaison librarian</a></li></ul>
                </div>
            </div>
        </div>

<h2 id="faq">Frequently Asked Questions</h2>


 <div class="panel panel-default">



                         <div class="accordion" id="accordion3">

                             <div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2410" name="submit my research to tspace" id="submit my research to tspace">
                                        How do I submit my research to TSpace?
                                     </a>
                                 </h3>
                             </div>
                             <div id="collapse2410" class="accordion-body collapse">
                                 <div class="panel-body">
<p>If you have never registered with or submitted to TSpace, see our <a href="https://tspace.library.utoronto.ca/help/firsttimeusers.jsp" name="deposit your research" id="deposit your research">Deposit your Research</a> page to get started.
For step-by-step guidance on preparing and uploading your research, see detailed instructions on our <a href="/help/index.jsp#collapse40" name="preparing materials for submission" id="preparing materials for submission">Preparing materials for submission</a> page or <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us for personalized consultation" id="contact us for personalized consultation">contact us</a> for personalized consultation and training.</p>
<p>If you need to comply with <a href="/help/index.jsp?refresh=true#collapse1700" name="tri-agency open access policy on publications" id="tri-agency open access policy">Tri-Agency Open Access Policy on Publications</a>, we can deposit materials on your behalf - for details and steps to follow see our <a href="https://tspace.library.utoronto.ca/help/firsttimeusers.jsp">Deposit your Research</a> page.</p>
 </div>
            </div>

<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2420" name="can tspace comply with open access policy" id="tspace comply with open access policy">
                                        Can TSpace help me comply with the Open Access Policy for CIHR, NSERC, or SSHRC grants?</a>
                                 </h3>
                             </div>
                             <div id="collapse2420" class="accordion-body collapse">
                                 <div class="panel-body">
<p>Yes! Details on how we can help you comply are in our <a href="/help/index.jsp?refresh=true#collapse1700" name="tri-agency open access policy on publications" id="tri-agency open access policy on publications">Tri-Agency Open Access Policy on Publications (CIHR, NSERC, and SSHRC grants)</a>.</p>
</div>
            </div>
<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2430" name="should I postpone deposit" id="postpone deposit">
                                        My paper can only be made available after an embargo period. Should I postpone deposit?                                    </a>
                                 </h3>
                             </div>
                             <div id="collapse2430" class="accordion-body collapse">
                                 <div class="panel-body">
<p>No, you can deposit right away and <a href="/help/index.jsp?refresh=true#collapse100" name="place embargo">place an embargo</a> during submission. You will be asked to indicate the date on which the item should become publicly available - this will happen automatically. If you would like to embargo an item that is currently public in TSpace, please <a href="/help/index.jsp?refresh=true#collapse2200">contact us</a>.</p>
</div>
            </div>
<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2440" name="submit for me" id="submit for me">
                                        Can someone submit for me?                                    </a>
                                 </h3>
                             </div>
                             <div id="collapse2440" class="accordion-body collapse">
                                 <div class="panel-body">
<p>Yes. Individual authors or communities may assign a mediator, such as an administrative assistant, departmental secretary or a student to carry out submissions on their behalf. We encourage the authors to familiarize themselves with conditions of the <a href="https://tspace.library.utoronto.ca/about/non-exclusivelicense.jsp">TSpace non-exclusive distribution license</a> that will be accepted on their behalf by the mediator during submission.</p>
<p>Additionally the TSpace team is currently offering assisted deposit service for <a href="/help/index.jsp?refresh=true#collapse1700" name="tri-agency open access policy">Tri-Agency Open Access Policy</a> compliance - see the our <a href="https://tspace.library.utoronto.ca/help/firsttimeusers.jsp">Deposit your Research</a> page for details and steps to follow.</p>

</div>
            </div>
<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2450" name="can I withdraw">
                                        Can I withdraw materials from TSpace?                                  </a>
                                 </h3>
                             </div>
                             <div id="collapse2450" class="accordion-body collapse">
                                 <div class="panel-body">
<p>TSpace is intended to be a permanent repository. Withdrawal requests are considered on a case by case basis in accordance with TSpace <a href="https://tspace.library.utoronto.ca/about/collectionpolicies.jsp#withdrawal" name="withdrawal and modification policy">Withdrawal and Modification Policy</a> by contacting <a href="/help/index.jsp?refresh=true#collapse2200">TSpace team</a>.</p>
</div>
            </div>
<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2460" name="why should I deposit">
                                        Why should I deposit my work if it has already been published?                                 </a>
                                 </h3>
                             </div>
                             <div id="collapse2460" class="accordion-body collapse">
                                 <div class="panel-body">
<p>For a number of reasons! See our <a href="/help/index.jsp?refresh=true#collapse1800" name="why deposit">Why deposit research to TSpace?</a> and <a href="http://hdl.handle.net/1807/68612" name="tspace info series">TSpace Info Series: Reasons to Submit</a> for answers.</p>
</div>
            </div>
                              <div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2470" name="what materials and formats">
                                        What materials and formats does TSpace accept?                                 </a>
                                 </h3>
                             </div>

                             <div id="collapse2470" class="accordion-body collapse">
                                 <div class="panel-body">
                                  <p>TSpace accepts scholarly, research, and pedagogical materials authored, produced, or sponsored by U of T faculty. For details see the TSpace policies' <a href="https://tspace.library.utoronto.ca/about/collectionpolicies.jsp#content_guidelines" name="content guidelines">Content Guidelines</a> and <a href="https://tspace.library.utoronto.ca/about/collectionpolicies.jsp#formats">Format Support</a> sections.</p>
                                </div>
                             </div>

                             <div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2480" name="citing work">
                                        How to ensure my work is cited correctly if I upload a version other than the final PDF, i.e. the submitted or accepted manuscript?                                </a>
                                 </h3>
                             </div>

                             <div id="collapse2480" class="accordion-body collapse">
                                 <div class="panel-body">
                                  <p>We recommend adding full citation and DOI of the published article to the first page/coversheet of your manuscript so that the final version can be cited, as explained in <a href="/help/index.jsp?refresh=true#collapse60" name="format your document">Formatting your document before upload section</a>.<p>
                                  <p>When uploading materials on your behalf, TSpace team will prepend a coversheet that contains this information as well as instructions on <a href="/help/index.jsp?refresh=true#collapse1200" name="citing tspace items">Citing TSpace items</a>. <a href="/help/index.jsp?refresh=true#collapse2200" name="contact us">Contact us</a> for a coversheet template if you would like to do it yourself.</p>
                                </div>
                            </div>

                            <div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2490" name="who holds copyright" id="copyright">
                                        When an author submits an item to TSpace, who holds copyright?
                                    </a>
                                 </h3>
                             </div>

                             <div id="collapse2490" class="accordion-body collapse">
                                 <div class="panel-body">
                                  <p>Copyright is never transferred to TSpace! If the item has been published in a journal, then the publisher likely holds copyright. If the item is unpublished, then the author holds copyright.</p>
                                  <p>By submitting to TSpace, the author accepts a <a href="https://tspace.library.utoronto.ca/about/non-exclusivelicense.jsp" name="non-exclusive license" id="non-exclusive license">non-exclusive license</a> that allows TSpace to reproduce and distribute the author's item. This license only gives TSpace the permission to distribute the item, and does not authorize others to distribute it further.</p>
                                  <p>Read more on copyright and licensing in our handy <a href="http://hdl.handle.net/1807/68609" name="holding copyright" id="holding copyright">TSpace info series: Who Holds Copyright<a>.</p>
                                </div>
                            </div>

                            <div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2500" name="liaison librarian need help" id="liaison librarian need help">
                                        I'm a liaison librarian and I need help talking to faculty about institutional repositories, open access and copyright                               </a>
                                 </h3>
                             </div>

                             <div id="collapse2500" class="accordion-body collapse">
                                 <div class="panel-body">
                                 <p>See our <a href="/help/index.jsp?refresh=true#collapse1900" name="advocacy" id="advocacy">Advocacy resources and guides</a> for materials you can distribute and re-use or <a href="/help/index.jsp?refresh=true#collapse2200" id="contact us" name="contact us">contact us</a> with specific questions or to schedule a consultation.</p>
                            </div>
                </div>
<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2510" name="graduate student submitted" id="graduate student submitted">
                                       I'm a graduate student. I have submitted my thesis - when will it appear in TSpace?                               </a>
                                 </h3>
                             </div>
                             <div id="collapse2510" class="accordion-body collapse">
                                 <div class="panel-body">

<p>Please see <a href="/help/index.jsp?refresh=true#collapse1500" name="submitted thesis" id="submitted thesis">Submitted thesis does not appear in TSpace</a>.</p>

</div>
            </div>
<div class="panel-heading">
                                 <h3 class="panel-title">
                                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse2520" name="what is handle" id="what is handle">
                                      What is a handle?                               </a>
                                 </h3>
                             </div>
                             <div id="collapse2520" class="accordion-body collapse">
                                 <div class="panel-body">
<p>A handle is a persistent URL that is assigned to every item in TSpace. This means that, unlike most URLs, this identifier will not have to be changed when the system migrates to a new platform or hardware.</p>
<p>TSpace is committed to maintaining the integrity of this identifier so that you can safely use it to refer to your item when citing it in publications or other communications. Our persistent URLs are registered with the <a href="http://www.handle.net/" name="handle system" id="handle system" >Handle System</a> that is administered by the <a href="http://www.cnri.reston.va.us/" name="corporation for national research initiatives">Corporation for National Research Initiatives (CNRI)</a>, which undertakes, fosters, and promotes research in the public interest.</p>

</div>
            </div>
        </div>
</div>

    </div>

<script src="<%= request.getContextPath() %>/static/js/help-page-find.js"></script>
<script src="<%= request.getContextPath() %>/static/js/help-page-button.js"></script>

</dspace:layout>
