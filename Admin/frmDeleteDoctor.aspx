<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteDoctor.aspx.cs" Inherits="Admin_frmDeleteDoctor" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" style="width: 70px">
        <tr>
            <td colspan="1" style="text-align: center; width: 320px;">
              
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align: center; ">
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">
                    Doctor Deletion</span></strong></td>
        </tr>
        <tr>
            <td colspan="1" align="center" style="width: 320px; height: 24px;">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="360px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 320px; height: 139px;">
                <table cellpadding="0" cellspacing="0" style="width: 112%">
                    <tr>
                        <td style="width: 8919%">
                            Doctor Id:
                        </td>
                        <td style="width: 221%">
                            <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlId_SelectedIndexChanged"
                                Width="230px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 8919%">
                            Doctor Code:</td>
                        <td style="width: 221%">
                            <asp:TextBox ID="txtCode" runat="server" ReadOnly="True" Width="225px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 8919%">
                            Doctor Name:
                        </td>
                        <td style="width: 221%">
                            <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="225px">
</asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 8919%">
                            Specialist:
                        </td>
                        <td style="width: 221%">
                            <asp:TextBox ID="txtSpecialist" runat="server" ReadOnly="True" Width="224px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 8919%">
                        </td>
                        <td style="width: 221%; text-align: right">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align: center; width: 320px;">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

