<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="BrightPath.Pages.Users.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Render Body From Here -->


    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          
        </div>
      </div>
    </div>

    <div class="container-fluid mt--7">

      <div class="col-xl-12 order-xl-1">
        <div class="card bg-secondary shadow">
          <div class="card-header bg-white border-0">
            <div class="row align-items-center">
              <div class="col-8">
                <h3 class="mb-0">تفاصيل المستخدم</h3>
              </div>
              <div class="col-4 text-left">
                <a href="users.html" class="btn btn-sm btn-primary">القائمة</a>
              </div>
            </div>
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
                                    <asp:TextBox ID="txtUserType" runat="server" CssClass="form-control form-control-alternative" Placeholder="mohammed_75" />

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

<%--                            <!-- كلمة المرور -->
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
                            </div>--%>

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
                                        <label class="form-control-label" for="fuSupervisorCertificate">ملف شهادة المشرف (<asp:HyperLink ID="hlDownloadSupervisorCertificate" runat="server" Text="عرض الشهادة" CssClass="btn btn-link"  Target="_blank" />)</label>
                                        <asp:FileUpload ID="fuSupervisorCertificate" runat="server" CssClass="form-control form-control-alternative" />
                                        <asp:RequiredFieldValidator ID="rfvSupervisorCertificateFile" runat="server" ControlToValidate="fuSupervisorCertificate" ErrorMessage="يرجى رفع ملف الشهادة" CssClass="text-danger" Display="Dynamic" Visible="false" />
                                    </div>


                                </div>



                            </div>
                        </div>


                        <asp:Label ID="lblValidation" runat="server" CssClass="text-danger" Visible="false" />

                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" DisplayMode="BulletList" />





                        <hr class="my-4">
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnSubmit" runat="server" Text="حفظ" CssClass="btn btn-primary" ValidationGroup="UserValidation" OnClick="btnSubmit_Click" />
                    </div>

          </div>
        </div>
      </div>

    </div>

</asp:Content>
