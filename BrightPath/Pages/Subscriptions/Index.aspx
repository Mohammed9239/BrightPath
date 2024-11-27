﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BrightPath.Pages.Subscriptions.Index" %>

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
                        <a href="AddSubscription">
                            <div class="card card-stats mb-4 mb-xl-0">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col align-self-center">
                                            <h5 class="card-title text-uppercase text-muted mb-0">اضافة اشتراك</h5>
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

                    <div class="col-xl-3 col-lg-6">
                        <a href="RenewalSubscription">
                            <div class="card card-stats mb-4 mb-xl-0">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col align-self-center">
                                            <h5 class="card-title text-uppercase text-muted mb-0">تجديد اشتراك</h5>
                                        </div>
                                        <div class="col-auto">
                                            <div class="icon icon-shape bg-yellow  text-white rounded-circle shadow">
                                                <i class="fa fa-redo"></i>
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
                <h3 class="mb-0">جميع الاشتراكات</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">نوع الاشتراك</th>
                            <th scope="col">السعر</th>
                            <th scope="col">المستخدم</th>
                            <th scope="col">تاريخ بداية الاشتراك</th>
                            <th scope="col">تاريخ انتهاء الاشتراك</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptSubscriptions" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td>
                                        <a href="SubscriptionDetails.aspx?Id=<%# Eval("Id") %>">
                                            <%# Eval("SubscriptionName") %>
                                        </a>
                                    </td>
                                    <td><%# Eval("Price") %></td>
                                    <td><%# Eval("UserName") %></td>
                                    <td><%# Eval("StartDate", "{0:yyyy-MM-dd}") %></td>
                                    <td><%# Eval("ExpiryDate", "{0:yyyy-MM-dd}") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
            <div class="card-footer py-4">
                <nav aria-label="...">
                    <ul class="pagination justify-content-end mb-0">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1">
                                <i class="fas fa-angle-right"></i>
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
                                <i class="fas fa-angle-left"></i>
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
