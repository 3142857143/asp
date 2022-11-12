<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-17.aspx.vb" Inherits="WebApplication1.Practical_17" %>

<asp:Content ID="p17" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP17" runat="server" Text="Practical-17" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP17_Aim" runat="server"      
        Text="Display data in GridView using DataSet." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr valign="middle">
            <td class="style28" valign="middle">
                <asp:Button ID="btnFillGridView" runat="server" BackColor="#FFFFCC" 
                    Font-Bold="True" Font-Names="Cambria" ForeColor="#000066" 
                    Text="Fill Grid View" />
            </td>
            <td valign="middle" class="style26">
                <asp:GridView ID="gvBound" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style29" valign="middle">
                <strong>Fill GridView Using Wizard:</strong></td>
            <td class="style25" valign="middle">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" style="margin-left: 0px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="hobby" HeaderText="hobby" SortExpression="hobby" />
                        <asp:BoundField DataField="department" HeaderText="department" 
                            SortExpression="department" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
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
                    SelectCommand="SELECT * FROM [tblStudent]"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style25
    {
        width: 222px;
        color: #000066;
    }
    .style26
    {
        width: 220px;
        color: #000066;
    }
    .style28
    {
        width: 204px;
    }
    .style29
    {
        width: 204px;
        color: #000066;
    }
    </style>
</asp:Content>
