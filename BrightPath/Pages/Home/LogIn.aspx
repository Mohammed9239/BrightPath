<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="BrightPath.Pages.Home.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Favicon -->
    <link href="../../Assets/Images/brand/logo.png" rel="icon" type="image/png">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@600;700&display=swap" rel="stylesheet">
    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- CSS Files -->

    <!-- CSS Files -->
    <link href="../../Assets/Styles/css.css" rel="stylesheet" />

    <title></title>
</head>
<body class="bg-default" dir="rtl">

    <form id="form1" runat="server">

        <div class="main-content" style="overflow-y: hidden;">

            <!-- Navbar -->
            <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
                <div class="container px-4">
                    <a class="navbar-brand" href="../index.html">
                        <img src="../../Assets/Images/brand/logo.png" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbar-collapse-main">
                        <!-- Collapse header -->
                        <div class="navbar-collapse-header d-md-none">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="../index.html">
                                        <img src="../../Assets/Images/brand/logo.png">
                                    </a>
                                </div>
                                <div class="col-6 collapse-close">
                                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                                        <span></span>
                                        <span></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Header -->
            <div class="header bg-gradient-primary py-5 py-lg-6">
                <div class="container">
                    <div class="header-body text-center mb-7">
                        <div class="row justify-content-center">
                            <div class="col-lg-5 col-md-6">
                                <h1 class="text-white">Path Bright</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="separator separator-bottom separator-skew zindex-100">
                    <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
                    </svg>
                </div>
            </div>

            <!-- Page content -->
            <div class="container mt--8 pb-5">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-7">
                        <div class="card bg-secondary shadow border-0">
                            <div class="card-body px-lg-5 py-lg-5">
                                <div class="text-center text-muted mb-4">
                                    <small>تسجيل الدخول</small>
                                </div>

                                <div>

                                    <div>
                                        <div class="form-group mb-3">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                </div>
                                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="اسم المستخدم" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                                </div>
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="كلمة المرور" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>

                                        <asp:Label ID="lblValidation" runat="server" CssClass="text-danger" Visible="false" />

                                        <div class="text-center">
                                            <asp:Button ID="btnLogin" runat="server" Text="دخول" CssClass="btn btn-primary my-4" OnClick="btnLogin_Click" />
                                        </div>
                                    </div>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="py-5">
                <div class="container">
                    <div class="row align-items-center justify-content-xl-between">
                        <div class="col-xl-12">
                            <div class="copyright text-center text-xl-center text-muted">
                                Path Bright &copy;
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>

    </form>
</body>
</html>
