<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/main.Master" CodeBehind="Practical-12.aspx.vb" Inherits="WebApplication1.Practical_12" %>

<asp:Content ID="p12" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    
        <script language="javascript" type="text/javascript">
// <![CDATA[

            function Button1_onclick() {

            }

// ]]>
        </script>
</head>
    <asp:Label ID="lblP10" runat="server" Text="Practical-12" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP10_Aim" runat="server"      
        Text="Develop a webpage to implement the concept of state management using ViewState &amp; QueryString." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="4">
                <p style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; font-family: Cambria; font-size: large; font-style: normal; font-weight: 700; margin: 0px 0px 12px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(0, 0, 204); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td colspan="2" 
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #000066">
                ViewState 
                - Works for single page only<br />
                </td>
            <td colspan="2" 
                style="font-size: x-large; font-family: Cambria; color: #FFFFFF; font-weight: 700; background-color: #FF0000" 
                valign="top">
                QueryString<br />
                </td>
        </tr>
        <tr>
            <td colspan="2" 
                
                style="color: #FFFFFF; font-family: Cambria; font-weight: 700; font-size: x-large; background-color: #FF0000" 
                valign="top">
                Syntax<br />
                <span class="style20">ViewState(&quot;name&quot;) = “Vipul Gajjar”</span></td>
            <td colspan="2" 
                style="font-size: x-large; font-family: Cambria; color: #FFFFFF; font-weight: 700; background-color: #000066" 
                valign="top">
                Syntax<br />
                <span class="style27">Response.Redirect(&quot;test.aspx?name=Vipul 
                Gajjar&amp;city=Rajkot&quot;)</span><br />
                </td>
        </tr>
        <tr valign="middle">
            <td class="style24" valign="middle">
                <span class="style26">
                <strong>Enter your name:-&nbsp;</strong></td>
            <td class="style22" valign="middle">
                <strong>
                            <asp:TextBox ID="txtName" runat="server" BorderColor="#000066" 
                                BorderStyle="Solid" style="margin-left: 0px" Width="293px" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large"></asp:TextBox>
                        </strong>
                <asp:Label ID="lblViewState" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="style23" valign="middle">
                <strong><span class="style26">Enter your city:</span>&nbsp;</strong></td>
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
                <asp:Button ID="btnViewState" runat="server" Text="Store in ViewState" />
            </td>
            <td class="style21" valign="middle" colspan="2">
                <asp:Button ID="btnQueryString" runat="server" Text="Use of QueryString" />
                </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style20
    {
        width: 547px;
    }
    .style21
    {
        width: 531px;
    }
    .style22
    {
        width: 514px;
    }
    .style23
    {
        width: 287px;
    }
    .style24
    {
        width: 182px;
    }
    .style25
    {
        width: 547px;
        font-family: Cambria;
    }
    .style26
    {
        width: 547px;
        font-family: Cambria;
        font-size: large;
    }
        .style27
        {
            font-size: large;
        }
    </style>
</asp:Content>


