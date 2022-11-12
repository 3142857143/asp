<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-20.aspx.vb" Inherits="WebApplication1.Practical_20" %>

<asp:Content ID="p20" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP20" runat="server" Text="Practical-20" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP20_Aim" runat="server"      
        Text="Create a web application for Data Binding. (Single-Value and Repeated-Value Binding). Use relative controls for that." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr valign="middle">
            <td class="style27" valign="middle">
                <strong>Single Value Binding Example</strong></td>
            <td valign="middle" class="style26">
                <strong>Repeated Value Binding Example</strong></td>
        </tr>
        <tr valign="middle">
            <td class="style24" valign="middle">
                <asp:Label id="lblDynamic" runat="server" Font-Size="X-Large" 
                    style="color: #FF0066">
                    There were <%# TransactionCount %> transactions today.<br/>
                    I see that you are using <%# Request.Browser.Browser %>.
                </asp:Label></td>
            <td class="style25" valign="middle">
                <asp:CheckBoxList ID="chkRepeatedBound" runat="server">
                </asp:CheckBoxList>
                </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style23
        {
            width: 559px;
        }
        .style24
        {
            width: 391px;
        }
        .style25
        {
            color: #0000CC;
        }
        .style26
        {
            color: #0000CC;
            font-size: large;
        }
        .style27
        {
            width: 391px;
            font-size: large;
            color: #0000CC;
        }
    </style>
</asp:Content>
