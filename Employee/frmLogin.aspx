<%@ Page Language="C#" MasterPageFile="~/Employee/SimpleMasterPage.master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<%--    <div style="border:1px; margin-top:130px; border-color:Red; border-style:solid; width:260px; height:150px">
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 325px">
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
                <asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana; text-align: left;">
                Password:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top">
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/alertIconWin.gif" Height="20px" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                    Width="238px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit1" runat="server" OnClick="btnSubmit_Click" Text="Submit" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="Button11" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    OnClick="Button1_Click" Text="Back" /></td>
        </tr>
    </table>
    </div> --%>

                        <p class="muted text-center">
                            Enter your username and password
                        </p>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    
                        <%--<input type="text" placeholder="Username" class="input-block-level">
                        <input type="password" placeholder="Password" class="input-block-level">
                        <button class="btn btn-large btn-primary btn-block" type="submit">Sign in</button>--%>
</asp:Content>
