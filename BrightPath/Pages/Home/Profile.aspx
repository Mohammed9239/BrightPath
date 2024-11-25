<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BrightPath.Pages.Home.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Render Body From Here -->

       <!-- Header -->
    <div class="header pb-6 pt-3 pt-lg-8 d-flex align-items-center" style="min-height: 370px; background-image: url(./assets/img/icons/user.svg); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-8"></span>
      <!-- Header container -->
      <div class="container-fluid d-flex align-items-center mb-7">
        <div class="row">
          <div class="col-lg-7 col-md-10">
            <h6 class="display-3 text-white  mt-0 mb-4" style="width: max-content;">مرحبا , <span style="display:inline" id="txtName" runat="server"></span></h6>
            <a href="#!" class="btn btn-info">تغير كلمة السر</a>
          </div>
        </div>
      </div>
    </div>


    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row">
        


        <div class="col-xl-12">
          <div class="card bg-secondary shadow">



            <div class="card-body">
                                <h6 class="heading-small text-muted mb-4">معلومات المستخدم</h6>



                <div class="pl-lg-4">

    <asp:ScriptManager runat="server" />

    <div class="row">
        <!-- نوع المستخدم -->
        <div class="col-lg-6">
            <div class="form-group">
                <label class="form-control-label" for="txtUserType">نوع المستخدم</label>
                <asp:TextBox ID="txtUserType" runat="server" CssClass="form-control form-control-alternative" ReadOnly="true" />
            </div>
        </div>

        <!-- اسم المستخدم -->
        <div class="col-lg-6">
            <div class="form-group">
                <label class="form-control-label" for="txtUsername">اسم المستخدم</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control form-control-alternative" ReadOnly="true" />
            </div>
        </div>

        <!-- الاسم الكامل -->
        <div class="col-lg-6">
            <div class="form-group">
                <label class="form-control-label" for="txtFullName">الاسم الكامل</label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control form-control-alternative" ReadOnly="true" />
            </div>
        </div>

        <!-- تاريخ الميلاد -->
        <div class="col-lg-6">
            <div class="form-group">
                <label class="form-control-label" for="txtBirthDate">تاريخ الميلاد</label>
                <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control form-control-alternative" TextMode="Date" ReadOnly="true" />
            </div>
        </div>

        <!-- الهاتف -->
        <div class="col-lg-6">
            <div class="form-group">
                <label class="form-control-label" for="txtPhone">الهاتف</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-alternative" ReadOnly="true" />
            </div>
        </div>

        <!-- البريد الإلكتروني -->
        <div class="col-lg-6">
            <div class="form-group">
                <label class="form-control-label" for="txtEmail">البريد الإلكتروني</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-alternative" ReadOnly="true" />
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
                    <asp:DropDownList ID="ddlSupervisorType" runat="server" CssClass="form-control form-control-alternative" Enabled="false">
                        <asp:ListItem Text="اختر" Value="" />
                        <asp:ListItem Text="مشرف 1" Value="1" />
                        <asp:ListItem Text="مشرف 2" Value="2" />
                    </asp:DropDownList>
                </div>
            </div>

            <!-- نوع شهادة المشرف -->
            <div class="col-lg-6">
                <div class="form-group">
                    <label class="form-control-label" for="ddlSupervisorCertificate">نوع شهادة المشرف</label>
                    <asp:DropDownList ID="ddlSupervisorCertificate" runat="server" CssClass="form-control form-control-alternative" Enabled="false">
                        <asp:ListItem Text="اختر" Value="" />
                        <asp:ListItem Text="1" Value="1" />
                        <asp:ListItem Text="2" Value="2" />
                    </asp:DropDownList>
                </div>
            </div>

            <!-- ملف شهادة المشرف -->
            <div class="col-lg-6">
                <div class="form-group">
                    <label class="form-control-label" for="fuSupervisorCertificate">ملف شهادة المشرف</label>
                    <asp:HyperLink ID="hlDownloadSupervisorCertificate" runat="server" Text="عرض الشهادة" CssClass="btn btn-link" Target="_blank" Visible="false" />
                </div>
            </div>
        </div>
    </div>

    <div class="text-center">
        <asp:Button ID="btnSubmit" runat="server" Text="تعديل" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
    </div>

</div>



            </div>


          </div>
        </div>
        
      </div>


      <!-- Footer -->
      <footer class="footer">
        <div class="row align-items-center justify-content-xl-between">
          <div class="col-xl-12">
            <div class="copyright text-center text-xl-left text-muted">
              BrightPath &copy;
            </div>
          </div>
        </div>
      </footer>

    </div>

</asp:Content>
