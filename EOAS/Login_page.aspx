<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="EOAS.Login_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#ffffcc">
<div align="center">
   <form id="form1" runat="server">
            <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="164px" Width="1064px" 
                BackColor="#CCFFCC" />
            <br />
            <br />
            <br />
            <br />
            <table>  
                <tr><td>USERNAME</td>
                    <td width="5px"></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox></td>
                    <td width="5px"></td>
                    <td><asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label></td>
                </tr>
                <tr><td></td></tr>
            <tr>
                <td>PASSWORD</td>
                <td width="5px"></td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="210px" TextMode="Password"></asp:TextBox></td>
                <td width="5px"></td>
                <td><asp:Label ID="Label3" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
                </td>
                <td><asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False"   onclick="LinkButton1_Click" PostBackUrl="~/LoginRegister1.aspx">New Register</asp:LinkButton></td>
            </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Visible="False"></asp:Label></td>
               </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button2" runat="server" BorderStyle="Double" Height="35px" Text="Login" Font-Size="Medium" Width="125px" onclick="Button2_Click" /></td>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" BorderStyle="Double" Height="35px" onclick="Button1_Click" Text="Reset" Font-Size="Medium" Width="125px" /></td>
                </tr>
        
                </table>
            <br />
       <script type="text/javascript">
           function preventback() {
               window.history.forward();
           }
           setTimeout("preventback()", 0);
           window.onunload = function () { null };
       </script>
    </form>
    </div>
</body>
</html>
