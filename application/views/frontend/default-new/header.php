<!---------- Header Section start  ---------->
<?php $cart_items = $this->session->userdata('cart_items'); ?>
<?php $user_id = $this->session->userdata('user_id'); ?>
<?php $user_login = $this->session->userdata('user_login'); ?>
<?php $admin_login = $this->session->userdata('admin_login'); ?>
<?php if($user_id > 0){$user_details = $this->user_model->get_all_user($user_id)->row_array();} ?>
<header>
  <!-- Sub Header Start -->
  <div class="sub-header py-0"  style="<?php echo $page_name === 'home' ? 'background: transparent !important;color:#003666;' : ''; ?>">
    <div class="container" >
      <div class="row">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
          <div class="icon icon-left">
            <ul class="nav">
              <li class="nav-item px-2">
                <a style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" href="tel:<?php echo get_settings('phone'); ?>"><i class="fa-solid fa-phone"></i> <?php echo get_settings('phone'); ?></a>
              </li>
              <div class="vartical"></div>
              <li class="nav-item px-2">
                <a style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" href="mailto:<?php echo get_settings('system_email'); ?>"><i class="fas fa-envelope"></i> <?php echo get_settings('system_email'); ?></a>
              </li>


            </ul>
          </div>
        </div>
    
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
          <div class="icon right-icon" style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>">
            <?php $facebook = get_frontend_settings('facebook'); ?>
            <?php $twitter = get_frontend_settings('twitter'); ?>
            <?php $linkedin = get_frontend_settings('linkedin'); ?>
            <ul class="nav justify-content-end">
              <?php if($facebook): ?>
                <li class="nav-item">
                  <a style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" target="_blank" href="<?php echo $facebook; ?>"><i style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" class="fa-brands fa-facebook-f"></i></a>
                </li>
              <?php endif; ?>
              <?php if($twitter): ?>
                <li class="nav-item">
                  <a style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" target="_blank" href="<?php echo $twitter; ?>"><i style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" class="fa-brands fa-twitter"></i></a>
                </li>
              <?php endif; ?>
              <?php if($linkedin): ?>
                <li class="nav-item">
                  <a style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" target="_blank" href="<?php echo $linkedin; ?>"><i style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>" class="fa-brands fa-linkedin"></i></a>
                </li>
              <?php endif; ?>

              <a href="#" class="invisible" onclick="actionTo('<?php echo site_url('home/dark_and_light_mode') ?>')"><i class="fas fa-moon" style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>"></i></a>

              <li class="nav-item align-items-center d-flex">
                <form action="#" method="POST" class="language-control select-box">
                  <select onchange="actionTo(`<?php echo site_url('home/switch_language/') ?>${$(this).val()}`)" class="select-control form-select nice-select">
                    <?php
                    $languages = $this->crud_model->get_all_languages();
                    $selected_language = $this->session->userdata('language');
                    foreach ($languages as $language): ?>
                      <?php if (trim($language) != ""): ?>
                        <option value="<?php echo strtolower($language); ?>" <?php if ($selected_language == $language): ?>selected<?php endif; ?>><?php echo ucwords($language);?></option>
                      <?php endif; ?>
                    <?php endforeach; ?>
                  </select>
                </form>
              </li>
              <li>
             <div class="wisth_tgl_div">
          <div class="wisth_tgl_2div">
            <a class="menu_pro_cart_tgl mt-1"
              ><i class="fa-solid fa-cart-shopping" style="<?php echo $page_name === 'home' ? 'color:#003666;' : ''; ?>"></i>

              <?php if(count($cart_items) > 0): ?>
                <p class="menu_number" id="cartItemsCounter"><?php echo count($cart_items); ?></p>
              <?php endif; ?>
            </a>
            <div class="menu_pro_wish">
              <div class="overflow-control" id="cartItems">

                <?php include "cart_items.php"; ?>

              </div>
              <div class="menu_pro_btn">
                <a href="<?php echo site_url('home/shopping_cart'); ?>" type="submit" class="btn btn-primary text-white"><?php echo get_phrase('Checkout'); ?></a>
              </div>
            </div>
          </div>
        </div>

              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!---- Sub Header End ------>
<section class="menubar" style="<?php echo $page_name === 'home' ? 'background: transparent !important;color:#fff;' : ''; ?>">

    <?php include "header_lg_device.php"; ?>
    <!-- Offcanves Menu  -->
    <?php include "header_sm_device.php"; ?>

  </section>
</header>
<!---------- Header Section End  ---------->