<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreviousData.aspx.cs" Inherits="EOAS.PreviousData" %>

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
        <div align="center" dir="ltr">
    
        <p style="background-color: #CCFFCC">
        <asp:Image 
        ID="Image2" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="157px" 
        Width="1064px" /></p>
    
  Evaluator ID&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="288px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Get 
        Data</asp:LinkButton>
        <br />
        <br />
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server"
                                OnCheckedChanged="CheckBox1_CheckedChanged1" AutoPostBack="True" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="BillID" HeaderText="BillID"
                        SortExpression="BillID" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber"
                        SortExpression="MobileNumber" />
                    <asp:BoundField DataField="NameofExaminer" HeaderText="NameofExaminer"
                        SortExpression="NameofExaminer" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation"
                        SortExpression="Designation" />
                    <asp:BoundField DataField="Typeofexaminer" HeaderText="Typeofexaminer"
                        SortExpression="Typeofexaminer" />
                    <asp:BoundField DataField="Codeno" HeaderText="Codeno"
                        SortExpression="Codeno" />
                    <asp:BoundField DataField="Course" HeaderText="Course"
                        SortExpression="Course" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject"
                        SortExpression="Subject" />
                    <asp:BoundField DataField="Semister" HeaderText="Semister"
                        SortExpression="Semister" />
                    <asp:BoundField DataField="BundleID" HeaderText="BundleID"
                        SortExpression="BundleID" />
                    <asp:BoundField DataField="Bankacno" HeaderText="Bankacno"
                        SortExpression="Bankacno" />
                    <asp:BoundField DataField="Branchname" HeaderText="Branchname"
                        SortExpression="Branchname" />
                    <asp:BoundField DataField="IFSC" HeaderText="IFSC"
                        SortExpression="IFSC" />
                    <asp:BoundField DataField="Noofansbooks" HeaderText="Noofansbooks"
                        SortExpression="Noofansbooks" />
                    <asp:BoundField DataField="Ansbooksvalued" HeaderText="Ansbooksvalued"
                        SortExpression="Ansbooksvalued" />
                    <asp:BoundField DataField="Papersetting" HeaderText="Papersetting"
                        SortExpression="Papersetting" />
                    <asp:BoundField DataField="QPtyping" HeaderText="QPtyping"
                        SortExpression="QPtyping" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnClientClick="return confirm('Deletion can not be undone')">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:evaluatorConnectionString %>" 
            
            SelectCommand="SELECT * FROM [BillForm] WHERE ([MobileNumber] = @MobileNumber) ORDER BY [Date]">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="MobileNumber" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />Bill ID. :&nbsp;&nbsp;&nbsp;&nbsp;         <asp:TextBox ID="TextBox2" runat="server" Width="213px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server"
            Text="Label" Visible="false"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Preview" 
            onclick="Button1_Click" />
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
                    PostBackUrl="~/Login_page.aspx" OnClick="LinkButton4_Click">Logout</asp:LinkButton>
            </div>
    </form>
</body>
</html>
