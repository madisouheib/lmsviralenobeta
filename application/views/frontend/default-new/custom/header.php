<!---------- Header Section start  ---------->
<?php $cart_items = $this->session->userdata('cart_items'); ?>
<?php $user_id = $this->session->userdata('user_id'); ?>
<?php $user_login = $this->session->userdata('user_login'); ?>
<?php $admin_login = $this->session->userdata('admin_login'); ?>
<?php if($user_id > 0){$user_details = $this->user_model->get_all_user($user_id)->row_array();} ?>
<header>
  <!-- Sub Header Start -->


          

         <div id="header-sticky" class="header__area header__transparent header__padding">
            <div class="container-fluid">
               <div class="row align-items-center">
                  <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-2 col-sm-4 col-6">
                     <div class="header__left d-flex">
                        <div class="logo">
                           <a href="index.html">
                              <img src="assets/img/logo.png" style="height: 95px;width: 255px;" alt="logo">
                           </a>
                        </div>
                       
                     </div>
                  </div>
                  <div class="col-xxl-9 col-xl-9 col-lg-8 col-md-10 col-sm-8 col-6">
                     <div class="header__right d-flex justify-content-end align-items-center">
                        <div class="main-menu">
                           <nav id="mobile-menu">
                              <ul>
                                 <li>
                                    <a href="#">من نحن</a>
                                   
                                 </li>
                                 
                                 <li>
                                    <a href="#">الرؤية و الرسالة</a>
                                
                                 </li>
                                 
                                 <li>
                                    <a href="#">الأخبار</a>
                                
                                 </li>
                                 
                                 <li >
                                    <a href="#">التسوق</a>
                                   
                                 </li>
                                 
                                 <li >
                                    <a href="#">الاعتمادات</a>
                                
                                 </li>
                                 
                                 <li>
                                     <a href="#">تواصل معنا</a>
                                 </li>
                              </ul>
                           </nav>
                        </div>
                       
                        <div class="header__btn ml-20 d-none d-sm-block">
                           <a href="" class="e-btn">
                              التسجيل و الدخول
                           
                           </a>
                        </div>
                        <div class="sidebar__menu d-xl-none">
                           <div class="sidebar-toggle-btn ml-30" id="sidebar-toggle">
                               <span class="line"></span>
                               <span class="line"></span>
                               <span class="line"></span>
                           </div>
                       </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      <!-- header area end -->

  <!---- Sub Header End ------>
  
  <section class="menubar">
    <?php include "header_lg_device.php"; ?>
    <!-- Offcanves Menu  -->
    <?php include "header_sm_device.php"; ?>
  </section>
</header>
<!---------- Header Section End  ---------->