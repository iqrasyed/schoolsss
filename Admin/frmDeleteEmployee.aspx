<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteEmployee.aspx.cs" Inherits="Admin_frmDeleteEmployee" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" style="width: 490px">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">
                    Employee Deletion</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="272px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
        <br>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Employee CNIC:<br />
                <br />
                Employee Name:<br />
                <br />
            <td style="width: 100px">
                
                <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlId_SelectedIndexChanged"
                    Width="188px">
                </asp:DropDownList><BR />
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="213px"></asp:TextBox><BR />
<%--</contenttemplate>
                </asp:UpdatePanel>--%>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"
                    Width="61px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are U Sure ?"
                    TargetControlID="btnDelete">
                </cc1:ConfirmButtonExtender>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
