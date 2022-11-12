<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Practical-6.aspx.vb" Inherits="WebApplication1.Practical_6" MasterPageFile="~/main.Master" %>

<asp:Content ID="C6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblP6" runat="server" Font-Bold="True" Font-Names="Cambria" 
    Font-Underline="True" ForeColor="#3333CC" Text="Practical-6" CssClass="style5"></asp:Label>
<br class="style5" />
<asp:Label ID="lblP6_Aim" runat="server" Font-Bold="True" Font-Names="Cambria" 
    ForeColor="#9933FF" 
    
        Text="Create a web application that illustrates the use of IsPostBack property of page class." 
        CssClass="style5"></asp:Label>

    <br class="style5" />
    <br class="style5" />
    <span class="style5"><span class="style15">As already explained, the Page_Load event fires every time a page is loaded. But sometimes you want code to run only the first time a page is loaded.
    <br />
    <strong>For example,</strong> if you want to populate a ListBox control when a page was loaded with the list of City, you would likely need to do that only the first time the page was loaded.
    If the visitor clicked a Button Control on the page, which caused the page to load again, you would not want this code to run a second time and to do so you have to use 
    </span>
    <span class="style16"><strong>"IsPostBack"</strong></span><span class="style15"> property of page class.
    </span>
    <br />
    </span>

    <li class="style5">
        To Demostrate the use of IsPostBack Property See below 2 ListBox control<br/>   
        <strong>&nbsp;&nbsp;&nbsp; --</strong>1st ListBox is without use of IsPostback Property so when button click it filled same City list twice and adding as per button click.
       <br/>
        <strong>&nbsp;&nbsp;&nbsp; --</strong>2nd ListBox use the IsPostBack Property so City list display only once..
        <br/>
        
        <br/>
            <table class="style1">
                <tr>
                    <td class="style17">
                        <strong>ListBox Without IsPostBack Property Used</strong></td>
                    <td class="style18">
                        <strong>ListBox With IsPostBack Property Used</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="lstWithoutP" runat="server" Font-Names="Cambria" 
                            Font-Size="Medium" Height="120px"></asp:ListBox>
                    </td>
                    <td>
                        <asp:ListBox ID="lstWithP" runat="server" Font-Names="Cambria" 
                            Font-Size="Medium" Height="122px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#000099" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="Lime" 
                    style="color: #FFFFFF; text-align: center;" CssClass="style5" />
                    </td>
                </tr>
            </table>
            <br/>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style15
        {
            color: #000066;
        }
        .style16
        {
            color: #FF3300;
        }
        .style17
        {
            font-size: large;
            color: #FF0000;
        }
        .style18
        {
            color: #FF3300;
            font-size: large;
        }
    </style>
</asp:Content>


