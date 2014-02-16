<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultMenuUserControl.ascx.cs" Inherits="DefaultUserControl_DefaultMenuUserControl" %>
<%@ Register Src="../Admin/AdminUserControl/AdminMenuUserControl.ascx" TagName="AdminMenuUserControl"
    TagPrefix="uc1" %>
            <asp:Menu ID="Menu1" runat="server" BackColor="Transparent" DynamicHorizontalOffset="2"
                Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="Black" Orientation="Horizontal"
                StaticSubMenuIndent="10px" Width="100%" Height="25px">
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <Items>
                    <asp:MenuItem Text="||" Value="||"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>                                                    
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/frmAboutUs.aspx" Text="About Us" Value="About Us"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/frmContactUs.aspx" Text="Contact Us" Value="Contact Us">
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Login" Value="Login">                        
                        <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/Admin/Default.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Doctor" Value="Doctor" NavigateUrl="~/Doctors/frmLogin.aspx"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Employee/frmLogin.aspx" Text="Employee" Value="Employee"></asp:MenuItem> 
                        <asp:MenuItem NavigateUrl="~/frmPaitentHistoryN.aspx" Text="Paitent" Value="Paitent"></asp:MenuItem>                         
                    </asp:MenuItem> 
                    <asp:MenuItem Text="||" Value="||"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            </asp:Menu>
