<?php $user_details = $this->user_model->get_all_user($this->session->userdata('user_id'))->row_array(); ?>
<?php $social_links = json_decode($user_details['social_links'], true); ?>


<?php include "breadcrumb.php"; ?>

<!--------  Wish List body section start------>
<section class="wish-list-body message">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <?php include "profile_menus.php"; ?>
            </div>
            <div class="col-lg-9 col-md-8">
                <div class="profile">
                    <div class="profile-bg">
                        <!-- <img src="<?php echo base_url('assets/frontend/default-new/img/profile-bg-2.jpg') ?>"> -->
                    </div>
                    <div class="profile-ful-body common-card">
                        <div class="profile-parrent mt-5">
                            <div class="profile-child">
                               <a href="#"><img src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>"></a> 
                                <div class="child-text">
                                    <a href="#"><h5><?php echo get_phrase('Profile Photo') ?></h5></a>
                                    <p><?php echo get_phrase('Update your profile photo and personal details'); ?></p>  
                                </div>
                            </div>

                            <div class="profile-child-btn">
                                <form action="<?php echo site_url('home/update_profile/update_photo/true') ?>" method="post" enctype="multipart/form-data" class="d-flex align-items-center">
                                    <input type="file" id="profile-photo-input" name="user_image" onchange="
                                        $('.photo-upload-btn').toggleClass('d-hidden');
                                        $('[for=profile-photo-input]').toggleClass('d-hidden');
                                    " class="d-none">
                                    <label for="profile-photo-input" class="btn btn-light float-end" type="button" style="background-color: var(--bs-gray-200);"><i class="fas fa-upload"></i> <?php echo get_phrase('Upload photo') ?></label>
                                    <div class="photo-upload-btn d-hidden">
                                        <button type="submit" class="purchase-btn ms-1 float-end"><?php echo get_phrase('Save') ?></button>
                                        <button type="reset" onclick="
                                            $('.photo-upload-btn').toggleClass('d-hidden');
                                            $('[for=profile-photo-input]').toggleClass('d-hidden');
                                        " class="purchase-btn float-end"><?php echo get_phrase('Cancel') ?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="profile-input-section">
                            <form class="" action="<?php echo site_url('home/update_profile/update_credentials'); ?>" method="post">
                                <div class="row">
                                    <div class="col-12 border-bottom mb-3 pb-3">
                                        <h4 class="text-black"><?php echo site_phrase('account_information'); ?></h4>
                                    </div>




                                    <div class="col-12 mb-3">
                                        <label class="text-dark fw-600" for="email"><?php echo site_phrase('email'); ?></label>
                                        <div class="input-group">
                                            <input type="email" class="form-control bg-white-2" name = "email" id="email" placeholder="<?php echo site_phrase('email'); ?>" value="<?php echo $user_details['email']; ?>" disabled>
                                        </div>
                                    </div>

                                    <hr class="my-4 bg-secondary">

                                    <div class="col-12 mb-3">
                                        <label class="text-dark fw-600" for="current_password"><?php echo site_phrase('current_password'); ?></label>
                                        <div class="input-group">
                                        
                                            <input type="password" class="form-control bg-white-2 text-14px" id="current_password" name = "current_password" placeholder="<?php echo site_phrase('enter_current_password'); ?>">
                                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <label class="text-dark fw-600" for="new_password"><?php echo site_phrase('new_password'); ?></label>
                                        <div class="input-group">
                                   
                                            <input type="password" class="form-control bg-white-2 text-14px" id="new_password" name = "new_password" placeholder="<?php echo site_phrase('enter_new_password'); ?>">
                                                     <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <label class="text-dark fw-600" for="confirm_password"><?php echo site_phrase('confirm_password'); ?></label>
                                        <div class="input-group">
                         
                                            <input type="password" class="form-control bg-white-2 text-14px" id="confirm_password" name = "confirm_password" placeholder="<?php echo site_phrase('re-type_your_password'); ?>">
                                                               <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                        </div>
                                    </div>

                                    <div class="col-12 pt-4">
                                        <button class="btn btn-primary px-5"><?php echo site_phrase('save_changes'); ?></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-------- wish list bosy section end ------->