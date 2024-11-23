<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="SectionDetails.aspx.cs" Inherits="BrightPath.Pages.Sections.SectionDetails" %>
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
                <h3 class="mb-0">تفاصيل القسم</h3>
              </div>
              <div class="col-4 text-left">
                <a href="sections.html" class="btn btn-sm btn-primary">القائمة</a>
              </div>
            </div>
          </div>
          <div class="card-body">

         
            <form action="" class="form_wrapper">         

              <div class="pl-lg-4">

                <div class="row">
                  
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">اسم القسم</label>
                      <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="اسم القسم">
                    </div>
                  </div>

                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">نوع القسم</label>
                      <select class="form-control form-control-alternative">
                          <option>توع القسم</option>
                      </select>
                    </div>
                  </div>
             
                </div>
                <hr class="my-4">

              </div>

              <div class="text-center mt-3">
                <input type="button" name="next" class="btn btn-primary" value="تعديل">
              </div>


            </form>

                  <!-- table -->
      <div class="row mt-5">


        <div class="col-lg-12">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">البطائق المظافة داخل القسم</h3>
                </div>
                <div class="col text-left">
                  <a href="AddCard.html" class="btn btn-sm btn-primary">اضافة بطاقة</a>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">اسم البطافة</th>
                    <th scope="col">المستخدم</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">اسم تجريبي</th>
                    <td>--</td>
                  </tr>

                  <tr>
                    <th scope="row">اسم تجريبي</th>
                    <td>--</td>
                  </tr>

                  <tr>
                    <th scope="row">اسم تجريبي</th>
                    <td>--</td>
                  </tr>

                  <tr>
                    <th scope="row">اسم تجريبي</th>
                    <td>--</td>
                  </tr>

                  <tr>
                    <th scope="row">اسم تجريبي</th>
                    <td>--</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
          </div>
        </div>
      </div>

    </div>


</asp:Content>
