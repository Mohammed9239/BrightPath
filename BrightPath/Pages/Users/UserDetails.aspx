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

         
            <form action="" class="form_wrapper">

              <fieldset>

                <h6 class="heading-small text-muted mb-4">بيانات المستخدم</h6>
                <div class="pl-lg-4">

                  <div class="row">

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">نوع المستخدم</label>
                        <select class="form-control form-control-alternative">
                            <option>مدير</option>
                            <option>مشرف</option>
                            <option>ابن</option>
                            <option>اباء</option>
                        </select>
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">اسم المستخدم</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="mohammed_75">
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">الاسم الكامل</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="محمد العمودي">
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">تاريخ الميلاد</label>
                        <input type="date" id="input-username" class="form-control form-control-alternative" placeholder="محمد العمودي">
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">الهاتف</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="96650000000">
                      </div>
                    </div>  

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">البريد الالكتروني</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="mail@mail.com">
                      </div>
                    </div>

                  </div>


                  <div id="cons" style="display: block;">
                    <hr class="my-4">
                    <h6 class="heading-small text-muted mb-3">بيانات خاصة بالمشرف</h6>

                    <div class="row">

                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-username">نوع المشرف</label>
                          <select class="form-control form-control-alternative">
                              <option>؟</option>
                          </select>
                        </div>
                      </div>
  
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-username">اسم المستخدم</label>
                          <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="mohammed_75">
                        </div>
                      </div>
  
                    </div>

                  </div>


                  <hr class="my-4">



                </div>

                <div class="text-center">
                  <input type="submit" name="submit" class="btn btn-primary" value="تعديل" onclick="">
                </div>
                
              </fieldset>
              

            </form>

          </div>
        </div>
      </div>

    </div>

</asp:Content>
