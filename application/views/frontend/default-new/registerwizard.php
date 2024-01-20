
<style type="text/css">
	.calendly-inline-widget .simplebar-content::before {
    font-size: 16px;
    background-color: #f0f0f0;
    color: #333;
    border: 2px solid #ccc;
    border-radius: 5px;
}
</style>
<style>
        .card {
            margin: 10px;
            transition: box-shadow 0.3s;
            border: none;
        }
        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }
        .card a {
            color: inherit; /* This makes the text color inherit from parent, so it's not always blue like links */
            text-decoration: none; /* No underline */
        }
        .centered-row {
            justify-content: center;
        }
        .center-content {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100%;
    }
    </style>
<section>
    <div class="container  " style="background-color:#f7faff; border-radius:10px;padding:25px; margin-top: 20px;margin-bottom: 20px;">
  
   <img style="height: 400px;width: 400px; display: block; margin:auto;border-radius: 10px; border-raduis:5px;" src="<?php echo site_url('assets/frontend/default-new/pics/'); ?>register.gif" alt="">

  <h3 class="text-center mt-4" style="color:#1e293b;" >  التسجيل في المنصة التعليمية لمركز الوطني لتدريب البحري</h3>






  <div class="row justify-content-center" style="margin-top:8%;margin-bottom:10%;">
        <!-- Instructor Card -->
        <div class="col-md-4 ">
        <div class="center-content">
            <a href="sign_up?instructor=yes" >
                <div class="card">
                    <div class="card-body text-center">
                    <img style="heigth:140px;width:140px;"   src="<?php echo site_url('assets/frontend/default-new/pics/'); ?>capitaine.png">

                        <h5 class="card-title mt-4">مدرب</h5>
                    </div>
                </div>
            </a>
</div>
        </div>

        <!-- Company Card -->
        <div class="col-md-4">
        <div class="center-content">
            <a href="#companyLink" >
                <div class="card">
                    <div class="card-body text-center">
                      <img style="heigth:140px;width:140px;"  src="<?php echo site_url('assets/frontend/default-new/pics/'); ?>batiments.png">
                        <h5 class="card-title mt-4"> شركة </h5>
                    </div>
                </div>
            </a>
</div>
        </div>

        <!-- Student Registration Card -->
        <div class="col-md-4">
        <div class="center-content">
            <a href="sign_up">
                
                <div class="card">
                    <div class="card-body text-center">
                    <img  style="heigth:140px;width:140px;"  src="<?php echo site_url('assets/frontend/default-new/pics/'); ?>student.png">

                        <h5 class="card-title mt-4">متدرب </h5>
                    </div>
                </div>
            </a>
</div>
        </div>
    </div>


</div>
</section>