<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EOAS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome To EOAS</title>
</head>
<body style="font-weight: 700" bgcolor="#ffffcc">
<form id="form1" runat="server">
        <div align="center">
            `<asp:Image ID="Image1" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="164px" Width="1064px" 
                BackColor="#CCFFCC" />
            <br />
            <br />
        <table>
            <tr>
                <td><asp:LinkButton ID="LinkButton3" runat="server" BorderStyle="Groove" 
            onclick="LinkButton1_Click" PostBackUrl="~/Login_page.aspx" 
            Font-Bold="True" Font-Size="X-Large" Font-Underline="False">Login</asp:LinkButton></td>
                <td width="700px"></td>
                <td><asp:LinkButton 
            ID="LinkButton2" runat="server" BorderStyle="Groove" 
            PostBackUrl="~/About_page.aspx" Font-Bold="True" Font-Size="X-Large" 
            Font-Underline="False" OnClick="LinkButton2_Click1">About</asp:LinkButton></td>
            </tr>
        </table>
            <div style="margin-left: 80px">
                <asp:Image ID="Image5" runat="server" Height="260px" ImageUrl="~/bglogo-transparent.png" 
            Width="265px" />
            </div>
            <br />
            <br />
            <br />
            <br />
            DEVELOPED BY :-&nbsp;&nbsp; O RAMESH,SAI RAMDEV B, A JYOTHI, P SHIVA KUMAR, M NAVEEN 
            KUMAR, MD AZEEZ, V SWATHI ,P SRAVANI.
    </div>
     </form>
</body>
</html>
