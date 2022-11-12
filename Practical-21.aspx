<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-21.aspx.vb" Inherits="WebApplication1.Practical_21" %>

<asp:Content ID="p21" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP21" runat="server" Text="Practical-21" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP21_Aim" runat="server"      
        Text="Create a web application to bind a DataGrid control using SqlDataSource and use its all functionalities." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td class="style23">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="empID">
                    <Columns>
                        <asp:BoundField DataField="empID" HeaderText="empID" SortExpression="empID" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="city" HeaderText="city" 
                            SortExpression="city" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                    SelectCommand="SELECT * FROM [tblEmp]" 
                    DeleteCommand="DELETE FROM [tblEmp] WHERE [empID] = @empID" 
                    InsertCommand="INSERT INTO [tblEmp] ([empID], [name], [city]) VALUES (@empID, @name, @city)" 
                    UpdateCommand="UPDATE [tblEmp] SET [name] = @name, [city] = @city WHERE [empID] = @empID">
                    <DeleteParameters>
                        <asp:Parameter Name="empID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="empID" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="empID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </td>
        </tr>
        </table>
</asp:Content>