<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftPanelWebUserControl.ascx.cs" Inherits="Employee_EmployeeUserControl_LeftPanelWebUserControl" %>
<%--<asp:Menu ID="Menu1" runat="server" ForeColor="Black"
                 Font-Bold="True" Orientation="Horizontal" Font-Names="Verdana" Font-Size="X-Small" Width="100%" Height="20px" StaticEnableDefaultPopOutImage="False">
                <DynamicHoverStyle BorderColor="White" BorderStyle="Solid"
                    BorderWidth="1px" Font-Bold="True" Width="100px" />
                <DynamicSelectedStyle BorderStyle="Solid" Font-Bold="False"
                    ForeColor="Snow" />
                <DynamicMenuItemStyle BorderStyle="Solid" Font-Bold="True"
                    ForeColor="Black" />
                <Items>
                    <asp:MenuItem Text="||" Value="||"></asp:MenuItem>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Add" Value="Add">
                        <asp:MenuItem NavigateUrl="~/Employee/frmAddDoctorOnPatient.aspx" Text="Doctor on Patient"
                            Value="Docotr"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Employee/frmAddMedicineOnPatient.aspx" Text="Medicine on Patient"
                            Value="Medicine"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Employee/frmAddPatient.aspx" Text="New Patient" Value="Test">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Employee/frmMedicineCharges.aspx" Text="Medicine Charge"
                            Value="Room"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Employee/frmRoomCharge.aspx" Text="Room Charge" Value="Country">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Employee/frmTestCharge.aspx" Text="Test Charge" Value="State">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Search" Value="Search">
                      <asp:MenuItem Text="Doctors" Value="Doctors" NavigateUrl="~/Employee/Search/frmAllDoctor.aspx" >
                        </asp:MenuItem>
                        <asp:MenuItem Text="Medicine" Value="Medicine">
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmAllMedicine.aspx" Text="All Medicine"
                                Value="All Medicine"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmMedicineBetweenDates.aspx" Text="Medicine Between Dates"
                                Value="Medicine Between Dates"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmMedicineonDate.aspx" Text="Medicine On Dates"
                                Value="Medicine On Dates"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmMedicineonPatient.aspx" Text="Medicine On Patient"
                                Value="Medicine On Patient"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Test" Value="Test">
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmAllTests.aspx" Text="All Test" Value="All Test">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmTestCharges.aspx" Text="Test Charges"
                                Value="Test Charges"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmTestonDate.aspx" Text="Test on Date"
                                Value="Test on Date"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmTestonPatient.aspx" Text="Test on Patient"
                                Value="Test on Patient"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmTestonTwoDates.aspx" Text="Test Between Two Dates"
                                Value="Test Between Two Dates"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Room" Value="Room">
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmAllRooms.aspx" Text="All Room" Value="All Room">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmRoomsAvailable.aspx" Text="Room Avaliable"
                                Value="Room Avaliable"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Patient" Value="Patient">
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmPatientAdmissionDate.aspx" Text="Admit on Date"
                                Value="Admit on Date"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmPatientBettwoDates.aspx" Text="Between Two Date"
                                Value="Between Two Date"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmPatientBlgsDoctor.aspx" Text="Belong to Doctor"
                                Value="Belong to Doctor"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmPatientInRoom.aspx" Text="In Room"
                                Value="In Room"></asp:MenuItem>
                     </asp:MenuItem>
                    </asp:MenuItem>
                    
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Discharge" Value="Discharge">
                    <asp:MenuItem NavigateUrl="~/Employee/frmDischarge.aspx" Text="Patient" Value="Patient Info">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Employee/frmChangePassword.aspx" Text="Change Password"
                        Value="Change Password"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Employee/frmEmpLogout.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="||" Value="||"></asp:MenuItem>
                </Items>
            </asp:Menu>--%>



<ul id="menu" class="unstyled accordion collapse in">
    <li><a runat="server" href="~/Employee/frmEmployeeHome.aspx"><i class="icon-dashboard icon-large"></i> Dashboard</a></li>

    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-nav">
            <i class="icon-pencil icon-large"></i> Add Patient Record <span class="label label-inverse pull-right">6</span>
        </a>
        <ul class="collapse " id="patient-nav">
            <li><a runat="server" href="~/Employee/frmAddDoctorOnPatient.aspx"><i class="icon-angle-right"></i>Doctor on Patient</a></li>
            <li><a runat="server" href="~/Employee/frmAddMedicineOnPatient.aspx"><i class="icon-angle-right"></i>Medicine on Patient</a></li>
            <li><a runat="server" href="~/Employee/frmAddPatient.aspx"><i class="icon-angle-right"></i>New Patient</a></li>
            <li><a runat="server" href="~/Employee/frmMedicineCharges.aspx"><i class="icon-angle-right"></i>Medicine Charge</a></li>
            <li><a runat="server" href="~/Employee/frmRoomCharge.aspx"><i class="icon-angle-right"></i>Room Charge</a></li>
            <li><a runat="server" href="~/Employee/frmTestCharge.aspx"><i class="icon-angle-right"></i>Test Charge</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#medicen-nav">
            <i class="icon-pencil icon-large"></i> Medicen Record <span class="label label-inverse pull-right">4</span>
        </a>
        <ul class="collapse " id="medicen-nav">
            <li><a runat="server" href="~/Employee/Search/frmAllMedicine.aspx"><i class="icon-angle-right"></i>All Medicine</a></li>
            <li><a runat="server" href="~/Employee/Search/frmMedicineBetweenDates.aspx"><i class="icon-angle-right"></i>Medicine Between Dates</a></li>
            <li><a runat="server" href="~/Employee/Search/frmMedicineonDate.aspx"><i class="icon-angle-right"></i>Medicine On Dates</a></li>
            <li><a runat="server" href="~/Employee/Search/frmMedicineonPatient.aspx"><i class="icon-angle-right"></i>Medicine On Patient</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#room-nav">
            <i class="icon-pencil icon-large"></i> Medicen Record <span class="label label-inverse pull-right">2</span>
        </a>
        <ul class="collapse " id="room-nav">
            <li><a runat="server" href="~/Employee/Search/frmAllRooms.aspx"><i class="icon-angle-right"></i>All Room</a></li>
            <li><a runat="server" href="~/Employee/Search/frmRoomsAvailable.aspx"><i class="icon-angle-right"></i>Avaliable Room</a></li>
        </ul>
    </li>
    <li><a runat="server" href="~/Employee/frmDischarge.aspx"><i class="icon-table icon-large"></i> Discharge Patient</a></li>
    <li><a runat="server" href="~/Employee/frmChangePassword.aspx"><i class="icon-table icon-large"></i> Change Password</a></li>
    <li><a runat="server" href="#"><i class="icon-table icon-large"></i> Category</a></li>
    <li><a runat="server" href="#"><i class="icon-table icon-large"></i> Products</a></li>
    <li><a runat="server" href="#"><i class="icon-table icon-large"></i> Deals</a></li>
    <li><a runat="server" href="#"><i class="icon-table icon-large"></i> Order</a></li>
    <%--<li class="accordion-group ">
                    <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                        <i class="icon-tasks icon-large"></i> Components <span class="label label-inverse pull-right">2</span>
                    </a>
                    <ul class="collapse " id="component-nav">
                        <li><a href="icon.html"><i class="icon-angle-right"></i> Icon & Button</a></li>
                        <li><a href="progress.html"><i class="icon-angle-right"></i> Progress</a></li>
                    </ul>
                </li>
                <li class="accordion-group ">
                    <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#form-nav">
                        <i class="icon-pencil icon-large"></i> Forms <span class="label label-inverse pull-right">4</span>
                    </a>
                    <ul class="collapse " id="form-nav">
                        <li><a href="form-general.html"><i class="icon-angle-right"></i> General</a></li>
                        <li><a href="form-validation.html"><i class="icon-angle-right"></i> Validation</a></li>
                        <li><a href="form-wysiwyg.html"><i class="icon-angle-right"></i> WYSIWYG</a></li>
                        <li><a href="form-wizard.html"><i class="icon-angle-right"></i> Wizard &amp; File Upload</a></li>
                    </ul>
                </li>--%>

    <%--<li><a href="table.html"><i class="icon-table icon-large"></i>Tables</a></li>
                <li><a href="file.html"><i class="icon-file icon-large"></i>File Manager</a></li>
                <li><a href="typography.html"><i class="icon-font icon-large"></i>Typography</a></li>
                <li><a href="maps.html"><i class="icon-map-marker icon-large"></i>Maps</a></li>
                <li><a href="chart.html"><i class="icon-bar-chart icon-large"></i>Charts</a></li>
                <li><a href="calendar.html"><i class="icon-calendar icon-large"></i>Calendar</a></li>
                <li class="accordion-group ">
                    <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#error-nav">
                        <i class="icon-warning-sign icon-large"></i>Error Pages <span
                            class="label label-inverse pull-right">7</span>
                    </a>
                    <ul class="collapse" id="error-nav">
                        <li><a href="403.html"><i class="icon-angle-right"></i>403</a></li>
                        <li><a href="404.html"><i class="icon-angle-right"></i>404</a></li>
                        <li><a href="405.html"><i class="icon-angle-right"></i>405</a></li>
                        <li><a href="500.html"><i class="icon-angle-right"></i>500</a></li>
                        <li><a href="503.html"><i class="icon-angle-right"></i>503</a></li>
                        <li><a href="offline.html"><i class="icon-angle-right"></i>offline</a></li>
                        <li><a href="countdown.html"><i class="icon-angle-right"></i>Under Construction</a></li>
                    </ul>
                </li>
                <li><a href="grid.html"><i class="icon-columns icon-large"></i>Grid</a></li>
                <li><a href="blank.html"><i class="icon-check-empty icon-large"></i>Blank Page</a></li>
                <li><a href="login.html"><i class="icon-signin icon-large"></i>Login Page</a></li>--%>
</ul>
