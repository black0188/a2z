<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?php echo base_url(); ?>resource/images/a2z_icon.ico">

    <title>A2Z Internet</title>

    <link href="<?php echo base_url(); ?>resource/dist/css/bootstrap.min.css" rel="stylesheet">

    <!--     Custom styles for this template -->
    <link href="<?php echo base_url(); ?>resource/css/signin.css" rel="stylesheet">
    <script src="<?php echo base_url(); ?>resource/js/main.js"></script>
  </head>

  <body>    
    <div class="sing_top container">
        <div class="card card-container">
            <img id="profile-img" class="img-responsive" src="<?php echo base_url(); ?>resource/images/a2z_logo.png" />
            <p id="profile-name" class="profile-name-card">
                <font color="red">
                    <?php 
                      $massages = $this->session->userdata('login_messages');  
                      if(isset($massages)){
                         echo $massages;
                         $this->session->unset_userdata('login_messages');
                      }
                    ?>
                </font>
            </p>
            <form class="form-signin" name="login_form" method="post" action="<?php echo base_url(); ?>index.php/login/login_check">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="userId" name="userId" class="form-control"  value="" placeholder="User Name or ID" required autofocus>
                <input type="password" id="inputPassword" name="inputPassword" class="form-control" value="" placeholder="Password" required>
                <div id="remember" class="checkbox">
                    <!-- <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>-->
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
            </form> <!-- /form -->
             <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div> <!-- /card-container -->
    </div> <!-- /container -->
  </body>
</html>