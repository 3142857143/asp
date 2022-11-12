<%@ Page Language="vb" AutoEventWireup="false"  CodeBehind="Practical-8.aspx.vb" Inherits="WebApplication1.Practical_8" MasterPageFile="~/main.Master" %>

<asp:Content ID="C6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>

    <asp:Label ID="lblP6" runat="server" Text="Practical-8" CssClass="clsPracLabel"></asp:Label>
    <br class="style5" />
    <asp:Label ID="lblP6_Aim" runat="server"      
        Text="Create a web page using the concept of Theme &amp; Skin in ASP.NET." 
        CssClass="clsPracAim"></asp:Label>

    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style15">
                <strong>Choose Theme:&nbsp;
                <br />
                </strong>
                <asp:RadioButton ID="rbRed" runat="server" GroupName="selectTheme" 
                    Text="Red" AutoPostBack="True" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#003300" />
                <br />
                <asp:RadioButton ID="rbBlue" runat="server" GroupName="selectTheme" 
                    Text="Blue" AutoPostBack="True" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#003300" />
                <br />
                <asp:RadioButton ID="rbGreen" runat="server" GroupName="selectTheme" 
                    Text="Green" AutoPostBack="True" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#003300" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button-1" BackColor="#FFFF66" 
                    Font-Bold="True" ForeColor="Red" />
                <asp:Button ID="Button2" runat="server" Text="Button-2" SkinID="bcode"/>
                <asp:Button ID="Button3" runat="server" Text="Button-3" />
                <asp:Button ID="Button4" runat="server" Text="New" />
                <asp:Button ID="Button5" runat="server" Text="Button" />
            </td>
        </tr>
    </table>

    <br class="style5" />
    <br class="style5" />
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style15
        {
            font-family: Cambria;
            color: #000066;
            font-size: large;
        }
    </style>
    </asp:Content>


