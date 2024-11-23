<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BrightPath.Pages.Appointments.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Render Body From Here -->


    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">

          <!-- Card stats -->
          <div class="row">

            <div class="col-xl-3 col-lg-6">
              <a href="AddAppointment">
                <div class="card card-stats mb-4 mb-xl-0">
                  <div class="card-body">
                    <div class="row">
                      <div class="col align-self-center">
                        <h5 class="card-title text-uppercase text-muted mb-0">اضافة موعد جديد</h5>
                      </div>
                      <div class="col-auto">
                        <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                          <i class="fa fa-plus-circle"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </a>
            </div>

          </div>
          
        </div>
      </div>
    </div>

    <div class="container-fluid mt--7">

      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3 class="mb-0">جميع الموعيد</h3>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">نوع الموعد</th>
                    <th scope="col">المستخدم</th>
                    <th scope="col">تاريخ الموعد</th>
                    <th scope="col">وقت الموعد</th>
                    <th scope="col">حالة الموعد</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  
                  <tr>
                    <td>1</td>
                    <td><a href="AppointmentDetails">نوع الموعد</a></td>
                    <td>محمد</td>
                    <td>2024-12-12</td>
                    <td>11 pm</td>
                    <td class="badge badge-success" style="padding: .375rem .99999rem;margin-top: 21px;">مكتمل</td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">تعديل</a>
                          <a class="dropdown-item" href="#">حذف</a>
                        </div>
                      </div>
                    </td>
                  </tr>

                  
                </tbody>
              </table>
            </div>
            <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </ul>
              </nav>
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
