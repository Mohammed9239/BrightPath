<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="AddSubscription.aspx.cs" Inherits="BrightPath.Pages.Subscriptions.AddSubscription" %>

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
                            <h3 class="mb-0">اضافة اشتراك</h3>
                        </div>
                        <div class="col-4 text-left">
                            <a href="Index" class="btn btn-sm btn-primary">القائمة</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">


                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="ddlSubscriptionType">نوع الاشتراك</label>
                                    <asp:DropDownList ID="ddlSubscriptionType" runat="server" CssClass="form-control form-control-alternative">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="ddlUser">المستخدم</label>
                                    <asp:DropDownList ID="ddlUser" runat="server" CssClass="form-control form-control-alternative">
                                        <asp:ListItem Text="المستخدم" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtSubscriptionPrice">سعر الاشتراك</label>
                                    <asp:TextBox ID="txtSubscriptionPrice" runat="server" CssClass="form-control form-control-alternative" Placeholder="سعر الاشتراك"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtEndDate">تاريخ بداية الاشتراك</label>
                                    <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control form-control-alternative" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtEndDate">تاريخ انتهاء الاشتراك</label>
                                    <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control form-control-alternative" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr class="my-4">


                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false" />

                    <div class="text-center mt-3">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="اضافة" OnClick="btnSubmit_Click" />
                    </div>

                </div>
            </div>
        </div>

    </div>


</asp:Content>
