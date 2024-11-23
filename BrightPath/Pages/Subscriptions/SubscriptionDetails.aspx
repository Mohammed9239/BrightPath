﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site.Master" AutoEventWireup="true" CodeBehind="SubscriptionDetails.aspx.cs" Inherits="BrightPath.Pages.Subscriptions.SubscriptionDetails" %>
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
               <h3 class="mb-0">تفاصيل الاشتراك</h3>
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
                     <label class="form-control-label" for="input-username">نوع الاشتراك</label>
                     <select class="form-control form-control-alternative">
                         <option>القسم</option>
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
                     <label class="form-control-label" for="input-username">سعر الاشتراك</label>
                     <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="سعر الاشتراك">
                   </div>
                 </div>
      
                 <div class="col-lg-6">
                   <div class="form-group">
                     <label class="form-control-label" for="input-username">تاريخ انتهاء الاشتراك</label>
                     <input type="date" id="input-username" class="form-control form-control-alternative">
                   </div>
                 </div>

               </div>


               <hr class="my-4">

             </div>

             <div class="text-center mt-3">
               <input type="button" name="next" class="btn btn-primary" value="تعديل">
             </div>


           </form>

         </div>
       </div>
     </div>

   </div>


</asp:Content>
