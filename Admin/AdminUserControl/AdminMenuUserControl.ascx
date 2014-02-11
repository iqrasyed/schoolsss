<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminMenuUserControl.ascx.cs" Inherits="Admin_AdminUserControl_AdminMenuUserControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%-- <asp:Menu ID="Menu4" runat="server" BackColor="Transparent" DynamicHorizontalOffset="2" Width="100%"
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="Black" StaticSubMenuIndent="10px" Font-Bold="True" Orientation="Horizontal" Height="23px" StaticEnableDefaultPopOutImage="False">
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <Items>
                    <asp:MenuItem Text="||" Value="||"></asp:MenuItem>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Admin/frmAdminHome.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Add" Value="Add">
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddEmployeeDetail.aspx" Text="Employee" Value="Employee">
                        </asp:MenuItem>
                      <asp:MenuItem NavigateUrl="~/Admin/frmAddDoctor.aspx" Text="Doctor" Value="Docotr"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmAddMedicine.aspx" Text="Medicine" Value="Medicine">
                                </asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmAddTest.aspx" Text="Test" Value="Test"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmAddSpecialist.aspx" Text="Specialist" Value="Specialist">
                                </asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmAddRoom.aspx" Text="Room" Value="Room"></asp:MenuItem>
                    </asp:MenuItem>

                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="#" Text="Manage" Value="Manage">
                        <asp:MenuItem NavigateUrl="~/Admin/frmCountryMaster.aspx" Text="Country" Value="Country">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmCityMaster.aspx" Text="City" Value="City"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmStateMaster.aspx" Text="State" Value="State"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Delete" Value="Delete">
                     <asp:MenuItem Text="Doctor" Value="Doctor" NavigateUrl="~/Admin/frmDeleteDoctor.aspx">
                            </asp:MenuItem>
                            <asp:MenuItem Text="Medicine" Value="Medicine" NavigateUrl="~/Admin/frmDeleteMedicine.aspx">
                            </asp:MenuItem>
                            <asp:MenuItem Text="Test" Value="Test" NavigateUrl="~/Admin/frmDeleteTest.aspx">
                            </asp:MenuItem>
                            <asp:MenuItem Text="Room" Value="Room" NavigateUrl="~/Admin/frmDeleteRoom.aspx">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Admin/frmDeleteSpecialist.aspx" Text="Specialist" Value="Specialist">
                            </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Search" Value="Search">
                     <asp:MenuItem Text="Doctor" Value="Doctor">
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmAllDoctor.aspx" Text="All Doctor" Value="All Doctor">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmDoctoronDiseases.aspx" Text="Doctor On Disease"
                                        Value="Doctor On Disease"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Medicine" Value="Medicine">
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmAllMedicine.aspx" Text="All Medicine"
                                        Value="All Medicine"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmMedicineBetweenDates.aspx" Text="Medicine Between Dates"
                                        Value="Medicine Between Dates"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmMedicineonDate.aspx" Text="Medicine On Dates"
                                        Value="Medicine On Dates"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmMedicineonPatient.aspx" Text="Medicine On Patient"
                                        Value="Medicine On Patient"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Test" Value="Test">
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmAllTests.aspx" Text="All Test" Value="All Test">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmTestCharges.aspx" Text="Test Charges"
                                        Value="Test Charges"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmTestonDate.aspx" Text="Test on Date"
                                        Value="Test on Date"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmTestonPatient.aspx" Text="Test on Patient"
                                        Value="Test on Patient"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmTestonTwoDates.aspx" Text="Test Between Two Dates"
                                        Value="Test Between Two Dates"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Room" Value="Room">
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmAllRooms.aspx" Text="All Room" Value="All Room">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin-Search/frmRoomsAvailable.aspx" Text="Room Avaliable"
                                        Value="Room Avaliable"></asp:MenuItem>
                                </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Admin/frmAdminLogout.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="||" Value="||"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            </asp:Menu>--%>

<ul id="menu" class="unstyled accordion collapse in">
    <li><a runat="server" href="~/Admin/frmAdminHome.aspx"><i class="icon-dashboard icon-large"></i> Dashboard</a></li>

    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-nav">
            <i class="icon-pencil icon-large"></i> Add <span class="label label-inverse pull-right">6</span>
        </a>
        <ul class="collapse " id="patient-nav">
            <li><a runat="server" href="~/Admin/frmAddEmployeeDetail.aspx"><i class="icon-angle-right"></i> Employee</a></li>
            <li><a runat="server" href="~/Admin/frmAddDoctor.aspx"><i class="icon-angle-right"></i> Doctor</a></li>
            <li><a runat="server" href="~/Admin/frmAddMedicine.aspx"><i class="icon-angle-right"></i> Medicen</a></li>
            <li><a runat="server" href="~/Admin/frmAddTest.aspx"><i class="icon-angle-right"></i> Test</a></li>
            <li><a runat="server" href="~/Admin/frmAddSpecialist.aspx"><i class="icon-angle-right"></i> Specialist</a></li>
            <li><a runat="server" href="~/Admin/frmAddRoom.aspx"><i class="icon-angle-right"></i> Room</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#medicen-nav">
            <i class="icon-pencil icon-large"></i> Manage<span class="label label-inverse pull-right">4</span>
        </a>
        <ul class="collapse " id="medicen-nav">
            <li><a runat="server" href="~/Admin/frmCountryMaster.aspx"><i class="icon-angle-right"></i> Country</a></li>
            <li><a runat="server" href="~/Admin/frmCityMaster.aspx"><i class="icon-angle-right"></i> City</a></li>
            <li><a runat="server" href="~/Admin/frmStateMaster.aspx"><i class="icon-angle-right"></i> State</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#delete-nav">
            <i class="icon-pencil icon-large"></i> Delete<span class="label label-inverse pull-right">5</span>
        </a>
        <ul class="collapse " id="delete-nav">
            <li><a id="A12" runat="server" href="~/Admin/frmDeleteDoctor.aspx"><i class="icon-angle-right"></i> Doctor</a></li>
            <li><a id="A13" runat="server" href="~/Admin/frmDeleteMedicine.aspx"><i class="icon-angle-right"></i> Medicin</a></li>
            <li><a id="A15" runat="server" href="~/Admin/frmDeleteTest.aspx"><i class="icon-angle-right"></i> Test</a></li>
            <li><a id="A16" runat="server" href="~/Admin/frmDeleteRoom.aspx"><i class="icon-angle-right"></i> Room</a></li>
            <li><a id="A14" runat="server" href="~/Admin/frmDeleteSpecialist.aspx"><i class="icon-angle-right"></i> Specialist</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#search-nav">
            <i class="icon-pencil icon-large"></i> Search<span class="label label-inverse pull-right">2</span>
        </a>
        <ul class="collapse " id="search-nav">
            <li><a runat="server" href="~/Admin-Search/frmAllDoctor.aspx"><i class="icon-angle-right"></i> All Room</a></li>
            <li><a runat="server" href="~/Admin-Search/frmDoctoronDiseases.aspx"><i class="icon-angle-right"></i> Avaliable Room</a></li>             
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#medicen1-nav">
            <i class="icon-pencil icon-large"></i> Medicen<span class="label label-inverse pull-right">4</span>
        </a>
        <ul class="collapse " id="medicen1-nav">
            <li><a id="A1" runat="server" href="~/Admin-Search/frmAllMedicine.aspx"><i class="icon-angle-right"></i> All Medicine</a></li>
            <li><a id="A2" runat="server" href="~/Admin-Search/frmMedicineBetweenDates.aspx"><i class="icon-angle-right"></i> Medicine Between Dates</a></li>
            <li><a id="A3"  runat="server" href="~/Admin-Search/frmMedicineonDate.aspx"><i class="icon-angle-right"></i> Mediciene On Date</a></li>
            <li><a id="A4" runat="server" href="~/Admin-Search/frmMedicineonPatient.aspx"><i class="icon-angle-right"></i> Patient Medicine</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#test-nav">
            <i class="icon-pencil icon-large"></i> Test<span class="label label-inverse pull-right">5</span>
        </a>
        <ul class="collapse " id="test-nav">
            <li><a id="A5" runat="server" href="~/Admin-Search/frmAllTests.aspx"><i class="icon-angle-right"></i> All Test</a></li>
            <li><a id="A6" runat="server" href="~/Admin-Search/frmTestCharges.aspx"><i class="icon-angle-right"></i> Test Charges</a></li>
            <li><a id="A7" runat="server" href="~/Admin-Search/frmTestonDate.aspx"><i class="icon-angle-right"></i> Test On Date</a></li>
            <li><a id="A8" runat="server" href="~/Admin-Search/frmTestonPatient.aspx"><i class="icon-angle-right"></i> Patient Test</a></li>
            <li><a id="A9" runat="server" href="~/Admin-Search/frmTestonTwoDates.aspx"><i class="icon-angle-right"></i> Test Between two Dates</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#room-nav">
            <i class="icon-pencil icon-large"></i> Room<span class="label label-inverse pull-right">2</span>
        </a>
        <ul class="collapse " id="room-nav">
             <li><a id="A10" runat="server" href="~/Admin-Search/frmAllRooms.aspx"><i class="icon-angle-right"></i> All Rooms</a></li>
            <li><a id="A11" runat="server" href="~/Admin-Search/frmRoomsAvailable.aspx"><i class="icon-angle-right"></i> Avaliable Room</a></li>
        </ul>
    </li>
    <li><a runat="server" href="~/Admin/frmDischarge.aspx"><i class="icon-table icon-large"></i> Discharge Patient</a></li>
    <li><a runat="server" href="~/Admin/frmChangePassword.aspx"><i class="icon-table icon-large"></i> Change Password</a></li>

</ul>
