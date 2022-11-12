<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Practical-4.aspx.vb" Inherits="WebApplication1.Practical_4" MasterPageFile="~/main.Master" %>

<asp:Content ID="C4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <asp:Label ID="lblP4" runat="server" Font-Bold="True" Font-Names="Cambria" 
    Font-Underline="True" ForeColor="#3333CC" Text="Practical-4"></asp:Label>
<br />
<asp:Label ID="lblP4_Aim" runat="server" Font-Bold="True" Font-Names="Cambria" 
    ForeColor="#9933FF" 
    Text="Create a web form where user enters following marks. ASP.NET, JAVA, ENS, ICN (Out of 100). When user submits the marks, numeric value validation must be done. On entering marks, the grade should be displayed in message box."></asp:Label>

    <br />
    <br />
    <asp:Label ID="Label1" runat="server" BorderColor="Red" BorderStyle="None" 
        Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="#0000CC" 
        Text="Marks Entry Form"></asp:Label>
    <br />
    <table class="style1">
        <tr>
            <td class="style17">
                Subject</td>
            <td class="style19">
                Marks Entry (Out of 100)</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                ASP.NET&nbsp;</td>
            <td class="style16">
                <asp:TextBox ID="txtNet" runat="server" BorderStyle="None" Width="195px"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtNet" ErrorMessage="Marks in range of 0 to 100." 
                    ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                JAVA</td>
            <td class="style16">
                <asp:TextBox ID="txtJava" runat="server" BorderStyle="None" Width="195px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                ENS</td>
            <td class="style16">
                <asp:TextBox ID="txtENS" runat="server" BorderStyle="None" Width="195px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                ICN</td>
            <td class="style16">
                <asp:TextBox ID="txtICN" runat="server" BorderStyle="None" Width="195px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            </td>
        </tr>
    </table>

    <br />
    <asp:Panel ID="panelMarksheet" runat="server" 
        style="font-family: Cambria; background-color: #FFFF99" Visible="False">
        <table class="style1">
            <tr>
                <td class="style20" colspan="3">
                    <strong>MARKSHEET</strong></td>
            </tr>
            <tr>
                <td class="style21">
                    Subject Name</td>
                <td class="style21">
                    Obtain Marks</td>
                <td class="style21">
                    Obtain Grade</td>
            </tr>
            <tr>
                <td>
                    ASP.NET</td>
                <td>
                    <asp:Label ID="lbl_M_Net" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_G_Net" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    JAVA</td>
                <td>
                    <asp:Label ID="lbl_M_Java" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_G_Java" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    ENS</td>
                <td>
                    <asp:Label ID="lbl_M_ENS" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_G_ENS" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    ICN</td>
                <td>
                    <asp:Label ID="lbl_M_ICN" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_G_ICN" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style15
        {
            font-family: Cambria;
            font-weight: bold;
        }
        .style16
        {
            width: 195px;
            font-family: Cambria;
            font-weight: bold;
        }
        .style17
        {
            width: 118px;
            font-family: Cambria;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #663300;
        }
        .style18
        {
            width: 118px;
            font-family: Cambria;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #0000CC;
        }
        .style19
        {
            width: 195px;
            font-family: Cambria;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #663300;
        }
        .style20
        {
            text-align: center;
            font-size: xx-large;
            color: #000066;
        }
        .style21
        {
            font-size: large;
            font-weight: bold;
            color: #800000;
        }
    </style>
</asp:Content>
