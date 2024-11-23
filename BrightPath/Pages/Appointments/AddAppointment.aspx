﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="AddAppointment.aspx.cs" Inherits="BrightPath.Pages.Appointments.AddAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                <h3 class="mb-0">اضافة موعد</h3>
              </div>
              <div class="col-4 text-left">
                <a href="Index" class="btn btn-sm btn-primary">القائمة</a>
              </div>
            </div>
          </div>
          <div class="card-body">

         
            <form action="" class="form_wrapper">         

              <div class="pl-lg-4">

                <div class="row">
                  
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">نوع الموعد</label>
                      <select class="form-control form-control-alternative">
                          <option>الموعد</option>
                      </select>
                    </div>
                  </div>

                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">المستخدم</label>
                      <select class="form-control form-control-alternative">
                          <option>المستخدم</option>
                      </select>
                    </div>
                  </div>      

                </div>


                <div class="row">

                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">المشرف</label>
                      <select class="form-control form-control-alternative">
                          <option>المشرف</option>
                      </select>
                    </div>
                  </div>      
       
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">تاريخ الموعد</label>
                      <input type="date" id="input-username" class="form-control form-control-alternative">
                    </div>
                  </div>

                </div>

                <div class="row">
       
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-username">وقت الموعد</label>
                      <select class="form-control form-control-alternative">
                        <option>0</option>
                    </select>
                    </div>
                  </div>

                </div>
                <hr class="my-4">

              </div>

              <div class="text-center mt-3">
                <input type="button" name="next" class="btn btn-primary" value="اضافة">
              </div>


            </form>

          </div>
        </div>
      </div>

    </div>



</asp:Content>
