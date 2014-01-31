<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmAdminLogin.aspx.cs" Inherits="Admin_frmAdminLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
    <div style="border:1px; margin-top:130px; border-color:Red; border-style:solid; width:260px; height:150px">
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 309px">
        <tr style="background-color:red">
            <td align="center" colspan="2">
                <strong><span style="font-size: 16pt; color: white">LOGIN</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                User Name:</strong></span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 19px">
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Password:</strong></span></td>
            <td style="width: 100px; height: 19px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top">
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/alertIconWin.gif" Height="17px" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                    Width="249px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" 
                    Text="Submit" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" 
                    style="height: 20px" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    OnClick="Button1_Click" Text="Back" /></td>
        </tr>
    </table>
    </div> 
</asp:Content>

