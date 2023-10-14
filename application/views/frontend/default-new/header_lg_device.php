<?php if( $page_name === 'home') {

?>

<style>
  .menubar .right-menubar  a{ 


  }

  
</style>
<?php

}else {

?>

<style>
.menubar .right-menubar  a:hover{


  
}
</style>
<?php


} ?>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container" style="background-color: #f7faff; border-radius: 20px;" >
    <a class="navbar-brand logo" href="<?php echo site_url(); ?>">
      <img src="<?php echo site_url('uploads/system/'.get_frontend_settings('dark_logo')) ?>" style="height: 90px;" alt="" />
    </a>
    <!-- Mobile Offcanves  Icon Show -->
    <ul class="menu-offcanves">
      <li>
        <div class="search-item">
          <span class="m-cross-icon"><i class="fa-solid fa-xmark"></i></span>
          <span class="m-search-icon"> <i class="fa-solid fa-magnifying-glass"></i></span>
        </div>
      </li>
      <li>
        <a href="#" class="btn-bar" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions"><i class="fa-sharp fa-solid fa-bars"></i></a>
      </li>
    </ul>

    <div class="navbar-collapse" id="navbarSupportedContent">
 


      <div class="right-menubar " style="margin-right:5%;">
          
            <nav id="mobile-menu" style="    margin: auto;
" >
                              <ul class="navbar-nav main-nav-wrap">
                                 <li class="nav-item">
                                    <a class="custom-link"  href="#" style="" >من نحن</a>
                                   
                                 </li>
                                 
                               
                                 
                                 <li>
                                    <a class="custom-link" href="#" style="">الأخبار</a>
                                
                                 </li>
                                 
                                 <li >
                                    <a class="custom-link" href="#" style="" >التسوق</a>
                                   
                                 </li>
                                 
                                 <li >
                                    <a class="custom-link" href="#" style="">الاعتمادات</a>
                                
                                 </li>
                                 
                                 <li>
                                     <a class="custom-link" href="#" style="" >تواصل معنا</a>
                                 </li>
                              </ul>
                           </nav>
     <!-- Small Device Hide -->
      <ul class="navbar-nav main-nav-wrap mb-2 mb-lg-0 align-items-center">
        <li class="nav-item">
          <a class="nav-link header-dropdown px-3 text-nowrap" href="#" id="navbarDropdown1">
   <i class="fas fa-list" style=" vertical-align: middle;"></i>
            <span style="<?php echo $page_name === 'home' ? 'color:#003666;font-weight: bold;font-size: 18px;' : ''; ?>" class="ms-2"> الدورات</span>
          </a>
          <ul class="navbarHover">
            <?php
            $categories = $this->crud_model->get_categories()->result_array();
            foreach ($categories as $key => $category):?>
              <li class="dropdown-submenu">
                <a href="<?php echo site_url('home/courses?category='.slugify($category['slug'])) ?>">
                   <span class="has-sub-category "><i class="fa-solid fa-angle-right"></i></span>
                  <span class="icons"><i class="<?php echo $category['font_awesome_class']; ?>"></i></span>
                  <span class="text-cat"><?php echo $category['name']; ?></span>
                
                </a>
                <ul class="sub-category-menu">
                  <?php
                  $sub_categories = $this->crud_model->get_sub_categories($category['id']);
                  foreach ($sub_categories as $sub_category): ?>
                    <li><a href="<?php echo site_url('home/courses?category='.slugify($sub_category['slug'])) ?>"><?php echo $sub_category['name']; ?></a></li>
                  <?php endforeach; ?>
                </ul>
              </li>
            <?php endforeach; ?>
            <li>
              <a href="<?php echo site_url('home/courses'); ?>">
                <i class="fas fa-list-ul px-2"></i>
                <?php echo get_phrase('All Courses'); ?>    
              </a>
            </li>
          </ul>
        </li>
      </ul>

      <?php if(addon_status('ebook')): ?>
        <ul class="navbar-nav main-nav-wrap mb-2 mb-lg-0 ms-2">
          <li class="nav-item">
            <a class="nav-link header-dropdown bg-white text-dark fw-600 text-nowrap" style="<?php echo $page_name === 'home' ? 'color:#003666;font-weight: bold;' : ''; ?>" href="#" id="navbarDropdown1">
              <span  class="ms-2"><?php echo get_phrase('Ebook'); ?></span>
            </a>
            <ul class="navbarHover">
              <?php
              $ebook_categories = $this->db->get('ebook_category')->result_array();
              foreach ($ebook_categories as $key => $ebook_category):?>
                <li class="dropdown-submenu">
                  <a href="<?php echo site_url('ebook?category='.$ebook_category['slug'].'&price=all&rating=all') ?>">
                    <span class="text-cat"><?php echo $category['title']; ?></span>
                  </a>
                </li>
              <?php endforeach; ?>
            </ul>
          </li>
        </ul>
      <?php endif; ?>

      <?php if(addon_status('course_bundle')): ?>
        <ul class="navbar-nav main-nav-wrap mb-2 mb-lg-0 ms-2">
          <li class="nav-item">
            <a class="nav-link header-dropdown bg-white text-dark fw-600 text-nowrap" style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" href="<?php echo site_url('course_bundles'); ?>" id="navbarDropdown3">
              <span class="ms-2"><?php echo get_phrase('Course Bundle'); ?></span>
            </a>
          </li>
        </ul>
      <?php endif; ?>

      <?php $custom_page_menus = $this->crud_model->get_custom_pages('', 'header'); ?>
      <?php if($custom_page_menus->num_rows() == 1): ?>
        <?php $custom_page_menu = $custom_page_menus->row_array(); ?>
        <a class="text-dark fw-600 text-15px ms-3" href="<?php echo site_url('page/' . $custom_page_menu['page_url']); ?>"><?php echo $custom_page_menu['button_title']; ?></a>
      <?php elseif($custom_page_menus->num_rows() > 1): ?>
        <ul class="navbar-nav main-nav-wrap mb-2 mb-lg-0 ms-2">
          <li class="nav-item">
            <a class="nav-link header-dropdown  bg-white text-dark fw-600 d-flex" href="#" id="navbarDropdown">
              <span class="ms-2"><?php echo get_phrase('More'); ?></span>
              <i class="fas fa-angle-down ms-1"></i>
            </a>
            <ul class="navbarHover">
              <?php foreach ($custom_page_menus->result_array() as $custom_page_menu) : ?>
                <li>
                  <a href="<?php echo site_url('page/' . $custom_page_menu['page_url']); ?>">
                    <?php echo $custom_page_menu['button_title']; ?>   
                  </a>
                </li>
              <?php endforeach; ?>
            </ul>
          </li>
        </ul>
      <?php endif; ?>

        <?php if($user_login): ?>
          <li><a class="dropdown-item" style="<?php echo $page_name === 'home' ? 'color:#003666;font-weight: bold;font-size: 18px;' : ''; ?>" href="<?php echo site_url('home/my_courses') ?>"><?php echo site_phrase('My Course') ?></a></li>
        <?php elseif($admin_login): ?>
          <li><a class="dropdown-item" style="<?php echo $page_name === 'home' ? 'color:#003666;font-weight: bold;font-size: 18px;' : ''; ?>" href="<?php echo site_url('admin'); ?>"><?php echo get_phrase('Administration') ?></a></li>           
        <?php endif; ?>


        <!-- Cart List Area -->
       

                    <?php if(!$user_id): ?>
          <a href="<?php echo site_url('login'); ?>" style=" border: 2px solid #00aeff ; color:#00aeff; border-radius:10px;font-weight:300;font-size: 16px;margin-top:5px; padding:5px;" class="mx-3"> تسجيل الدخول </a>
          <a href="<?php echo site_url('sign_up'); ?>" style="border: 2px solid #00aeff ; color:#00aeff; border-radius:10px;font-weight:300;font-size: 16px;margin-top:5px; padding:5px;" class="mx-3 text-capitalize"> <?php echo get_phrase('Join Now'); ?></a>
        <?php endif; ?>

        <?php if($user_login): ?>
          <!-- Wish List Area -->
          <div class="wisth_tgl_div">
            <div class="wisth_tgl_2div">
              <a class="menu_wisth_tgl mt-1">
                <i class="fa-regular fa-heart"></i>

                <?php if(count($my_wishlist_items) > 0): ?>
                  <p class="menu_number" style="<?php echo $page_name === 'home' ? 'color:#003666;font-weight: bold;font-size: 18px;' : ''; ?>" id="wishlistItemsCounter">
                    <?php echo count($my_wishlist_items); ?>
                  </p>
                <?php endif; ?>
              </a>
              <div class="menu_pro_wish">
                <div class="overflow-control" id="wishlistItems">
                  <?php include "wishlist_items.php"; ?>
                </div>
                <div class="menu_pro_btn">
                  <a href="<?php echo site_url('home/my_wishlist'); ?>" class="btn btn-primary text-white"><?php echo get_phrase('Go to wishlist'); ?></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Notification Area -->
          <div class="wisth_tgl_div">
            <div class="wisth_tgl_2div" id="headerNotification">
              <?php include "notifications.php"; ?>
            </div>
          </div>
        <?php endif; ?>




          <?php if($user_login || $admin_login): ?>
            <!-- Profile Area -->
            <div class="menu_pro_tgl_div">
              <div class="menu_pro_tgl-2div">
                <a class="menu_pro_tgl profile-dropdown" style="<?php echo $page_name === 'home' ? 'color:#003666;font-weight: bold;font-size: 18px;' : ''; ?>"><img src="<?php echo $this->user_model->get_user_image_url($user_id); ?>" /></a>
              </div>
              <div class="menu_pro_tgl_bg">
                <div class="path-pos">
                  <a href="#"><img src="<?php echo $this->user_model->get_user_image_url($user_id); ?>"/></a>
                  <a href="#"><h4><?php echo $user_details['first_name'].' '.$user_details['last_name']; ?></h4></a>
                  <p><?php echo $user_details['email']; ?></p>
                  <ul>
                    <?php if($user_login): ?>
                      
                      <?php if($user_details['is_instructor'] == 1): ?>
                        <li class="user-dropdown-menu-item"><a href="<?php echo site_url('user'); ?>"><i class="fas fa-columns"></i><?php echo site_phrase('Instructor Dashboard'); ?></a></li>
                      <?php else: ?>
                        <li class="user-dropdown-menu-item"><a href="<?php echo site_url('home/become_an_instructor'); ?>"><i class="fas fa-columns"></i><?php echo site_phrase('Become a instructor'); ?></a></li>
                      <?php endif; ?>

                      <li class="user-dropdown-menu-item"><a href="<?php echo site_url('home/my_courses'); ?>"><i class="far fa-gem"></i><?php echo site_phrase('my_courses'); ?></a></li>
                      <li class="user-dropdown-menu-item"><a href="<?php echo site_url('home/my_wishlist'); ?>"><i class="far fa-heart"></i><?php echo site_phrase('my_wishlist'); ?></a></li>
                      <li class="user-dropdown-menu-item"><a href="<?php echo site_url('home/my_messages'); ?>"><i class="far fa-envelope"></i><?php echo site_phrase('my_messages'); ?></a></li>
                      <li class="user-dropdown-menu-item"><a href="<?php echo site_url('home/purchase_history'); ?>"><i class="fas fa-shopping-cart"></i><?php echo site_phrase('purchase_history'); ?></a></li>
                      <li class="user-dropdown-menu-item"><a href="<?php echo site_url('home/profile/user_profile'); ?>"><i class="fas fa-user"></i><?php echo site_phrase('user_profile'); ?></a></li>
                      <?php if (addon_status('affiliate_course') ) :
                          $CI    = &get_instance();
                          $CI->load->model('addons/affiliate_course_model');
                          $x = $CI->affiliate_course_model->is_affilator($this->session->userdata('user_id'));
                          $is_affiliator = $CI->affiliate_course_model->is_affilator($this->session->userdata('user_id'));

                          if ($x == 0 && get_settings('affiliate_addon_active_status') == 1) : ?>


                              <li class="user-dropdown-menu-item"><a href="<?php echo site_url('addons/affiliate_course/become_an_affiliator'); ?>"><i class="fas fa-user-plus"></i><?php echo site_phrase('Become_an_Affiliator'); ?></a></li>
                          <?php else : ?>
                              <?php if ($is_affiliator == 1) : ?>


                                  <li class="user-dropdown-menu-item"><a href="<?php echo site_url('addons/affiliate_course/affiliate_course_history '); ?>"><i class="fa fa-book"></i><?php echo site_phrase('Affiliation History'); ?></a></li>
                              <?php endif; ?>
                          <?php endif; ?>
                      <?php endif; ?>
                      <?php if (addon_status('customer_support')) : ?>
                          <li class="user-dropdown-menu-item"><a href="<?php echo site_url('addons/customer_support/user_tickets'); ?>"><i class="fas fa-life-ring"></i><?php echo site_phrase('support'); ?></a></li>
                      <?php endif; ?>
                    <?php endif; ?>

                    <?php if($admin_login): ?>
                      <li>
                        <a href="<?php echo site_url('admin'); ?>">
                          <i class="fas fa-location-arrow"></i>
                          <?php echo get_phrase('Administration'); ?>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo site_url('admin/manage_profile'); ?>">
                          <i class="fas fa-user"></i>
                          <?php echo get_phrase('Manage profile') ?>
                        </a>
                      </li>       
                      <li>
                        <a href="<?php echo site_url('admin/system_settings'); ?>">
                          <i class="fas fa-cog"></i>
                          <?php echo get_phrase('Settings') ?>
                        </a>
                      </li>  
                    <?php endif; ?>

                    <li>
                      <a href="<?php echo site_url('login/logout'); ?>">
                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                        <?php echo get_phrase('Log out'); ?>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          <?php endif; ?>

      </div>
    </div>

    <!-- Mobile Device Form -->
    <form action="<?php echo site_url('home/courses'); ?>" method="get" class="inline-form">
      <div class="mobile-search test">
        <button type="submit" class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
        <input value="<?php echo isset($_GET['query']) ? $_GET['query']:''; ?>" name="query" class="form-control" type="text" placeholder="<?php echo get_phrase('Search'); ?>" />
      </div>
    </form>

  </div>
</nav>