<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillFormDisplay1.aspx.cs" Inherits="EOAS.BillFormDisplay1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Generated Bill Form </title>
    <style type="text/css">
        .style1
        {
            width: 1054px;
            height: 252px;
            border: 1px solid #000000;
        }
        .style2
        {
            height: 111px;
        }
        .style9
        {
            height: 111px;
            width: 88px;
        }
        .style10
        {
            width: 88px;
        }
        .style11
        {
            height: 111px;
            width: 111px;
        }
        .style12
        {
            width: 111px;
        }
        .style13
        {
            height: 111px;
            width: 171px;
        }
        .style14
        {
            width: 171px;
        }
        .style15
        {
            height: 111px;
            width: 109px;
        }
        .style16
        {
            width: 109px;
        }
        .style17
        {
            height: 111px;
            width: 107px;
        }
        .style18
        {
            width: 107px;
        }
        .style19
        {
            height: 111px;
            width: 169px;
        }
        .style20
        {
            width: 169px;
        }
        .style21
        {
            height: 111px;
            width: 174px;
        }
        .style22
        {
            width: 174px;
        }
        .style23
        {
            height: 111px;
            width: 137px;
        }
        .style24
        {
            width: 137px;
        }
        .style25
        {
            text-decoration: underline;
        }
    </style>
    <script language="javascript" type="text/javascript">
                function Button1_Click()
                {
                    var printpage = document.getElementById('<%=printing.ClientID %>');
                    var printwindow = window.open("All Records", "Print Panel",'left=50000,top=50000,width=50000,height=100000');
                    printwindow.document.write(printpage.innerHTML); 
                    printwindow.focus();
                    printwindow.print();
                    printpage.close();
                    printwindow.document.close();
                }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="printing" runat="server">
    <div align="center" style="font-size: x-large">
    
        <asp:Image ID="Image1" runat="server" 
               ImageUrl="~/header_full_img_transparent.png" Height="182px" 
            Width="901px" />
        <br />
        <asp:Label ID="course" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="semister" runat="server" Text="Label"></asp:Label>
&nbsp;Semester<hr />
        <br />
        Bill of Remuneration for paper setting/Valuating of theory/Examination<br />
        <br />
        Name of the Examiner (as per bank a/c) :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        _____<asp:Label ID="name" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        _____<br />
        Designation :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        _____<asp:Label ID="designation" runat="server" Font-Underline="True" 
            Text="Label"></asp:Label>
        _____<br />
        Bank A/c No. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        _____<asp:Label ID="acno" runat="server" Font-Underline="True" 
            Text="Label"></asp:Label>
        _____<br />
        Bank branch name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        _____<asp:Label ID="branchname" runat="server" Font-Underline="True" 
            Text="Label"></asp:Label>
        _____<br />
        Bank IFSC code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        _____<asp:Label ID="ifsc" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        _____<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table border="1" class="style1">
            <tr align="center">
                <td align="center" class="style17">
                    Code no</td>
                <td align="center" class="style19">
                    Subject</td>
                <td align="center" class="style21">
                    Sem/Paper</td>
                <td align="center" class="style23">
                    Examiner/<br />
                    Chief Examiner</td>
                <td align="center" class="style9">
                    No of answer books</td>
                <td align="center" class="style11">
                    No of answer books valued @20/- (1)
                </td>
                <td align="center" class="style13">
                    Remunaration for paper setting 1200/-per 2 sets (2)</td>
                <td align="center" class="style15">
                    Q.P Typing per 2 sets 200/- (3)</td>
                <td align="center" class="style2">
                    Grand Total (4)<br />
                    (1+2+3=4)</td>
            </tr>
            <tr align="center">
                <td align="center" class="style18">
                    <asp:Label ID="code" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style20">
                    <asp:Label ID="sub" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style22">
                    <asp:Label ID="sem" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style24">
                    <asp:Label ID="exm" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style10">
                    <asp:Label ID="nans" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style12">
                    <asp:Label ID="pval" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style14">
                    <asp:Label ID="pset" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="style16">
                    <asp:Label ID="ptype" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="total" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        Received Rs.&nbsp; (In figures) :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        _____________<asp:Label ID="figrs" runat="server" Font-Underline="True" 
            Text="Label"></asp:Label>
        ._______________ &nbsp;<br />
        In Words&nbsp;&nbsp;&nbsp;&nbsp; _____<asp:Label ID="wrs" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        <b>_</b><span class="style25">Only</span> /-.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
                Date : ___<asp:Label ID="date" runat="server" 
                Font-Underline="True" Text="Label"></asp:Label>
            _____&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Signature of Examiner
        <br />
        <br />
&nbsp;<br />
        </div>
        <div align="center" style="font-weight: 700; font-size: x-large;">Note : Bank details are mandatory for online transfer<br />
            <br />
            <br />
            Office purpose only<br />
            <hr />
        </div>
        <div align="center" style="font-size: x-large">
            Certified for payment bill for Rs _____________ towards paper setting / 
            valuation has been passed for<br />
            bill process date&nbsp; __________________ Cheque no &amp; date __________________<br />
            <br />
            <br />
            Certified by&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Verified by&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Controller of examinations<br />
            <br />
        </div>
        </asp:Panel>
        <p align="center"><asp:Button ID="Button1" runat="server" OnClientClick="Button1_Click()" Text="Print" /></p>
    </form>
</body>
</html>
