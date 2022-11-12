<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/main.Master" CodeBehind="Practical-10.aspx.vb" Inherits="WebApplication1.Practical_101" %>

<asp:Content ID="p10" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP10" runat="server" Text="Practical-10" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP10_Aim" runat="server"      
        Text="Develop a webpage to implement the concept of state management using Cookies." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="4">
                <p style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; font-family: Cambria; font-size: large; font-style: normal; font-weight: 700; margin: 0px 0px 12px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(0, 0, 204); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    Cookies is a small pieces of text information which is stored on user hard drive 
                    using users browser for identify users. It may contain username, ID, password or 
                    any information. Cookie does not use server memory. It has 2 types as mention 
                    below.</p>
            </td>
        </tr>
        <tr>
            <td colspan="2" 
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #000066">
                Persistence Cookie<br />
                <span class="style20">This types of cookies are permanently stored on user hard 
                drive. Cookies which have an expiry date time are called persistence cookes. 
                This types of cookies stored user hard drive permenently till the date time we 
                set. Example to create persistence cookie</span></td>
            <td colspan="2" 
                style="font-size: x-large; font-family: Cambria; color: #FFFFFF; font-weight: 700; background-color: #FF0000" 
                valign="top">
                Non-Persistence Cookie<br />
                <span class="style20">This types of cookies are not permanently stored on user 
                hard drive. It stores the information up the user accesng the same browser. When 
                user close the browser the cookies will be automatically deleted.</span></td>
        </tr>
        <tr>
            <td colspan="2" 
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #FF0000">
                Syntax<br />
                <span class="style20">Response.Cookies(“name”).Value = “Vipul Gajjar”<br />
                Response.Cookies(“name”).Expires = DateTime.Now.AddSeconds(10)</span></td>
            <td colspan="2" 
                style="font-size: x-large; font-family: Cambria; color: #FFFFFF; font-weight: 700; background-color: #000066" 
                valign="top">
                Syntax<br />
                <span class="style20">Response.Cookies(“city”).Value = “Ahmedabad”</span></td>
        </tr>
        <tr valign="middle">
            <td class="style26" valign="middle">
                <strong><span class="style20">Enter your name:</span>&nbsp;</strong></td>
            <td class="style24" valign="middle">
                <strong>
                            <asp:TextBox ID="txtName" runat="server" BorderColor="#000066" 
                                BorderStyle="Solid" style="margin-left: 0px" Width="293px" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large"></asp:TextBox>
                        </strong>
            </td>
            <td class="style21" valign="middle">
                <strong><span class="style20">Enter your city:</span>&nbsp;</strong></td>
            <td>
                <strong>
                            <asp:TextBox ID="txtCity" runat="server" BorderColor="#000066" 
                                BorderStyle="Solid" style="margin-left: 0px" Width="293px" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large"></asp:TextBox>
                        </strong>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style25" valign="middle" colspan="2">
                <asp:Button ID="btnPersistenece" runat="server" Text="Persistenece" />
            </td>
            <td class="style21" valign="middle" colspan="2">
                <asp:Button ID="btnNonPersistenece" runat="server" Text="Non-Persistenece" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style20
        {
            font-size: medium;
        }
    </style>
</asp:Content>

