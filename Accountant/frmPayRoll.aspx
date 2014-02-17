<%@ Page Language="C#" MasterPageFile="~/Accountant/MasterPage.master" AutoEventWireup="true" CodeFile="frmPayRoll.aspx.cs" Inherits="Accountant_frmPayRoll" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="1" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                Show List of Doctors</span></strong></td>
        </tr>
        <tr>
            <td colspan="1" style="text-align: center; height: 24px;">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="323px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" width="60%">
                <asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Width="124px" Text="Calculate Pay"></asp:Button> <asp:Button id="btnS" onclick="btnS_Click" runat="server" Width="124px" Text="Send Salary"></asp:Button> <BR /><BR /><asp:GridView id="GridView1" runat="server" Width="760px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="92px">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Left" Font-Bold="True"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView> 
</contenttemplate>
    </asp:UpdatePanel></td>
        </tr>
    </table>
</asp:Content>

