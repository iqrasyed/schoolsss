<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPaitentHistory.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>
<html>
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/magic/magic.css">
</head>
<body style="">
    <div class="container">
        <div class="text-center">
            <img src="assets/img/logo.png" alt="Metis Logo">
        </div>
        <div class="tab-content">
            <div id="login" class="tab-pane active">
                <form id="form1" runat="server" class="form-signin">
                    <p class="muted text-center">
                            Enter your username and password
                        </p>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        
                </form>
            </div>
           
            <%--<div id="forgot" class="tab-pane">
                    <form action="index.html" class="form-signin">
                        <p class="muted text-center">
                            Enter your valid e-mail
                        </p>
                        <input type="email" placeholder="mail@domain.com" required="required" class="input-block-level">
                        <br>
                        <br>
                        <button class="btn btn-large btn-danger btn-block" type="submit">Recover Password</button>
                    </form>
                </div>
                <div id="signup" class="tab-pane">
                    <form action="index.html" class="form-signin">
                        <input type="text" placeholder="username" class="input-block-level">
                        <input type="email" placeholder="mail@domain.com" class="input-block-level">
                        <input type="password" placeholder="password" class="input-block-level">
                        <button class="btn btn-large btn-success btn-block" type="submit">Register</button>

                    </form>
                </div>--%>
        </div>
        <div class="text-center" >
          <asp:GridView id="GridView2" runat="server" Width="18px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5"  AllowPaging="True">
          </asp:GridView>
        </div>


    </div>
    <!-- /container -->

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="assets/js/vendor/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/bootstrap.min.js"></script>

    <script>
        $('.inline li > a').click(function () {
            var activeForm = $(this).attr('href') + ' > form';
            //console.log(activeForm);
            $(activeForm).addClass('magictime swap');
            //set timer to 1 seconds, after that, unload the magic animation
            setTimeout(function () {
                $(activeForm).removeClass('magictime swap');
            }, 1000);
        });

    </script>


</body>
</html>