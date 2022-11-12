<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Practical-7.aspx.vb" Inherits="WebApplication1.Practical_7" MasterPageFile="~/main.Master" %>

<asp:Content ID="C7" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<head>
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
</head>
    <style type="text/css">
        p
        {
        	font-size:0.3in;color:yellow
        }
        .btn
        {
        	cursor:hand;color:red
        }
         .btnNew
        {
        	cursor:hand;color:blue;font-family:Cambria;background:Yellow
        }
        .style24
        {
            font-size: small;
        }
        .style25
        {
            border-style: solid;
            border-color: #0000FF;
            width: 340px;
            font-size: medium;
            font-family: Cambria;
            color: #FF3300;
        }
        .style26
        {
            border-style: solid;
            border-color: #0000FF;
            width: 442px;
            font-family: Cambria;
            color: #FF3300;
        }
        .style27
        {
            width: 442px;
            font-size: medium;
        }
        .style28
        {
            width: 458px;
            font-size: medium;
        }
        .style29
        {
            width: 340px;
            font-size: medium;
        }
        .style30
        {
            font-size: medium;
        }
    </style>
    <asp:Label ID="lblP6" runat="server" Text="Practical-7" CssClass="clsPracLabel">
     </asp:Label>
<br class="style5" />
<asp:Label ID="lblP6_Aim" runat="server" 
        Text="Create a web page using the concept of Cascading Style Sheets in ASP.NET." 
        CssClass="clsPracAim"></asp:Label>

    <br />
    <br class="style15" />
    <span class="style15"><span class="style30">Cascading Style concept is very useful in web development.</span></span><span 
        class="style30"><br 
        class="style15" />
    </span>
    <span class="style15"><span class="style30">When you want similar kind of formatting for any text or 
    controls over multiple webpages then you can create formatting class in .CSS 
    file and call that class to text or controls to apply the format. (This will 
    save lot of time when similar formatting is applied)<br />
    <br />
    There are 3 types of Cascading Style Sheets(CSS)</span><br />
    <table border="1" class="style1" frame="border" 
        style="border-style: solid; border-color: #0000FF;">
        <tr>
            <td class="style25">
                <strong>1. Inline CSS</strong></td>
            <td class="style17" style="border-color: #0000FF; border-style: solid">
                <strong><span class="style30">2. Internal CSS</span></strong><span 
                    class="style30"></td>
            <td class="style26">
                </span><strong><span class="style30">3. External CSS</span></strong></td>
        </tr>
        <tr class="style24">
            <td class="style29" style="border-color: #0000FF; border-style: solid">
                Inline CSS means applying the code directly on tags using <strong>STYLE</strong> 
                attribute</td>
            <td class="style28" style="border-color: #0000FF; border-style: solid">
                Internal CSS means applying the codes on the specified tags or create a named 
                style that can be applied to any kind of tags. Such styles are are created in 
                &lt;STYLE&gt; tag under &lt;HEAD&gt; section. To create the named styles use . along with 
                some name called as class name. Use </span>
    <span class="style11"><strong>CLASS</strong></span><span class="style15"> attribute on tags 
                to apply that class.</td>
            <td class="style27" style="border-color: #0000FF; border-style: solid">
                External CSS means placing the CSS codes in some .css file and use that file in 
                multiple web pages using </span>
    <span class="style11"><strong>&lt;LINK&gt;</strong></span><span class="style15"> tag.<br />
                To create a CSS file use Wesite-&gt;Add new item-&gt;Stylesheet</td>
        </tr>
    </span>
    <span class="style23">
        <tr class="style24">
            <td class="style29" style="border-color: #0000FF; border-style: solid" 
                valign="top">
    </span>
                <strong>
    <span class="style23">Syntax</span><span class="style15"><br />
                &lt;h1 style=&quot;font-size:0.3in;color:red&quot;&gt;</span></strong><span class="style15"></td>
            <td class="style28" style="border-color: #0000FF; border-style: solid" 
                valign="top">
                <strong>
    <span class="style23">Syntax</span><span class="style15"><br />
                &lt;head runat=&quot;Server&quot;&gt;<br />
                &lt;title&gt;Internal CSS Page&lt;/title&gt;<br />
                &lt;style type=&quot;text/css&quot;&gt;<br />
&nbsp;&nbsp; p{font-size:0.3in;<span class="style5">color:blue</span>}<br />
&nbsp; .btn{cursor:hand;color:red}<br />
                &lt;/style&gt;&lt;/head&gt;<br />
                <br />
                &lt;p&gt;Internal CSS Demo&lt;/p&gt;<br />
                &lt;input id:&quot;b1&quot; 
                type=&quot;button&quot; class=&quot;btn&quot; value=&quot;Internal CSS Demo&quot; 
                class=&quot;btn&quot;/&gt;</span></strong></td>
            <td class="style27" style="border-color: #0000FF; border-style: solid" 
                valign="top">
                <strong>
    <span class="style23">Syntax<br />
                </span>
    <span class="style15">&lt;LINK href=&quot;&lt;path of .CSS file&quot; rel=&quot;styleshyeet&quot; 
                type=&quot;text/css&quot;&gt;<br />
                </span></strong></td>
        </tr>
        <tr>
            <td class="style21" style="border-color: #0000FF; border-style: solid">
                <h1 style="font-size:0.3in;color:red; font-family: cambria;background-color:Green">INLINE CSS DEMO</h1>
            </td>
            <td class="style21" style="border-color: #0000FF; border-style: solid">
                <p>Internal CSS Demo</p>
                <p>New Paragraph</p>
                &nbsp;<input id:"b1" type="submit" class="btn" value="Internal CSS Demo" />
                &nbsp;<input id:"b1" type="submit" class="btnNew" value="New Button" />
            </td>
            <td class="style20" style="border-color: #0000FF; border-style: solid">
                <asp:Label ID="Label1" runat="server" Text="External CSS Demo" CssClass="clsPracLabel"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="clsPracAim"></asp:Label>
            </td>
        </tr>
    </table>
    </span>
    <br class="style5" />
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style15
        {
            font-family: Cambria;
            color: #000066;
        }
        .style17
        {
            font-family: Cambria;
            color: #660066;
            width: 458px;
        }
        .style19
        {
            width: 340px;
        }
        .style20
        {
            width: 442px;
        }
        .style21
        {
            width: 458px;
        }
        .style23
        {
            font-family: Cambria;
            color: #CC0000;
        }
    </style>
</asp:Content>


