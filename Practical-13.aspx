<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/main.Master" CodeBehind="Practical-13.aspx.vb" Inherits="WebApplication1.Practical_13" %>

<asp:Content ID="p13" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP13" runat="server" Text="Practical-13" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP13_Aim" runat="server"      
        Text="Create a web application using Global.asax file which will count the number of online users and also the total number of hits on your web application." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td 
                
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #000066" 
                class="style26">
                Online User:
                </td>
            <td 
                
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #000066">
                <asp:Label ID="lblOnlineUser" runat="server" Font-Bold="True" 
                    Font-Size="XX-Large" Font-Names="Cambria"></asp:Label>
                </td>
        </tr>
        <tr valign="middle">
            <td class="style27" valign="middle">
                <span class="style25"><strong>Total Number of Hits:</strong></span> </td>
            <td class="style24" valign="middle">
                <asp:Label ID="lblTotNoOfHits" runat="server" Font-Bold="True" 
                    Font-Size="XX-Large" Font-Names="Cambria"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style24
    {
        color: #FF0000;
        background-color: #FF66FF;
    }
    .style25
    {
        font-family: Cambria;
        font-size: x-large;
    }
    .style26
    {
        width: 274px;
    }
    .style27
    {
        color: #FF0000;
        width: 274px;
        background-color: #FF66FF;
    }
</style>
</asp:Content>

