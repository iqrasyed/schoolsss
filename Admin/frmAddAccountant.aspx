<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddAccountant.aspx.cs" Inherits="Admin_frmAddAccountant" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>
    <table align="center" style="width: 537px" >
        <tr>
            <td colspan="3" align="center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="3">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">
                Accountant Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#0000C0"
                    Width="497px" Font-Names="Verdana"></asp:Label>
                <br />
                <span style="color: #ff3300"></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <span style="color: #ff3300; font-size: 8pt; font-family: Verdana;"><strong>Please Enter The * Value</strong></span></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="3">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Account CNIC:</strong></span></td>
            <td width="60%" style="height: 26px">
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox></td>
            <td style="height: 26px; width: 3px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Account Name:</strong></span></td>
            <td >
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td style="width: 3px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td style="width: 3px" >
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>Contact No.:</strong></td>
            <td>
                <asp:TextBox ID="txtContact" runat="server" Width="147px"></asp:TextBox></td>
            
        </tr>
        
            
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Salary:</strong></span></td>
            <td >
                <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox></td>
            <td style="width: 3px" >                
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                &nbsp;</td>
            <td width="60%">
                &nbsp;</td>
            <td style="width: 3px" >
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>User Name:</strong></td>
            <td width="60%">
                <asp:TextBox ID="txtUName" runat="server" Width="146px"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>Password:</strong></td>
            <td width="60%">
                <asp:TextBox ID="txtPassword" runat="server" Width="146px"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td colspan="2" style="text-align: right">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="76px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="64px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" CausesValidation="False" /></td>
            <td colspan="1" style="text-align: center; width: 3px;">
            </td>
        </tr>
    </table>
</asp:Content>

