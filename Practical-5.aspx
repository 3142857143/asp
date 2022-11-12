<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Practical-5.aspx.vb" Inherits="WebApplication1.Practical_5" MasterPageFile="~/main.Master" %>

<asp:Content ID="C5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblP5" runat="server" Font-Bold="True" Font-Names="Cambria" 
    Font-Underline="True" ForeColor="#3333CC" Text="Practical-5"></asp:Label>
<br />
<asp:Label ID="lblP5_Aim" runat="server" Font-Bold="True" Font-Names="Cambria" 
    ForeColor="#9933FF" 
    Text="Design a registration form using Web Server Controls. Set validations using properties. When data is submitted it must be viewed in the panel below the form."></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" BorderColor="Red" BorderStyle="None" 
        Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="#0000CC" 
        Text="Student Registration Form"></asp:Label>
    <br />
    <table class="style1">
        <tr>
            <td class="style17">
                UserName</td>
            <td class="style19">
                <asp:TextBox ID="txtUserName" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Username can't be blank.." 
                    Font-Names="Cambria" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    BackColor="Yellow" ControlToValidate="txtUserName" 
                    ErrorMessage="This field can't be empty." Font-Bold="True" 
                    Font-Underline="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Password</td>
            <td class="style19">
                <asp:TextBox ID="txtPassword" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Password and Confirm Password must match." Font-Names="Cambria" 
                    ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Confirm Password</td>
            <td class="style19">
                <asp:TextBox ID="txtConfirmPassword" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Full Name</td>
            <td class="style19">
                <asp:TextBox ID="txtFullName" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtFullName" ErrorMessage="Lengh must be &gt; 8" 
                    Font-Names="Cambria" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Birth Date</td>
            <td class="style19">
                <asp:DropDownList ID="dpDay" runat="server" Font-Names="Cambria" 
                    Font-Size="Large">
                </asp:DropDownList>
                <asp:DropDownList ID="dpMonth" runat="server" Font-Names="Cambria" 
                    Font-Size="Large">
                </asp:DropDownList>
                <asp:DropDownList ID="dpYear" runat="server" Font-Names="Cambria" 
                    Font-Size="Large">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Gender</td>
            <td class="style19">
                <asp:RadioButton ID="rdbMale" runat="server" Font-Names="Cambria" 
                    Font-Size="Large" GroupName="Gender" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbFemale" runat="server" Font-Names="Cambria" 
                    Font-Size="Large" GroupName="Gender" Text="Female" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Email ID</td>
            <td class="style19">
                <asp:TextBox ID="txtEmail" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Please Enter Valid Email ID" 
                    Font-Names="Cambria" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style17" rowspan="3">
                Address</td>
            <td class="style19">
                <asp:TextBox ID="txtAddress1" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                <asp:TextBox ID="txtAddress2" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                <asp:DropDownList ID="dpState" runat="server" Font-Names="Cambria" 
                    Font-Size="Large" AutoPostBack="True">
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Maharastra</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dpCity" runat="server" Font-Names="Cambria" 
                    Font-Size="Large">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                SSC Percentage(%)</td>
            <td class="style19">
                <asp:TextBox ID="txtPercentage" runat="server" BorderColor="Red" 
                    BorderStyle="Solid" Font-Names="Cambria" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtPercentage" 
                    ErrorMessage="Percentage must be in the range of 0-100" Font-Names="Cambria" 
                    ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Hobby</td>
            <td class="style19">
                <asp:CheckBoxList ID="chkHobbies" runat="server">
                    <asp:ListItem>Cricket</asp:ListItem>
                    <asp:ListItem>Reading</asp:ListItem>
                    <asp:ListItem>Travelling</asp:ListItem>
                </asp:CheckBoxList>
                &nbsp;<asp:CheckBox ID="chkOther" runat="server" AutoPostBack="True" 
                    Text="Other" />
                <br />
                <asp:TextBox ID="txtOther" runat="server" BorderColor="Red" BorderStyle="Solid" 
                    Font-Names="Cambria" Font-Size="Large" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="Red" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="Lime" 
                    style="color: #FFFFFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#000099" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="Lime" 
                    style="color: #FFFFFF" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Panel ID="pnlDisplay" runat="server" BorderColor="#000066" 
        BorderStyle="Solid" 
        style="font-family: Cambria; background-color: #FFCCFF" Visible="False">
        <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style15
        {
            font-family: Cambria;
            font-weight: bold;
        }
        .style17
        {
            width: 174px;
            font-family: Cambria;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #663300;
        }
        .style19
        {
            width: 300px;
            font-family: Cambria;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #666633;
        }
    </style>
</asp:Content>


