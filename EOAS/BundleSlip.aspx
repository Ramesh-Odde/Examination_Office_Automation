<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BundleSlip.aspx.cs" Inherits="Welcome_page.BundleSlip" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Bundle Slip</title>
    </head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <div align="center">
    <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/header_full_img_transparent.png" Height="164px" Width="1064px" 
            BackColor="#CCFFCC" />
        <br />
        <br />
        <b>BUNDLE SLIP</b><br />
        <br />
        <br />
        <table>
            <tr>
                <td >Evaluator ID</td>
                <td >
                    <asp:TextBox ID="MobileNumber" runat="server" Width="250px" AutoPostBack="True" OnTextChanged="MobileNumber_TextChanged1"></asp:TextBox></td>
            </tr>
            <tr>
                <td ></td>
                <td  align="right">(Example : 8823854219)</td>
            </tr>
        </table>
        <table >
            <tr>
                <td>Evaluator Name</td>
                <td>
                    <asp:TextBox ID="EvaluatorName" runat="server" Width="250px"></asp:TextBox></td>
                <td width="5px"></td>
                <td >Address</td>
                <td >
                    <asp:TextBox ID="Address" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td ></td>
            </tr>
            <tr>
                <td>Course</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                        Width="250px" DataSourceID="SqlDataSource3" DataTextField="courses" DataValueField="courses">
                        <asp:ListItem>--select--</asp:ListItem>
                        <asp:ListItem>BSc</asp:ListItem>
                        <asp:ListItem>BCom</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>Msc</asp:ListItem>
                        <asp:ListItem>MCom</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:evaluatorConnectionString %>" SelectCommand="SELECT DISTINCT [courses] FROM [CDATA] ORDER BY [courses] DESC"></asp:SqlDataSource>
                </td>
                <td width="5px"></td>
                <td >Subject Name</td>
                <td>
                    <asp:DropDownList ID="SubjectName" runat="server" AutoPostBack="True"
                        DataSourceID="SqlDataSource4" DataTextField="subjects" DataValueField="subjects"
                        Width="250px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:evaluatorConnectionString %>" SelectCommand="SELECT [subjects] FROM [CDATA] WHERE ([courses] = @courses)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="courses" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td ></td>
            </tr>
            <tr>
                <td>CodeNo. From</td>
                <td>
                    <asp:TextBox ID="Bundlefrom" runat="server" Width="250px" MaxLength="8"
                        AutoPostBack="True" OnTextChanged="bundlefrom_TextChanged"></asp:TextBox></td>
                <td width="5px"></td>
                <td >CodeNo. To</td>
                <td>
                    <asp:TextBox ID="Bundleto" runat="server" Width="250px" MaxLength="8"
                        AutoPostBack="True" OnTextChanged="bundleto_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td >Bundles Assigned</td>
                <td >
                    <asp:DropDownList ID="BundlesAssigned" runat="server" Width="250px">
                        <asp:ListItem Selected="True">1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></td>
                <td width="5px"></td>
                <td >No.of Scripts</td>
                <td>
                    <asp:TextBox ID="NoofScripts" runat="server" Width="250px" MaxLength="3" AutoPostBack="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td >Date of Issue</td>
                <td>
                <asp:TextBox ID="DateofIssue" runat="server" Width="250px" ></asp:TextBox></td>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="DateofIssue" Format="dd/MM/yyyy"/>
                <td width="5px"></td>
                <td >Date of Return </td>
                <td>
                    <asp:TextBox ID="DateofReturn" runat="server" Width="250px"></asp:TextBox></td>
                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="DateofReturn" Format="dd/MM/yyyy"/>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button 
            ID="Button6" runat="server" Text="Insert" Width="111px" 
            onclick="Button6_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button5" runat="server" Text="View" Width="111px" 
            onclick="Button5_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="update" runat="server" Text="Update" Width="111px" 
            onclick="Button4_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button3" runat="server" Text="Delete" Width="111px" 
            onclick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Reset" runat="server" onclick="Reset_Click" Text="clear fields" 
            Width="111px" />
        &nbsp;<br />
        <br />
&nbsp;<asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" 
            Visible="False">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="EvaluatorName" HeaderText="EvaluatorName" 
                    SortExpression="EvaluatorName" ReadOnly="True" />
                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                    SortExpression="MobileNumber" ReadOnly="True" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" ReadOnly="True" />
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
                    <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">Preview</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" OnClientClick= "return confirm('Are you sure to Delete ? This action cannot be undone')" >Delete</asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:evaluatorConnectionString %>" 
            SelectCommand="SELECT * FROM [BundleSlip] WHERE ([MobileNumber] = @MobileNumber)" UpdateCommand="UPDATE BundleSlip SET  Course = @Course, SubjectName = @SubjectName, CodeNoFrom = @CodeNoFrom, CodeNoTo = @CodeNoTo, BundlesAssigned = @BundlesAssigned, NoofScripts = @NoofScripts, DateofIssue = @DateofIssue, DateofReturnExpected = @DateofReturnExpected, DateofReturnactual = @DateofReturnactual  WHERE (ID=@ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="MobileNumber" Name="MobileNumber" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course" />
                <asp:Parameter Name="SubjectName" />
                <asp:Parameter Name="CodeNoFrom" />
                <asp:Parameter Name="CodeNoTo" />
                <asp:Parameter Name="BundlesAssigned" />
                <asp:Parameter Name="NoofScripts" />
                <asp:Parameter Name="DateofIssue" />
                <asp:Parameter Name="DateofReturnExpected" />
                <asp:Parameter Name="DateofReturnactual" />
                <asp:Parameter Name="ID" />
            </UpdateParameters>
        </asp:SqlDataSource>   
        <br />
        <br />
        <br />
        </div>
        <div align="center" style="background-color: #C0C0C0; height: 103px;">
            
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="False" 
                    Font-Names="Calibri" Font-Overline="False" Font-Underline="False" 
                    PostBackUrl="~/Default.aspx">Home
                </asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="False" 
                    Font-Names="Calibri" Font-Overline="False" Font-Underline="False" 
                    PostBackUrl="~/Modules.aspx">Modules</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="False" 
                    Font-Names="Calibri" Font-Overline="False" Font-Underline="False" 
                    PostBackUrl="~/Login_page.aspx">Login</asp:LinkButton>
            
            </div>
    </form>
</body>
</html>
