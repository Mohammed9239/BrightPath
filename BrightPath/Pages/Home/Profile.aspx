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
            <h6 class="display-2 text-white  mt-0 mb-4" style="width: max-content;">مرحبا , محمد العمودي</h6>
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
              <form>
                <h6 class="heading-small text-muted mb-4">معلومات المستخدم</h6>
                <div class="pl-lg-4 mt-6">

                  <div class="row mb-1">

                    <div class="col-lg-4">
                      <div class="row justify-content-center">
                        <div class="col-lg-3 order-lg-2">
                          <div class="card-profile-image">
                            <a href="#">
                              <img src="./assets/img/icons/avatardefault_92824.png" class="rounded-circle">
                            </a>
                          </div>
                        </div>
                      </div>
                      <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4" style="background: none;">
                        <div class="d-flex justify-content-between">
                          <i class="btn btn-sm btn-info mr-4"></i>
                          <input name="FavImg1" onchange="changeImgAdd1(this)" id="imgUser" style="display: none;" type="file">

                          <label for="imgUser" class="btn btn-sm btn-default float-right">تغير الصورة</label>
                        </div>
                      </div>
                    </div>

                    <div class="col-lg-4">
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

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">اسم المستخدم</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="mohammed_75">
                      </div>
                    </div>

                    
                  </div>

                  <div class="row">

                    <div class="col-lg-4">
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">الاسم الكامل</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="محمد العمودي">
                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">تاريخ الميلاد</label>
                        <input type="date" id="input-username" class="form-control form-control-alternative" placeholder="محمد العمودي">
                      </div>
                    </div>

                    <div class="col-lg-4">
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">الهاتف</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="96650000000">
                      </div>
                    </div>  

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">البريد الالكتروني</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="mail@mail.com">
                      </div>
                    </div>

                  </div>

                </div>
                <hr class="my-4" />

                <div class="text-center">
                  <input type="submit" name="submit" class="btn btn-primary" value="تعديل" onclick="">
                </div>

              </form>
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
