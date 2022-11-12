<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-18.aspx.vb" Inherits="WebApplication1.Practical_18" %>

<asp:Content ID="p18" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP18" runat="server" Text="Practical-18" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP18_Aim" runat="server"      
        Text="Create an application of sorting in DataGridView using DataView." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="2" class="style23">
                <strong>Choose value from dropdown to apply sorting on data bound to GridView 
                Control using Data View.</strong></td>
        </tr>
        <tr valign="middle">
            <td class="style25" valign="middle">
                <strong>Select Sorting Column</strong></td>
            <td valign="middle" class="style26">
                <asp:DropDownList ID="dpID" runat="server" AutoPostBack="True" 
                    style="font-weight: 700; font-family: Cambria">
                    <asp:ListItem Value="id">ID</asp:ListItem>
                    <asp:ListItem Value="name">Name</asp:ListItem>
                    <asp:ListItem Value="hobby">Hobby</asp:ListItem>
                    <asp:ListItem Value="department">Department</asp:ListItem>
                    <asp:ListItem Value="city">City</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr valign="middle">
            <td class="style24" valign="middle" colspan="2">
                <asp:GridView ID="gvSortUsingDataView" runat="server" BackColor="White" 
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
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style23
        {
            width: 714px;
            font-size: large;
            color: #0000CC;
        }
        .style24
        {
            width: 563px;
        }
        .style25
        {
            width: 222px;
            color: #000066;
        }
    </style>
</asp:Content>
