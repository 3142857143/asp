<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/main.Master" CodeBehind="Practical-11.aspx.vb" Inherits="WebApplication1.Practical_11" %>

<asp:Content ID="p11" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP10" runat="server" Text="Practical-11" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP10_Aim" runat="server"      
        Text="Develop a webpage to implement the concept of state management using Session." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="3">
                <p style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; font-family: Cambria; font-size: large; font-style: normal; font-weight: 700; margin: 0px 0px 12px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(0, 0, 204); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    In ASP.NET session is a state that is used to store and retrieve values of a 
                    user. It helps to identify requests from the same browser during a time period 
                    (session). It is used to store value for the particular time session. By 
                    default, ASP.NET session state is enabled for all ASP.NET applications.</p>
                <p style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; font-family: Cambria; font-size: large; font-style: normal; font-weight: 700; margin: 0px 0px 12px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(0, 0, 204); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    Session ID:
                    <asp:Label ID="lblSessionID" runat="server" ForeColor="Red"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="3" 
                
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #000066">
                Syntax:<br />
                <span class="style21">Session(&quot;name&quot;) = &quot;Vipul Gajjar&quot;</span></td>
        </tr>
        <tr valign="middle">
            <td class="style26" valign="middle">
                <strong><span class="style20">Enter your name:</span>&nbsp;</strong></td>
            <td class="style24" valign="middle" colspan="2">
                <strong>
                            <asp:TextBox ID="txtName" runat="server" BorderColor="#000066" 
                                BorderStyle="Solid" style="margin-left: 0px" Width="293px" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large"></asp:TextBox>
                        </strong>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style25" valign="middle" colspan="2">
                &nbsp;</td>
            <td class="style21" valign="middle">
                <asp:Button ID="btnSession" runat="server" Text="Store in Session" />
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style20
    {
        font-family: Cambria;
        font-size: x-large;
    }
        .style21
        {
            font-weight: normal;
        }
    </style>
</asp:Content>



