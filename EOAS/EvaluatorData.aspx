<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvaluatorData.aspx.cs" Inherits="EOAS.EvaluatorData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Evaluator Data</title>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <div align ="center" 
        
        style="background-color: #FFFFCC; height: 1147px; margin-right: 0px; font-family: Arial, Helvetica, sans-serif; font-style: normal;  color: #000000;">
    
    
        <asp:Image ID="Image1" runat="server" Height="164px" 
            ImageUrl="~/header_full_img_transparent.png" Width="1064px" 
            BackColor="#CCFFCC" />
        <br />
        <br />
        <b>EVALUATOR DATA</b><br />
        <br />
        <br />
        <table>
            <tr>
                <td>Mobile Number</td>
                <td>
                    <asp:TextBox ID="MobileNumber" runat="server" MaxLength="10" Width="300px" AutoPostBack="True" OnTextChanged="MobileNumber_TextChanged"></asp:TextBox></td>
                <td width="5px"></td>
                <td>Name of the Institution</td>
                <td>
                    <asp:TextBox ID="NameoftheInstitution" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Place of the Institution</td>
                <td>
                    <asp:TextBox ID="PlaceoftheInstitution" runat="server" Width="300px"></asp:TextBox></td>
                <td width="5px"></td>
                <td>Designation</td>
                <td>
                    <asp:DropDownList ID="Designation" runat="server" Width="300px">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem>Proffesor</asp:ListItem>
                        <asp:ListItem>Assistant Proffesor</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Name of the Department</td>
                <td>
                    <asp:DropDownList ID="NameoftheDepartment" runat="server" Width="300px">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem>Mathematics &amp; Statistics</asp:ListItem>
                        <asp:ListItem>Physics &amp; Electronics</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                        <asp:ListItem>Microbiology</asp:ListItem>
                        <asp:ListItem>Genetics &amp; Biotechnology</asp:ListItem>
                        <asp:ListItem>Biochemistry</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Languages</asp:ListItem>
                        <asp:ListItem>Management Studies</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                    </asp:DropDownList></td>
                <td width="5px"></td>
                <td>Email ID</td>
                <td>
                    <asp:TextBox ID="EmailID" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Residential Address</td>
                <td>
                    <asp:TextBox ID="ResidentialAddress" runat="server" Width="299px"></asp:TextBox></td>
                <td width="5px"></td>
                <td>Bank Name</td>
                <td>
                    <asp:TextBox ID="BankName" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Account Number</td>
                <td>
                    <asp:TextBox ID="AccountNumber" runat="server" Width="300px"></asp:TextBox></td>
                <td width="5px"></td>
                <td>Branch Name</td>
                <td>
                    <asp:TextBox ID="BranchName" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>IFSC Code</td>
                <td>
                    <asp:TextBox ID="IFSCCode" runat="server" OnTextChanged="TextBox11_TextChanged" Width="300px"></asp:TextBox></td>
                <td width="5px"></td>
                <td>Name as per Bank</td>
                <td>
                    <asp:TextBox ID="NameasperBank" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Years of Experience</td>
                <td>
                    <asp:TextBox ID="YearsofExperience" runat="server" Width="300px"></asp:TextBox></td>
                <td width="5px"></td>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label></td>
            </tr>
        </table>
        <br />
        <br />
        <!--<script type="text/javascript">
            function confirmation() {
                var mn = document.getElementById('<% =MobileNumber.ClientID %>').Value;
                var em = document.getElementById("<%=EmailID%>").Value;
                var pi = document.getElementById("<%=PlaceoftheInstitution%>").Value;
                var ni = document.getElementById("<%=NameoftheInstitution%>").innerHTML;
                    var des = document.getElementById("<%=Designation%>");
                    var dep = document.getElementById(" <%=NameoftheDepartment%>");
                    var bank = document.getElementById("<%=BankName%>");
                    var branch = document.getElementById(" <%=BranchName%>");
                    var ifsc = document.getElementById(" <%=IFSCCode%>");
                    var name = document.getElementById("<%=NameasperBank%>");
                    var raddress = document.getElementById("<%=ResidentialAddress%>");
                    var exp = document.getElementById("<%=YearsofExperience%>");
                var acno = document.getElementById("<%=AccountNumber%>");
                if (confirm('Name :', name, '\n Mobile Number :', mn,'\n Email :' , em , '\n Department :' , dep , '\n Designation :' , des , '\n Institution' , ni , '\n Place of Institution :' , pi , '\n Residential Address :' , raddress , '\n Bank Name :' , bank , '\n Branch :' , branch , '\n IFSC code :' , ifsc , 'Account Number :' , acno , '\n Expirience :' , exp))
                {
                    Insert_Click(null, null);
                }
            }
        </script>-->
        <asp:Button ID="Insert" runat="server" Text="Insert" Width="111px"  OnClick="Insert_Click1"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="View" runat="server" onclick="View_Click" Text="View" 
            Width="111px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Update" runat="server" Text="Update" Width="111px" 
            onclick="Update_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Delete" runat="server" Text="Delete" Width="111px" 
            onclick="Delete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Reset" runat="server" Text="clear fields" Width="111px" 
            onclick="Reset_Click" />
        
        <br />
        <br />
        <p align="left">
        
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                GridLines="None" Height="138px" 
                onselectedindexchanged="GridView2_SelectedIndexChanged" Visible="False">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="NameoftheDepartment" 
                        HeaderText="NameoftheDepartment" SortExpression="NameoftheDepartment" />
                    <asp:BoundField DataField="Nameoftheinstitution" 
                        HeaderText="Nameoftheinstitution" SortExpression="Nameoftheinstitution" />
                    <asp:BoundField DataField="PlaceoftheInstitution" 
                        HeaderText="PlaceoftheInstitution" SortExpression="PlaceoftheInstitution" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" 
                        SortExpression="Designation" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                        SortExpression="MobileNumber" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                        SortExpression="EmailID" />
                    <asp:BoundField DataField="ResidentialAddress" HeaderText="ResidentialAddress" 
                        SortExpression="ResidentialAddress" />
                    <asp:BoundField DataField="BankName" HeaderText="BankName" 
                        SortExpression="BankName" />
                    <asp:BoundField DataField="BranchName" HeaderText="BranchName" 
                        SortExpression="BranchName" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" 
                        SortExpression="AccountNumber" />
                    <asp:BoundField DataField="IFSCCode" HeaderText="IFSCCode" 
                        SortExpression="IFSCCode" />
                    <asp:BoundField DataField="NameasperBank" HeaderText="NameasperBank" 
                        SortExpression="NameasperBank" />
                    <asp:BoundField DataField="YearsofExperience" HeaderText="YearsofExperience" 
                        SortExpression="YearsofExperience" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:evaluatorConnectionString %>" 
                SelectCommand="SELECT * FROM [EvaluatorData]">
            </asp:SqlDataSource>
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
                GridLines="None" Visible="False">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="NameoftheDepartment"
                        HeaderText="NameoftheDepartment" SortExpression="NameoftheDepartment" />
                    <asp:BoundField DataField="Nameoftheinstitution"
                        HeaderText="Nameoftheinstitution" SortExpression="Nameoftheinstitution" />
                    <asp:BoundField DataField="PlaceoftheInstitution" HeaderText="PlaceoftheInstitution"
                        SortExpression="PlaceoftheInstitution" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="MobileNumber"
                        HeaderText="MobileNumber" SortExpression="MobileNumber" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID"
                        SortExpression="EmailID" />
                    <asp:BoundField DataField="ResidentialAddress" HeaderText="ResidentialAddress"
                        SortExpression="ResidentialAddress" />
                    <asp:BoundField DataField="BankName" HeaderText="BankName"
                        SortExpression="BankName" />
                    <asp:BoundField DataField="BranchName" HeaderText="BranchName"
                        SortExpression="BranchName" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber"
                        SortExpression="AccountNumber" />
                    <asp:BoundField DataField="IFSCCode" HeaderText="IFSCCode"
                        SortExpression="IFSCCode" />
                    <asp:BoundField DataField="NameasperBank" HeaderText="NameasperBank"
                        SortExpression="NameasperBank" />
                    <asp:BoundField DataField="YearsofExperience" HeaderText="YearsofExperience"
                        SortExpression="YearsofExperience" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkDelete" runat="server" OnClick="LinkDelete_Click" OnClientClick="return confirm('Sure to delete ? can not undone..')">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="id" HeaderText="id"
                        SortExpression="id" />

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
                SelectCommand="SELECT * FROM [EvaluatorData] WHERE ([MobileNumber] = @MobileNumber)" UpdateCommand="UPDATE EvaluatorData SET NameoftheDepartment = @NameoftheDepartment, Nameoftheinstitution = @Nameoftheinstitution, PlaceoftheInstitution = @PlaceoftheInstitution, Designation = @Designation, MobileNumber = @MobileNumber, EmailID = @EmailID, ResidentialAddress = @ResidentialAddress, BankName = @BankName, BranchName = @BranchName, AccountNumber = @AccountNumber, IFSCCode = @IFSCCode, NameasperBank = @NameasperBank, YearsofExperience = @YearsofExperience WHERE (id=@id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="MobileNumber" Name="MobileNumber" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NameoftheDepartment" />
                    <asp:Parameter Name="Nameoftheinstitution" />
                    <asp:Parameter Name="PlaceoftheInstitution" />
                    <asp:Parameter Name="Designation" />
                    <asp:Parameter Name="MobileNumber" />
                    <asp:Parameter Name="EmailID" />
                    <asp:Parameter Name="ResidentialAddress" />
                    <asp:Parameter Name="BankName" />
                    <asp:Parameter Name="BranchName" />
                    <asp:Parameter Name="AccountNumber" />
                    <asp:Parameter Name="IFSCCode" />
                    <asp:Parameter Name="NameasperBank" />
                    <asp:Parameter Name="YearsofExperience" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <br />
        <div align="center" style="background-color: #C0C0C0; height: 103px;">
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="False"
                            Font-Names="Calibri" Font-Overline="False" Font-Underline="False"
                            PostBackUrl="~/Default.aspx">Home
                        </asp:LinkButton></td>
                    <td width="3px"></td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="False"
                            Font-Names="Calibri" Font-Overline="False" Font-Underline="False"
                            PostBackUrl="~/Modules.aspx" OnClick="LinkButton3_Click">Modules</asp:LinkButton></td>
                    <td width="3px"></td>
                    <td>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="False"
                            Font-Names="Calibri" Font-Overline="False" Font-Underline="False"
                            PostBackUrl="~/Login_page.aspx">Login</asp:LinkButton></td>
                </tr>
            </table>
            </div>
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
