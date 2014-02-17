<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftPanelWebUserControl.ascx.cs" Inherits="Employee_EmployeeUserControl_LeftPanelWebUserControl" %>

<ul id="menu" class="unstyled accordion collapse in">
    <li><a runat="server" href="~/Employee/frmEmployeeHome.aspx"><i class="icon-dashboard icon-large"></i> Dashboard</a></li>

    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-nav">
            <i class="icon-pencil icon-large"></i> Reception <span class="label label-inverse pull-right">2</span>
        </a>
        <ul class="collapse " id="patient-nav">
            <li><a runat="server" href="~/Employee/frmAddPatient.aspx"><i class="icon-angle-right"></i>Register Patient</a></li>
            <li><a runat="server" href="~/Employee/frmPatientCheckin.aspx"><i class="icon-angle-right"></i>Checkin Patient</a></li>            
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-na1">
            <i class="icon-pencil icon-large"></i> Assignments <span class="label label-inverse pull-right">5</span>
        </a>
        <ul class="collapse " id="patient-na1">
            <li><a  runat="server" href="~/Employee/frmDoctorOnPatient.aspx"><i class="icon-angle-right"></i>Assign Doctor</a></li>
            <li><a  runat="server" href="~/Employee/frmPrescription.aspx"><i class="icon-angle-right"></i>Prescription</a></li>            
            <li><a  runat="server" href="~/Employee/frmMedicineCharges.aspx"><i class="icon-angle-right"></i>Medicines</a></li>
            <li><a runat="server" href="~/Employee/frmRoomCharge.aspx"><i class="icon-angle-right"></i>Room</a></li>
            <li><a runat="server" href="~/Employee/frmTestCharge.aspx"><i class="icon-angle-right"></i>Lab Tests</a></li>
        </ul>
    </li>
    <li><a id="A1" runat="server" href="~/Employee-Search/frmAllDoctor.aspx"><i class="icon-table icon-large"></i> Doctors</a></li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#medicen-nav">
            <i class="icon-pencil icon-large"></i> Medicen Record <span class="label label-inverse pull-right">4</span>
        </a>
        <ul class="collapse " id="medicen-nav">
            <li><a runat="server" href="~/Employee-Search/frmAllMedicine.aspx"><i class="icon-angle-right"></i>All Medicine</a></li>
            <li><a runat="server" href="~/Employee-Search/frmMedicineBetweenDates.aspx"><i class="icon-angle-right"></i>Medicine Between M/E Dates</a></li>
            <li><a runat="server" href="~/Employee-Search/frmMedicineonDate.aspx"><i class="icon-angle-right"></i>Medicine On Specific Date</a></li>
            <li><a runat="server" href="~/Employee-Search/frmMedicineonPatient.aspx"><i class="icon-angle-right"></i>Medicine On Patient</a></li>
        </ul>
    </li>

    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#room-nav">
            <i class="icon-pencil icon-large"></i> Rooms <span class="label label-inverse pull-right">2</span>
        </a>
        <ul class="collapse " id="room-nav">
            <li><a runat="server" href="~/Employee-Search/frmAllRooms.aspx"><i class="icon-angle-right"></i>All Room</a></li>
            <li><a runat="server" href="~/Employee-Search/frmRoomsAvailable.aspx"><i class="icon-angle-right"></i>Room Status</a></li>
        </ul>
    </li>
    <li><a runat="server" href="~/Employee/frmDischarge.aspx"><i class="icon-table icon-large"></i> Discharge Patient</a></li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-nav2">
            <i class="icon-pencil icon-large"></i> Paitent<span class="label label-inverse pull-right">2</span>
        </a>
        <ul class="collapse " id="patient-nav2">
            <li><a  runat="server" href="~/Employee-Search/frmPatientAdmissionDate.aspx"><i class="icon-angle-right"></i>Admitted Date</a></li>
            <li><a  runat="server" href="~/Employee-Search/frmPatientBettwoDates.aspx"><i class="icon-angle-right"></i>Between Dates</a></li>                        
        </ul>                
        </li>
    <li><a runat="server" href="~/Employee/frmChangePassword.aspx"><i class="icon-table icon-large"></i> Change Password</a></li>
    <li><a runat="server" href="#"><i class="icon-table icon-large"></i> Category</a></li>
 

</ul>
