<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BrightPath.Pages.Home.Dashboard" %>

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
                        <div class="card card-stats mb-4 mb-xl-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">الاقسام</h5>
                                        <span class="h2 font-weight-bold mb-0">27800</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                                            <i class="fas fa-chart-bar"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6">
                        <div class="card card-stats mb-4 mb-xl-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">الاشتراكات</h5>
                                        <span class="h2 font-weight-bold mb-0">3500</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6">
                        <div class="card card-stats mb-4 mb-xl-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">التقارير</h5>
                                        <span class="h2 font-weight-bold mb-0">924</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                                            <i class="fas fa-times"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6">
                        <div class="card card-stats mb-4 mb-xl-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">المستخدمين</h5>
                                        <span class="h2 font-weight-bold mb-0">49</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                                            <i class="fas fa-users"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>


    <div class="container-fluid mt--7">

        <!-- chart -->
        <div class="row">

            <div class="col-xl-10 mx-auto mb-5 mb-xl-0">
                <div class="card bg-gradient-default shadow">

                    <div class="card-header bg-transparent">
                        <div class="row align-items-center">
                            <div class="col">
                                <h6 class="text-uppercase text-light ls-1 mb-1">معلومات</h6>
                                <h2 class="text-white mb-0">المستخدمين</h2>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        <!-- Chart -->
                        <div class="chart">
                            <canvas id="pie-chart" width="800" height="450"></canvas>
                        </div>
                    </div>

                </div>

            </div>




        </div>


        <!-- table -->
        <div class="row mt-5">


            <div class="col-xl-4 mb-5 mb-xl-0">
                <div class="card shadow">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">اخر الاقسام المضافة</h3>
                            </div>
                            <div class="col text-left">
                                <a href="sections.html" class="btn btn-sm btn-primary">تصفح الكل</a>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <!-- Projects table -->
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">اسم القسم</th>
                                    <th scope="col">نوع القسم</th>
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

            <div class="col-xl-4 mb-5 mb-xl-0">
                <div class="card shadow">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">اخر البطائق المضافة</h3>
                            </div>
                            <div class="col text-left">
                                <a href="#" class="btn btn-sm btn-primary">تصفح الكل</a>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <!-- Projects table -->
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">اسم البطافة</th>
                                    <th scope="col">القسم</th>
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


            <div class="col-xl-4">
                <div class="card shadow">

                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">اخر المستخدمين المضافين</h3>
                            </div>
                            <div class="col text-left">
                                <a href="#!" class="btn btn-sm btn-primary">تصفح الكل</a>
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">

                        <!-- Projects table -->
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">الاسم</th>
                                    <th scope="col">نوع المستخدم</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">محمد العمودي</th>
                                    <td>--</td>
                                </tr>

                                <tr>
                                    <th scope="row">محمد العمودي</th>
                                    <td>--</td>
                                </tr>

                                <tr>
                                    <th scope="row">محمد العمودي</th>
                                    <td>--</td>
                                </tr>

                                <tr>
                                    <th scope="row">محمد العمودي</th>
                                    <td>--</td>
                                </tr>

                                <tr>
                                    <th scope="row">محمد العمودي</th>
                                    <td>--</td>
                                </tr>
                            </tbody>
                        </table>

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
