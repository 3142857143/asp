<%@ Page Language="vb" MasterPageFile="~/main.Master" AutoEventWireup="false" CodeBehind="Practical-14.aspx.vb" Inherits="WebApplication1.Practical_14" %>

<asp:Content ID="p14" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    </head>
    <asp:Label ID="lblP14" runat="server" Text="Practical-14" 
    CssClass="clsPracLabel"></asp:Label>
    <br />
    <asp:Label ID="lblP14_Aim" runat="server"      
        Text="Make a web application to make connection to database and insert your details into database using ExecuteNonQuery method. (Details to insert: ID, Full name, Gender, Hobby, Department, City, Mobile." 
        CssClass="clsPracAim"></asp:Label>
    <br />
    <br />
    <table class="style1" border="1" cellpadding="5">
        <tr>
            <td colspan="2" class="style23">
                <strong>To Insert record into DB, Click Submit button after data entry.</strong></td>
        </tr>
        <tr valign="middle">
            <td class="style27" valign="middle">
                ID:</td>
            <td valign="middle">
                <asp:TextBox ID="txtID" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style27" valign="middle">
                Full Name:</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style27" valign="middle">
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
            <td class="style27" valign="middle">
                Hobby</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtHobby" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style27" valign="middle">
                Department</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtDepartment" runat="server" BorderStyle="Solid" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style25" valign="middle">
                City</td>
            <td class="style15" valign="middle">
                <asp:TextBox ID="txtCity" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style27" valign="middle">
                Mobile</td>
            <td class="style24" valign="middle">
                <asp:TextBox ID="txtMobile" runat="server" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr valign="middle">
            <td class="style26" valign="middle">
                &nbsp;</td>
            <td class="style24" valign="middle">
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="Submit" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
        <tr valign="middle">
            <td class="style26" valign="middle">
                &nbsp;</td>
            <td class="style24" valign="middle">
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#000066" style="color: #0000CC"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style20
    {
        width: 204px;
    }
    .style21
    {
        height: 23px;
        width: 204px;
        font-weight: bold;
        font-family: Cambria;
        font-size: medium;
        color: #0000CC;
    }
    .style22
    {
        width: 204px;
        font-weight: bold;
        font-family: Cambria;
        font-size: medium;
        color: #0000CC;
    }
        .style23
        {
            font-size: large;
            color: #660066;
        }
        .style24
        {
            width: 720px;
            font-weight: bold;
            font-family: Cambria;
            font-size: medium;
            color: #0000CC;
        }
        .style25
        {
            height: 23px;
            width: 171px;
            font-weight: bold;
            font-family: Cambria;
            font-size: medium;
            color: #0000CC;
            text-align: left;
        }
        .style26
        {
            width: 171px;
        }
        .style27
        {
            width: 171px;
            font-weight: bold;
            font-family: Cambria;
            font-size: medium;
            color: #0000CC;
        }
    </style>
</asp:Content>
