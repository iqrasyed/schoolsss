<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminMenuUserControl.ascx.cs" Inherits="Admin_AdminUserControl_AdminMenuUserControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<ul id="menu" class="unstyled accordion collapse in">
    <li><a runat="server" href="~/Admin/frmAdminHome.aspx"><i class="icon-dashboard icon-large"></i> Dashboard</a></li>

    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-nav">
            <i class="icon-pencil icon-large"></i> Add Resources<span class="label label-inverse pull-right">3</span>
        </a>
        <ul class="collapse " id="patient-nav">
            <li><a id="A17" runat="server" href="~/Admin/frmAddDoctor.aspx"><i class="icon-angle-right"></i> Doctor</a></li>            
            <li><a runat="server" href="~/Admin/frmAddEmployeeDetail.aspx"><i class="icon-angle-right"></i> Staff</a></li>
            <li><a id="A18" runat="server" href="~/Admin/frmAddAccountant.aspx"><i class="icon-angle-right"></i> Accountant</a></li>            
            
        </ul>
       
    </li>
    <li class="accordion-group"  >
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#patient-nav1">
            <i class="icon-pencil icon-large"></i> Add Assets<span class="label label-inverse pull-right">4</span>
        </a>
        <ul class="collapse " id="patient-nav1">            
            <li><a id="A19" runat="server" href="~/Admin/frmAddMedicine.aspx"><i class="icon-angle-right"></i> Medicen</a></li>
            <li><a id="A20" runat="server" href="~/Admin/frmAddTest.aspx"><i class="icon-angle-right"></i> Test</a></li>
            <li><a id="A21" runat="server" href="~/Admin/frmAddSpecialist.aspx"><i class="icon-angle-right"></i> Specialist</a></li>
            <li><a id="A22" runat="server" href="~/Admin/frmAddRoom.aspx"><i class="icon-angle-right"></i> Room</a></li>
        </ul>
    </li>
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#medicen-nav">
            <i class="icon-pencil icon-large"></i> City<span class="label label-inverse pull-right">1</span>
        </a>
        <ul class="collapse " id="medicen-nav">
            <%--<li><a runat="server" href="~/Admin/frmCountryMaster.aspx"><i class="icon-angle-right"></i> Country</a></li>--%>
            <li><a runat="server" href="~/Admin/frmCityMaster.aspx"><i class="icon-angle-right"></i> City</a></li>
           <%-- <li><a runat="server" href="~/Admin/frmStateMaster.aspx"><i class="icon-angle-right"></i> State</a></li>--%>
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
    <li><a runat="server" href="~/Admin-Search/frmAllDoctor.aspx"><i class="icon-table icon-large"></i> Doctors</a></li>
    
    <li class="accordion-group ">
        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#medicen1-nav">
            <i class="icon-pencil icon-large"></i> Medicines<span class="label label-inverse pull-right">4</span>
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
            <i class="icon-pencil icon-large"></i>Lab Test<span class="label label-inverse pull-right">5</span>
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
</ul>
