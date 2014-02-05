<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftPanelWebUserControl.ascx.cs" Inherits="Employee_EmployeeUserControl_LeftPanelWebUserControl" %>
            <asp:Menu ID="Menu1" runat="server" ForeColor="Black"
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
                      <asp:MenuItem Text="Doctor" Value="Doctor">
                            <asp:MenuItem NavigateUrl="~/Employee/Search/frmAllDoctor.aspx" Text="All Doctor"
                                Value="All Doctor"></asp:MenuItem>
                           
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
            </asp:Menu>
