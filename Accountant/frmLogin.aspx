<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>

<html>
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/login.css">
    <link rel="stylesheet" href="../assets/magic/magic.css">
</head>
<body style="">
    <div class="container">
        <div class="text-center">
            <img src="../assets/img/logo.png" alt="Metis Logo">
        </div>
        <div class="tab-content">
            <div id="login" class="tab-pane active">
                <form id="form1" runat="server" class="form-signin">
                    <p class="muted text-center">
                            Enter your username and password
                        </p>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
                </form>
            </div>
        </div>
        <div class="text-center">
            <ul class="inline">
                <li><a class="muted" href="#login" data-toggle="tab">Login</a></li>
                <li><a class="muted" href="#forgot" data-toggle="tab">Forgot Password</a></li>
                <li><a class="muted" href="#signup" data-toggle="tab">Signup</a></li>
            </ul>
        </div>


    </div>
    <!-- /container -->

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="assets/js/vendor/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="../assets/js/vendor/bootstrap.min.js"></script>

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

