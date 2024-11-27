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
                <a href="Index" class="btn btn-sm btn-primary">القائمة</a>
              </div>
            </div>
          </div>
          <div class="card-body">

         

               <div class="pl-lg-4">
            <div class="row">
                <!-- Section Name -->
                <div class="col-lg-6">
                    <div class="form-group">
                        <label class="form-control-label" for="input-username">اسم القسم</label>
                        <asp:TextBox ID="txtSectionName" runat="server" CssClass="form-control form-control-alternative" placeholder="اسم القسم" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <!-- Section Type -->
                <div class="col-lg-6">
                    <div class="form-group">
                        <label class="form-control-label" for="input-username">نوع القسم</label>
                        <asp:DropDownList ID="ddlSectionType" runat="server" CssClass="form-control form-control-alternative" Enabled="false">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem Text="قسم 1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="قسم 2" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <hr class="my-4">

        </div>

        <div class="text-center mt-3">
            <asp:Button ID="btnEdit" runat="server" Text="تعديل" CssClass="btn btn-primary" />
        </div>


<!-- Cards Table -->
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="card shadow">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">البطائق المظافة داخل القسم</h3>
                            </div>
                            <div class="col text-left">
                                <a href="AddCard.aspx?sectionId=<%= Request.QueryString["id"] %>" class="btn btn-sm btn-primary">اضافة بطاقة</a>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">اسم البطاقة</th>
                                    <th scope="col">المستخدم</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptCards" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("CardName") %></td>
                                            <td><%# Eval("UserName") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
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
