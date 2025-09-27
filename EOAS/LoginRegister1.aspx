<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginRegister1.aspx.cs" Inherits="EOAS.LoginRegister1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            background-color: #FFFFCC;
        }
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
        <div align="center">
    <div align="center">
            <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="164px" Width="1064px" 
                BackColor="#CCFFCC" /> 
            </div>
            <br />
            <strong>New User Registration</strong><br />
            <br />
            <br />
            <table>
                <tr>
                    <td>Name</td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>Password</td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>Confirm Password</td>
                    <td></td>
                    <td><asp:TextBox ID="cpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" Text="User Exists" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login_page.aspx">Go to Login</asp:LinkButton>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Register" />
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
