<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_page.aspx.cs" Inherits="Welcome_page.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>About this Project</title>
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        #TextArea1
        {
            height: 168px;
            width: 439px;
        }
        .style1
        {
            text-align: center;
            font-size: 28.0pt;
            font-family: "Calibri Light", sans-serif;
            letter-spacing: -.5pt;
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: .0001pt;
        }
        .style2
        {
            text-indent: -18.0pt;
            line-height: 107%;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 36.0pt;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: .0001pt;
        }
        .style3
        {
            text-indent: -18.0pt;
            line-height: 107%;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 36.0pt;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: 8.0pt;
        }
        .style4
        {
            text-align: justify;
            text-indent: -18.0pt;
            line-height: 107%;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 36.0pt;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: 8.0pt;
        }
        .style5
        {
            text-indent: -18.0pt;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: .0001pt;
        }
        .style6
        {
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: .0001pt;
        }
        .auto-style2 {
            width: 521px;
        }
        .auto-style3 {
            width: 239px;
        }
    </style>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:Image ID="Image1" runat="server" Height="168px" ImageAlign="Middle" 
            ImageUrl="~/header_full_img_transparent.png" Width="1015px" />
        </div>
        <div>
    <p align="center" class="style1">
        <b><span style="font-size:x-large; font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
minor-latin">EXAMINATION OFFICE AUTOMATION SYSTEM<o:p></o:p></span></b></p>
    <p class="MsoNormal">
        <span lang="EN-US" style="mso-ansi-language:EN-US"><o:p>&nbsp;</o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <span lang="EN-US" style="mso-ansi-language:EN-US">Exam Office Automation System 
        is developed to reduce the tedious manual work of the staff/facultyby automating 
        it. The Examination Office Automation System is created to provide a simpler 
        automated system to the staff/faculty. This system provides a digitized method 
        which requires less paperwork and simpler to manage and understand which saves a 
        lot of time and effort. This system is being implemented at Exam paper 
        Evaluation scheduling of faculty and its preceding processes.<span 
            style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <span lang="EN-US" style="mso-ansi-language:EN-US"><o:p>&nbsp;</o:p></span><o:p>&nbsp;</o:p></p>
    <p class="MsoNormal">
        <b>APPROACH<o:p></o:p></b></p>
    <p class="MsoNormal">
        All data is maintained over a server and regular updation will take place. It 
        gives the flexibility of accessing the data by authorized staff/faculty only.</p>
    <p class="MsoNormal">
        FRONT END<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>–<span 
            style="mso-spacerun:yes">&nbsp;&nbsp; </span>.NET (ASP.NET)<span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </span>-<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>For User Interface</p>
    <p class="MsoNormal">
        BACK END <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>–<span 
            style="mso-spacerun:yes">&nbsp;&nbsp; </span>MICROSOFT SQL SERVER
        <span style="mso-tab-count:
1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>-<span 
            style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>For Data storage &amp; Retrieval</p>
    <p class="MsoNormal">
        <o:p>&nbsp;</o:p></p>
    <p class="MsoNormal">
        <b>MODULES <o:p></o:p></b>
    </p>
    <p class="MsoNormal">
        The modules present in this system are: -</p>
    <p class="style2" style="mso-list: l1 level1 lfo1">
        <table>
            <tr>
                <td align="left">1. Evaluator Data Processing</td>
            </tr>
            <tr>
                <td align="left">2. Bill Form Generation for UG\PG</td>
            </tr>
            <tr>
                <td align="left">3. Bundle Slip</td>
            </tr>
        </table></p>
        <p class="style2" style="mso-list: l1 level1 lfo1">
            &nbsp;</p>
        <strong>MODULE DESCRIPTION<br />
        </strong>&nbsp;<p class="style4" 
        style="mso-add-space: auto; mso-list: l0 level1 lfo2; tab-stops: 36.0pt 181.6pt">
        <table>
            <tr>
                <td>1.</td>
                <td>Evaluator data processing : – Inserting, Modifying, Deleting the evaluator records according 
        to the requirements of subject evaluation. Also generating the report based on 
        the given criteria. Displaying the evaluator Data.</td>
            </tr>
            <tr>
                <td>2.</td>
                <td> Bill Form Generation : – This is the major module which 
        genetrates the bills for both Internal External Evaluators of U.G & P.G. The 
        bill processing is done separately for Theory, Practicals Projects. The Theory module also includes bill processing for various types of subjects 
        (CC, DSC, DSE, AECC, SEC, GE, PCC, etc…).This module also has Insertion, Modification, Deletion and Report 
        Generation(prints) according to the given criteria.</td>
            </tr>
            <tr>
                <td>3.</td>
                <td>BundleSlip : -This module also has Insertion, Modification, 
        Deletion and Report Generation(prints) of answer bundles according to the given 
        criteria.Displaying the Bundle Data assigned for the evaluator.</td>
            </tr>
        </table>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span 
            style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-no-proof:yes">
        SOFTWARE REQUIREMENTS<o:p></o:p></span></b></p>
        <table class="auto-style2">
            <tr>
                <td align="left" class="auto-style3">Operating System</td>
                <td>:</td>
                <td> Windows Family</td>
            </tr>
            <tr>
                <td align="left" class="auto-style3">Front End</td>
                <td>:</td>
                <td>ASP.NET</td>
            </tr>
            <tr>
                <td align="left" class="auto-style3">Back End</td>
                <td>:</td>
                <td>MICROSOFT SQL SERVER</td>
            </tr>
            <tr>
                <td align="left" class="auto-style3">Business Layer</td>
                <td>:</td>
                <td>C#</td>
            </tr>
            <tr>
                <td align="left" class="auto-style3">IDLE</td>
                <td>:</td>
                <td>Visual Studio</td>
            </tr>
        </table>
<br />
            <br />
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;
mso-no-proof:yes">From:<o:p></o:p></span></u></b></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span 
            style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-no-proof:yes">
        COURSE</span></b><span style="mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-weight:bold;mso-no-proof:yes">&nbsp; :<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; &nbsp;
        </span>M.Sc. CS – IV<sup>th</sup>- Semester<o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span 
            style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-no-proof:yes">
        GUIDE<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; </span></span></b>
        <span style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:
bold;mso-no-proof:yes"><span style="mso-spacerun:yes">&nbsp;</span>:<span 
            style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>S. RAMANA [COE]<o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </o:p>
        </span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span 
            style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-no-proof:yes">
        TEAM<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></b>
        <span style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:
bold;mso-no-proof:yes">:<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; 
        <span style="mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:
bold;mso-no-proof:yes">&nbsp;O. RAMESH<o:p>, </o:p></span> </span>
        SAI RAMDEV B , A. JYOTHI , M. NAVEEN KUMAR ,</span></p>
    <p class="MsoNormal">
        <span style="mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:bold;mso-no-proof:
yes"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>P. SHIVA KUMAR , P. SRAVANI ,V. SWATHI, MD. AZEEZ.<o:p></o:p></span></p>
    <p align="center" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: uppercase; font-variant: small-caps; color: #000000">
        &nbsp;</p>
        </div>
        </form>
</body>
</html>
