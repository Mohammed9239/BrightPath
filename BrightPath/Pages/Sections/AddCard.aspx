<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="AddCard.aspx.cs" Inherits="BrightPath.Pages.Sections.AddCard" %>

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
                            <h3 class="mb-0">اضافة بطاقة جديدة</h3>
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
                                    <label class="form-control-label" for="txtCardName">اسم البطاقة</label>
                                    <asp:TextBox ID="txtCardName" CssClass="form-control form-control-alternative"
                                        Placeholder="اسم القسم" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="ddlSection">القسم</label>
                                    <asp:DropDownList ID="ddlSection" CssClass="form-control form-control-alternative"
                                        runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="ddlUser">المستخدم</label>
                                    <asp:DropDownList ID="ddlUser" CssClass="form-control form-control-alternative"
                                        runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="fuCardFile">ملف البطاقة</label>
                                    <asp:FileUpload ID="fuCardFile" CssClass="form-control form-control-alternative"
                                        runat="server" />
                                </div>
                            </div>
                        </div>

                    </div>

                    <hr class="my-4" />

                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false" />


                    <div class="text-center mt-3">
                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" Text="اضافة" runat="server"
                            OnClick="btnSubmit_Click" />
                    </div>



                </div>
            </div>
        </div>

    </div>

</asp:Content>
