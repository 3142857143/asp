<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-16.aspx.vb" Inherits="WebApplication1.Practical_16" %>

<asp:Content ID="p16" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP16" runat="server" Text="Practical-16" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP16_Aim" runat="server"      
        Text="Create a web application to update and delete the record using ExecuteNonQuery method." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="2" class="style22">
                <strong>Select ID from the dropdown and then update or delete tht ID by click of 
                button.</strong></td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                ID:</td>
            <td valign="middle">
                <asp:DropDownList ID="dpID" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                Full Name:</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                Gender</td>
            <td class="style24" valign="middle">
                <asp:RadioButton ID="rdbMale" runat="server" CssClass="bold" GroupName="Gender" 
                    Text="Male" />
&nbsp;&nbsp;
                <asp:RadioButton ID="rdbFemale" runat="server" CssClass="bold" 
                    GroupName="Gender" Text="Female" />
            </td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                Hobby</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtHobby" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                Department</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtDepartment" runat="server" BorderStyle="Solid" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                City</td>
            <td class="style15" valign="middle">
                <asp:TextBox ID="txtCity" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style23" valign="middle">
                Mobile</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtMobile" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style25" valign="middle">
                &nbsp;</td>
            <td class="style24" valign="middle">
                <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="Update" 
                    style="color: #FFFFFF; background-color: #000066" />
                <asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="Delete" 
                    style="color: #FFFFFF; background-color: #CC0000" />
            </td>
        </tr>
        <tr valign="middle">
            <td class="style25" valign="middle">
                &nbsp;</td>
            <td class="style24" valign="middle">
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#000066"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style20
        {
            font-weight: bold;
            width: 174px;
        }
        .style21
        {
            font-weight: bold;
            width: 174px;
            color: #0000CC;
        }
        .style22
        {
            font-size: large;
            color: #660066;
        }
        .style23
        {
            font-weight: bold;
            width: 326px;
            color: #0000CC;
            text-align: right;
            font-family: Cambria;
        }
        .style24
        {
            font-weight: bold;
            width: 720px;
        }
        .style25
        {
            font-weight: bold;
            width: 326px;
        }
    </style>
</asp:Content>

