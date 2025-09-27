<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillForm.aspx.cs" Inherits="EOAS.BillForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server" 
    style="background-color: #CCFFCC; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-style: normal; color: #000000;">
    <div align="center" style="font-weight: 700; background-color: #FFFFCC;">
        <asp:Image 
        ID="Image1" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="157px" 
        Width="1064px" BackColor="#CCFFCC" />&nbsp;<br />
        <br />
        BILL FORM<br />
    <br />
    <hr style="width: 1500px" />
        <br />
        <br />
        Evaluator ID&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="218px" MaxLength="10" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            onclick="LinkButton1_Click">Showdata</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            PostBackUrl="~/Previousdata.aspx">Previous Bills</asp:LinkButton>
        <br />
        <asp:Label ID="idvalid" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <p align="left" style="width: 1696px" >
            <asp:GridView ID="GridView1" runat="server" Visible="False" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" 
                ForeColor="#333333" GridLines="None" Width="1305px">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" 
                oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                        </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="EvaluatorName" HeaderText="EvaluatorName" 
                        SortExpression="EvaluatorName" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                        SortExpression="MobileNumber" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Course" HeaderText="Course" 
                        SortExpression="Course" />
                    <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
                        SortExpression="SubjectName" />
                    <asp:BoundField DataField="CodeNoFrom" HeaderText="CodeNoFrom" 
                        SortExpression="CodeNoFrom" />
                    <asp:BoundField DataField="CodeNoTo" HeaderText="CodeNoTo" 
                        SortExpression="CodeNoTo" />
                    <asp:BoundField DataField="BundlesAssigned" HeaderText="BundlesAssigned" 
                        SortExpression="BundlesAssigned" />
                    <asp:BoundField DataField="NoofScripts" HeaderText="NoofScripts" 
                        SortExpression="NoofScripts" />
                    <asp:BoundField DataField="DateofIssue" HeaderText="DateofIssue" 
                        SortExpression="DateofIssue" />
                    <asp:BoundField DataField="DateofReturnExpected" HeaderText="DateofReturnExpected" 
                        SortExpression="DateofReturnExpected" />
                    <asp:BoundField DataField="DateofReturnactual" HeaderText="DateofReturnactual" SortExpression="DateofReturnactual" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:evaluatorConnectionString %>" 
                
                
                SelectCommand="SELECT * FROM [BundleSlip] WHERE ([MobileNumber] = @MobileNumber)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="MobileNumber" 
                        PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        &nbsp;</p>
        Bundle ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        Course&nbsp; &nbsp;<asp:TextBox ID="TextBox3" runat="server" 
            AutoPostBack="True" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
             Width="150px" AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:RadioButton ID="Examiner" runat="server" AutoPostBack="True" 
            GroupName="exm" Text="Examiner" 
            oncheckedchanged="Examiner_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="cexaminer" runat="server" GroupName="exm" 
            Text="Examiner &amp; Chief Examiner" oncheckedchanged="cexaminer_CheckedChanged" 
            AutoPostBack="True" />
&nbsp;
        <asp:RadioButton ID="cexmonly" runat="server" AutoPostBack="True" 
            GroupName="exm" oncheckedchanged="cexmonly_CheckedChanged" 
            Text="Chief Examiner" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Underline="False" OnClick="LinkButton6_Click" Visible="False">View Bill</asp:LinkButton>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="cexm" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Width="120px" />
        &nbsp;<asp:Label 
            ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
            </div>
        <div align="center" style="background-color: #C0C0C0; height: 103px;">
            
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="False" 
                    Font-Names="Calibri" Font-Overline="False" Font-Underline="False" 
                    PostBackUrl="~/Home.aspx">Home
                </asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="False" 
                    Font-Names="Calibri" Font-Overline="False" Font-Underline="False" 
                    PostBackUrl="~/Modules.aspx" onclick="LinkButton3_Click">Modules</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="False" 
                    Font-Names="Calibri" Font-Overline="False" Font-Underline="False" 
                    PostBackUrl="~/Login_page.aspx">Login</asp:LinkButton>
            
            </div>
    </form>
</body>
</html>
