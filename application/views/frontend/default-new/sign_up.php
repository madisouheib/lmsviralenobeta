<?php if(get_frontend_settings('recaptcha_status')): ?>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php endif; ?>

<!---------- Header Section End  ---------->
<section class="sign-up my-5 pt-5">
    <div class="container">
        <div class="row">
              <div class="col-lg-5 col-md-6 col-sm-12 col-12 ">
                <div class="sing-up-right">
                    <h3><?php
                    
                    
                    if (isset($_GET['instructor']) && $_GET['instructor'] == 'yes') {
                        // The 'instructor' key exists in the $_GET array and its value is 'yes'
                        // Your code for this condition goes here
                        echo 'التسجيل كمدرب';
                    } else {
                        // The 'instructor' key does not exist or its value is not 'yes'
                        // Code for the else condition goes here
                

if (isset($_GET['company']) && $_GET['company'] == 'yes') {

    echo 'التسجيل كشركة';

}else {

    echo get_phrase('Sign Up');
}
                 
                    }
                    
                    
            ?>
                    
                    
                    
                    <span>!</span></h3>
                    <p><?php echo get_phrase('Explore, learn, and grow with us. Enjoy a seamless and enriching educational journey. Lets begin!') ?></p>

                    <form action="<?php echo site_url('login/register') ?>" method="post" enctype="multipart/form-data">
                        <div class="mb-4">
                            <h5><?php echo get_phrase('First Name'); ?></h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-user"></i>
                                <input class="form-control" id="first_name" type="text" name="first_name" placeholder="<?php echo get_phrase('Enter your first name'); ?>" required>
                            </div>
                        </div>
                        <div class="mb-4">
                            <h5><?php echo get_phrase('Last Name'); ?></h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-user"></i>
                                <input class="form-control" id="last_name" type="text" name="last_name" placeholder="<?php echo get_phrase('Enter your last name'); ?>" required>
                            </div>
                        </div>
                        <div class="mb-4">
                            <h5><?php echo get_phrase('Your email'); ?></h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-user"></i>
                                <input class="form-control" id="email" type="email" name="email" placeholder="<?php echo get_phrase('Enter your email'); ?>" required>
                            </div>
                        </div>
                        <div class="mb-4">
                                    <h5><?php echo get_phrase('Phone'); ?></h5>
                                    <div class="position-relative">
                                        <i class="fas fa-phone"></i>
                                        <input class="form-control" id="phone" type="phone" name="phone" placeholder="<?php echo get_phrase('Enter your phone number'); ?>">
                                    </div>
                                </div>
                        <div class="mb-4">
                            <h5> رقم الهوية</h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-id-card"></i>
                                <input class="form-control" id="identity" type="text" name="identity" placeholder="ادخل رقم الهوية" required>
                            </div>
                        </div>
                        <div class="mb-4">
                            <h5>  تاريخ الميلاد </h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-calendar-alt"></i>
                                <input class="form-control" id="identity" type="date" name="birthday" placeholder="ادخل تارخ الميلاد" required>
                            </div>
                        </div>
                        <div class="mb-4">
                            <h5><?php echo get_phrase('Password') ?></h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-key"></i>
                             
                                <input class="form-control" id="password" type="password" name="password" placeholder="<?php echo get_phrase('Enter your valid password'); ?>" required>
                            </div>
                        </div>
<?php 

if (isset($_GET['company']) && $_GET['company'] == 'yes') {



?>  
    <div class="mb-4">
                            <h5>  اسم الشركة </h5>
                            <div class="position-relative">
                                <i class="fa-solid fa-building"></i>
                                <input class="form-control" id="building" type="text" name="company" placeholder="ادخل  اسم الشركة " required>
                            </div>
                        </div>

<?php  } 
?>
<?php if(get_settings('allow_instructor')): ?>
                          

                            <div id="become-instructor-fields" class="<?php echo isset($_GET['instructor']) ?  '':'d-hidden'; ?>">
                              
                                <div class="mb-4">
                                    <h5><?php echo get_phrase('Document'); ?>  <small>(doc, docs, pdf, txt, png, jpg, jpeg)</small></h5>
                                    <span class="text-center">  مثال سيرة الذاتية  شهادات </span>
                                    <div class="position-relative">
                                        <input class="form-control" id="document" type="file" name="document">
                                        <small><?php echo get_phrase('Provide some documents about your qualifications'); ?></small>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <h5><?php echo get_phrase('message'); ?></h5>
                                    <div class="position-relative">
                                        <textarea class="form-control" name="message" rows="4"></textarea>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                        <div class="mb-4">
                                <input  type="checkbox"  name="insctructions" onchange="toggleButton()"  id="checkInstruction" value="yes" >
                                <label for="instructor">  الموافقة على <a class="" href=""> شروط الاستخدام </a>   </label>
                            </div>


                        <?php if(get_frontend_settings('recaptcha_status')): ?>
                            <div class="g-recaptcha" data-sitekey="<?php echo get_frontend_settings('recaptcha_sitekey'); ?>"></div>
                        <?php endif; ?>
                        
                        <div class="log-in">
                            <button type="submit" class="btn btn-primary" id="signupButton" disabled >
                                <?php echo get_phrase('Sign Up') ?>
                            </button>
                        </div>
                    </form>

                    <div class="another text-center">
                        <p>
                            <?php echo get_phrase('Already you have an account?') ?>
                            <a href="<?php echo site_url('login') ?>"><?php echo get_phrase('Log In') ?></a>
                        </p>
                        <h5><?php echo get_phrase('Or') ?></h5>
                    </div>
                    <div class="social-media">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <!-- <button type="button" class="btn btn-primary"><a href="#"><img src="image/facebook.png"> Facebook</a></button> -->
                                <?php if(get_settings('fb_social_login')) include "facebook_login.php"; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-md-6 col-sm-12 col-12 text-center">
            <?php 

if (isset($_GET['company']) && $_GET['company'] == 'yes') {



?>  

<img   src="<?php echo site_url('assets/frontend/default-new/pics/'); ?>sailor.gif">
<input name="company_role" value="true" type="hidden">
<?php 

}else {

?>
  
                <img src="<?php echo site_url('assets/frontend/default-new/image/sailor.gif') ?>">

                <?php 

}
?>
            </div>
          
        </div>
    </div>
</section>

<script>


function toggleButton() {
    var checkbox = document.getElementById('checkInstruction');
    var button = document.getElementById('signupButton');
    
    // Enable the button if the checkbox is checked, disable otherwise
    button.disabled = !checkbox.checked;
}

    
</script>