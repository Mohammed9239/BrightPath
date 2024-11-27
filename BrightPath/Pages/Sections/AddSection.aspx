<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="AddSection.aspx.cs" Inherits="BrightPath.Pages.Sections.AddSection" %>

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
                            <h3 class="mb-0">اضافة قسم جديد</h3>
                        </div>
                        <div class="col-4 text-left">
                            <a href="Index" class="btn btn-sm btn-primary">القائمة</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <div class="pl-lg-4">
                        <div class="row">
                            <!-- القسم اسم -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="txtDepartmentName">اسم القسم</label>
                                    <asp:TextBox ID="txtDepartmentName" CssClass="form-control form-control-alternative"
                                        runat="server" placeholder="اسم القسم"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDepartmentName" ControlToValidate="txtDepartmentName"
                                        ErrorMessage="اسم القسم مطلوب" CssClass="text-danger"
                                        runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <!-- القسم نوع -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="ddlDepartmentType">نوع القسم</label>
                                    <asp:DropDownList ID="ddlDepartmentType" CssClass="form-control form-control-alternative"
                                        runat="server">
                                        <asp:ListItem Text="اختر نوع القسم" Value="" />
                                        <asp:ListItem Text="نوع 1" Value="1" />
                                        <asp:ListItem Text="نوع 2" Value="2" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDepartmentType" ControlToValidate="ddlDepartmentType"
                                        InitialValue="" ErrorMessage="يرجى اختيار نوع القسم"
                                        CssClass="text-danger" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false" />


                        <!-- Submit Button -->
                        <div class="text-center mt-3">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" Text="اضافة" OnClick="btnSubmit_Click" runat="server" />
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</asp:Content>
