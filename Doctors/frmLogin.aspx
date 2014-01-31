<%@ Page Language="C#" MasterPageFile="~/Doctors/SimpleMasterPage.master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div style="text-align:center">
    <div style="border:1px; margin-top:130px; border-color:Red; border-style:solid; width:228px; height:150px">
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 267px">
        <tr style="background-color:red">
            <td align="center" colspan="2">
                <strong><span style="font-size: 16pt; color: white">LOGIN</span></strong></td>
        </tr>
        <tr >
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana; text-align: left;">
                User Name:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana; text-align: left;">
                Password:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top" style="height: 6px">
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/alertIconWin.gif" Height="21px" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                    Width="212px" Font-Names="Verdana"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    OnClick="Button1_Click" Text="Back" /></td>
        </tr>
    </table>
    </div> 
</asp:Content>
