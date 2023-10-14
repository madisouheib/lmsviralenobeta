<?php
$this->db->where('message_thread.receiver', $this->session->userdata('user_id'));
$this->db->where('message.sender !=', $this->session->userdata('user_id'));
$this->db->where('message.read_status', 0);
$this->db->from('message_thread');
$this->db->join('message', 'message_thread.message_thread_code = message.message_thread_code');
$unreaded_message = $this->db->get()->num_rows();
?>

<div class="wish-list-search mb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="student-profile-info">
                <img class="profile-image" src="<?php echo $this->user_model->get_user_image_url($this->session->userdata('user_id')); ?>">
                <h4><?php echo $user_details['first_name'].' '.$user_details['last_name']; ?></h4>
                <span><?php echo $user_details['email']; ?></span>
            </div>
        </div>
    </div>
    <div class="wish-list-course">
        <a class="btn-profile-menu <?php if($page_name == 'my_courses') echo 'active'; ?>" href="<?php echo site_url('home/my_courses'); ?>">
            <i class="fa-solid fa-book-open-reader me-2"></i>
            <?php echo get_phrase('My Courses'); ?>
        </a>

        <a class="btn-profile-menu <?php if($page_name == 'my_wishlist') echo 'active'; ?>" href="<?php echo site_url('home/my_wishlist'); ?>">
            <i class="fa-regular fa-heart me-2"></i>
            <?php echo get_phrase('Wishlist'); ?>
        </a>

        <a class="btn-profile-menu <?php if($page_name == 'my_messages') echo 'active'; ?>" href="<?php echo site_url('home/my_messages'); ?>">
            <i class="fa-regular fa-comment-dots me-2"></i>
            <?php echo get_phrase('Messages'); ?>
            <?php if($unreaded_message > 0): ?>
                <span class="badge bg-danger"><?php echo $unreaded_message; ?></span>
            <?php endif; ?>
        </a>

        <a class="btn-profile-menu <?php if($page_name == 'purchase_history') echo 'active'; ?>" href="<?php echo site_url('home/purchase_history'); ?>">
            <i class="fas fa-history me-2"></i>
            <?php echo get_phrase('Purchase history'); ?>
        </a>

        <a class="btn-profile-menu <?php if($page_name == 'user_profile') echo 'active'; ?>" href="<?php echo site_url('home/profile/user_profile'); ?>">
            <i class="fa-regular fa-user me-2"></i>
            <?php echo get_phrase('Profile'); ?>
        </a>

        <a class="btn-profile-menu <?php if($page_name == 'user_credentials') echo 'active'; ?>" href="<?php echo site_url('home/profile/user_credentials'); ?>">
            <i class="fas fa-key me-2"></i>
            <?php echo get_phrase('Account credentials'); ?>
        </a>
    </div>
</div>