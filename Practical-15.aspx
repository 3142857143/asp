<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-15.aspx.vb" Inherits="WebApplication1.Practical_15" %>

<asp:Content ID="p15" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP15" runat="server" Text="Practical-15" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP15_Aim" runat="server"      
        Text="Using ExecuteScaler, create an application to find the maximum id and count the total records in particular table. " 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="3" class="style23">
                <strong>Click buttons to get desired result.</strong></td>
        </tr>
        <tr valign="middle">
            <td class="style24" valign="middle">
                <strong>Max ID:</strong></td>
            <td valign="middle" class="style26">
                <asp:TextBox ID="txtMaxID" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td valign="middle">
                <asp:Button ID="btnFetchID" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="Fetch Max ID" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
        <tr valign="middle">
            <td class="style24" valign="middle">
                <strong>Total Records:</strong></td>
            <td class="style25" valign="middle">
                <asp:TextBox ID="txtTotRec" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="style24" valign="middle">
                <asp:Button ID="btnFetchTotalRecord" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="Fetch Total Records" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style23
    {
        font-size: large;
        color: #660066;
    }
    .style24
    {
        width: 110px;
        color: #0000CC;
    }
    .style25
    {
        width: 83px;
        color: #0000CC;
    }
    .style26
    {
        width: 83px;
    }
    </style>
</asp:Content>
