<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmPrescription.aspx.cs" Inherits="Employee_frmPrescription" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <table align="center" style="width: 688px">
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Prescription</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="359px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Code:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:DropDownList ID="ddlCode" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList></td>            
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Name:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            
        </tr>    
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Prescription:</td>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">                
                <asp:TextBox ID="txtPres" runat="server" TextMode="MultiLine" Height="50px" Width="210px"></asp:TextBox>
                </td>            
        </tr>  
        <tr>
            <td colspan="25" style="text-align: center" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" Text="Prescription" Width="113px" 
                    OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" 
                    Font-Size="X-Small" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" > 
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

