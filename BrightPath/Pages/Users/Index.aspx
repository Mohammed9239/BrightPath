<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BrightPath.Pages.Users.Index" %>
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
              <a href="AddUser">
                <div class="card card-stats mb-4 mb-xl-0">
                  <div class="card-body">
                    <div class="row">
                      <div class="col align-self-center">
                        <h5 class="card-title text-uppercase text-muted mb-0">اضافة مستخدم</h5>
                      </div>
                      <div class="col-auto">
                        <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
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
                <h3 class="mb-0">جميع المستخدمين</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">اسم المستخدم</th>
                            <th scope="col">الاسم كامل</th>
                            <th scope="col">نوع المستخدم</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptUsers" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><a href="UserDetails.aspx?UserId=<%# Eval("Id") %>"><%# Eval("UserName") %></a></td>
                                    <td><%# Eval("Name") %></td>
                                    <td><%# Eval("UserTypeDescription") %></td>
                                    <td class="text-right">
                                        <div class="dropdown">
                                            <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                <a class="dropdown-item" href="EditUser.aspx?UserId=<%# Eval("Id") %>">تعديل</a>
                                                <a class="dropdown-item" href="DeleteUser.aspx?UserId=<%# Eval("Id") %>">حذف</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
            <div class="card-footer py-4">
                <nav aria-label="...">
                    <ul class="pagination justify-content-end mb-0">
                        <!-- Pagination here -->
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
