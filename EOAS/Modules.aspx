<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modules.aspx.cs" Inherits="EOAS.Modulespage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <div align="center">
            <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="164px" Width="1064px" 
                BackColor="#CCFFCC" /> 
            <p style="background-color: #6600CC; color: #FFFF00; height: 35px; width: 1208px; font-size: x-large;" 
        align="center">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
            ForeColor="Yellow" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
            ForeColor="Yellow" PostBackUrl="~/EvaluatorData.aspx">Evaluator Data</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Yellow" 
            PostBackUrl="~/BundleSlip.aspx" Font-Underline="False">Bundle Slip</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Yellow" 
            Font-Underline="False" 
            PostBackUrl="~/BillForm.aspx">Bill Form</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;WELCOME,&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/User_icon.png" 
            Width="33px" />
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" ForeColor="Yellow" PostBackUrl="~/Login_page.aspx">Logout</asp:LinkButton>
            </p>
    <br />
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/bglogo-transparent.png" 
            ImageAlign="Middle" Height="289px" />
            </div>
        <script type="text/javascript">
            function preventback() {
                window.history.forward();
            }
            setTimeout("preventback()", 0);
            window.onunload = function () { null };
        </script>
    </form>
</body>
</html>
