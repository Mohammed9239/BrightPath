<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="BrightPath.Pages.Home.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <!-- Favicon -->
    <link href="../../Assets/Images/brand/logo.png" rel="icon" type="image/png">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@600;700&display=swap" rel="stylesheet">
  <!-- Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />  <!-- CSS Files -->

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
        <div class="col-lg-10 col-md-11">

          <div class="card bg-secondary shadow border-0">
            <div class="card-body px-lg-5 py-lg-5">
              <div class="text-center text-muted mb-4">
                <small>انشاء حساب جديد</small>
              </div>

                <div class="card-body">

                    <h6 class="heading-small text-muted mb-4">بيانات المستخدم</h6>

                    <div class="pl-lg-4">



                        <asp:ScriptManager runat="server" />

                        <div class="row">
                            <!-- نوع المستخدم -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="ddlUserType">نوع المستخدم</label>
                                    <asp:DropDownList ID="ddlUserType" runat="server" CssClass="form-control form-control-alternative" AutoPostBack="true" OnSelectedIndexChanged="ddlUserType_SelectedIndexChanged">
                                        <asp:ListItem Text="مدير" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="مشرف" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="ولي امر" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="طفل" Value="4"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <!-- اسم المستخدم -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtUsername">اسم المستخدم</label>
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control form-control-alternative" Placeholder="mohammed_75" />
                                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="اسم المستخدم مطلوب" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>

                            <!-- كلمة المرور -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtPassword">كلمة المرور</label>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-alternative" Placeholder="******" />
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="كلمة المرور مطلوبة" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>

                            <!-- اعادة كلمة المرور -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtConfirmPassword">اعادة كلمة المرور</label>
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control form-control-alternative" Placeholder="******" />
                                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="يرجى إعادة كلمة المرور" CssClass="text-danger" Display="Dynamic" />
                                    <asp:CompareValidator ID="cvPasswords" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="كلمتا المرور غير متطابقتين" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>

                            <!-- الاسم الكامل -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtFullName">الاسم الكامل</label>
                                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control form-control-alternative" Placeholder="محمد العمودي" />
                                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="الاسم الكامل مطلوب" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>

                            <!-- تاريخ الميلاد -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtBirthDate">تاريخ الميلاد</label>
                                    <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control form-control-alternative" TextMode="Date" />
                                    <asp:RequiredFieldValidator ID="rfvBirthDate" runat="server" ControlToValidate="txtBirthDate" ErrorMessage="تاريخ الميلاد مطلوب" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>

                            
                            <!-- الهاتف -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtPhone">الهاتف</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-alternative" Placeholder="96650000000" />
                                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="رقم الهاتف مطلوب" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>

                            <!-- البريد الإلكتروني -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtEmail">البريد الإلكتروني</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-alternative" Placeholder="mail@mail.com" />
                                    <asp:RequiredFieldValidator
                                        ID="rfvEmail"
                                        runat="server"
                                        ControlToValidate="txtEmail"
                                        ErrorMessage="البريد الإلكتروني مطلوب"
                                        CssClass="text-danger"
                                        Display="Dynamic" />

                                    <asp:RegularExpressionValidator
                                        ID="revEmail"
                                        runat="server"
                                        ControlToValidate="txtEmail"
                                        ErrorMessage="البريد الإلكتروني غير صحيح"
                                        CssClass="text-danger"
                                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                                        Display="Dynamic" />

                                </div>
                            </div>
                        </div>

                        <!-- بيانات خاصة بالمشرف -->
                        <div id="ConsultantDataDiv" runat="server" visible="false">
                            <hr class="my-4">
                            <h6 class="heading-small text-muted mb-3">بيانات خاصة بالمشرف</h6>

                            <div class="row">
                                <!-- نوع المشرف -->
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label" for="ddlSupervisorType">نوع المشرف</label>
                                        <asp:DropDownList ID="ddlSupervisorType" runat="server" CssClass="form-control form-control-alternative">
                                            <asp:ListItem Text="اختر" Value="" />
                                            <asp:ListItem Text="مشرف 1" Value="1" />
                                            <asp:ListItem Text="مشرف 2" Value="2" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvSupervisorType" runat="server" ControlToValidate="ddlSupervisorType" InitialValue="" ErrorMessage="يرجى اختيار نوع المشرف" CssClass="text-danger" Display="Dynamic" />
                                    </div>
                                </div>

                                <!-- نوع شهادة المشرف -->
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label" for="ddlSupervisorCertificate">نوع شهادة المشرف</label>
                                        <asp:DropDownList ID="ddlSupervisorCertificate" runat="server" CssClass="form-control form-control-alternative">
                                            <asp:ListItem Text="اختر" Value="" />
                                            <asp:ListItem Text="1" Value="1" />
                                            <asp:ListItem Text="2" Value="2" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvSupervisorCertificate" runat="server" ControlToValidate="ddlSupervisorCertificate" InitialValue="" ErrorMessage="يرجى اختيار نوع الشهادة" CssClass="text-danger" Display="Dynamic" />
                                    </div>
                                </div>

                                <!-- ملف شهادة المشرف -->
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label" for="fuSupervisorCertificate">ملف شهادة المشرف</label>
                                        <asp:FileUpload ID="fuSupervisorCertificate" runat="server" CssClass="form-control form-control-alternative" />
                                        <asp:RequiredFieldValidator ID="rfvSupervisorCertificateFile" runat="server" ControlToValidate="fuSupervisorCertificate" ErrorMessage="يرجى رفع ملف الشهادة" CssClass="text-danger" Display="Dynamic" />
                                    </div>
                                </div>
                            </div>
                        </div>


                        <asp:Label ID="lblValidation" runat="server" CssClass="text-danger" Visible="false" />

                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" DisplayMode="BulletList" />





                        <hr class="my-4">
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnSubmit" runat="server" Text="انشاء الحساب" CssClass="btn btn-primary" ValidationGroup="UserValidation" OnClick="btnSubmit_Click" />
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
