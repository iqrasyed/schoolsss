<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAddMedicineOnPatient.aspx.cs" Inherits="Employee_frmAddMedicineOnPatient" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" >
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana;">Medicine Charges</span></strong></td>
        </tr> 
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="250px" CssClass="label"></asp:Label></td>
        </tr>      
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Patient Code:</td>
            <td style="width: 217px">
                <asp:DropDownList ID="ddlPatientCode" runat="server" Width="153px" 
                    onselectedindexchanged="ddlPatientCode_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
       
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Paitent Name:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        
        
        <tr>
            <td style="text-align: center;" colspan="2">
                &nbsp;&nbsp;
                </td>
        </tr>
       
    </table>
</asp:Content>

