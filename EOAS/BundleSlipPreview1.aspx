<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BundleSlipPreview1.aspx.cs" Inherits="Welcome_page.BundleSlipPreview1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>BundleSlip Preview1</title>
    <style type="text/css">
        .style12
        {
            width: 288px;
            height: 55px;
        }
        .style13
        {
            width: 288px;
        }
        .style14
        {
            width: 169px;
            height: 55px;
        }
        .style15
        {
            width: 169px;
        }
        .auto-style1 {
            width: 879px;
            height: 298px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <center> 
           <asp:Image ID="Image1" runat="server" 
               ImageUrl="~/header_full_img_transparent.png" Height="184px" />
        </center>    
    </div>
    &nbsp;&nbsp;&nbsp;
    <center>
        <asp:Panel ID="panel" runat="server">
    <table border="1" class="auto-style1">
    <tr>
    <td class="style14"><h3>Subject Name</h3> </td><td class="style12" align="center">
                    <asp:Label ID="sname" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    <tr>
    <td class="style15"><h3>No.of scripts</h3></td><td class="style13" align="center">
                    <asp:Label ID="nscripts" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    <tr>
    <td class="style15"><h3>Examiner</h3></td><td class="style13" align="center">
                    <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    <tr>
    <td class="style14"><h3>Address</h3></td><td class="style12" align="center">
                    <asp:Label ID="adr" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    <tr>
    <td class="style14"><h3>NOTE</h3></td><td class="style12"><h4>The Evaluators are requested to Evaluate the paper in 5 Days</h4></td>
    </tr>
    <tr>
    <td class="style15"><h3>Date of Issue</h3></td><td class="style13" align="center">
                    <asp:Label ID="issuedate" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    <tr>
    <td class="style14"><h3>Date of Return</h3></td><td class="style12" align="center">
                    <asp:Label ID="returndate" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    </table>
            </asp:Panel>
        <br />
    </center>
    </form>
</body>
</html>
