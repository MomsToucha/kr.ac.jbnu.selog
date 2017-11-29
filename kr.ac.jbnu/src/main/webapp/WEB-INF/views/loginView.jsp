<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Login - Blues</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
  <meta property="og:title" content="">
  <meta property="og:image" content="">
  <meta property="og:url" content="">
  <meta property="og:site_name" content="">
  <meta property="og:description" content="">

  <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">

  <!-- Fav and touch icons -->
  <link rel="shortcut icon" href="<c:url value="resources/img/icons/favicon.png"/>">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="resources/img/icons/114x114.png"/>">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="resources/img/icons/72x72.png"/>">
  <link rel="apple-touch-icon-precomposed" href="<c:url value="resources/img/icons/default.png"/>">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<c:url value="resources/bootstrap_lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url value="resources/bootstrap_lib/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/bootstrap_lib/owlcarousel/owl.carousel.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/bootstrap_lib/owlcarousel/owl.theme.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/bootstrap_lib/owlcarousel/owl.transitions.min.css"/>" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<c:url value="resources/css/style.css"/>" rel="stylesheet">

  <!--Your custom colour override - predefined colours are: colour-blue.css, colour-green.css, colour-lavander.css, orange is default-->
  <link href="#" id="colour-scheme" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Flexor
    Theme URL: https://bootstrapmade.com/flexor-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->

</head>

<!-- ======== @Region: body ======== -->

<body class="fullscreen-centered page-login">
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script src="/js/***.js"></script>	
  
  <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
  <div id="background-wrapper" class="benches" data-stellar-background-ratio="0.8">

    <!-- ======== @Region: #content ======== -->
    <div id="content">
      <div class="header">
        <div class="header-inner">
          <!--navbar-branding/logo - hidden image tag & site name so things like Facebook to pick up, actual logo set via CSS for flexibility -->
          <a class="navbar-brand center-block" href="home" title="Home">
            <h1 class="hidden">
                <img src="resources/img/logo.png" alt="Flexor Logo">
                Blues
              </h1>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">
                  Login
                </h3>
            </div>
            <div class="panel-body">
              <form accept-charset="UTF-8" role="form">
                <fieldset>
                  <div class="form-group">
                    <div class="input-group input-group-lg">
                      <span class="input-group-addon"><i class="fa fa-fw fa-envelope"></i></span>
                      <input type="text" class="form-control" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-lg">
                      <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
                      <input type="password" class="form-control" placeholder="Password">
                    </div>
                  </div>
                  <div class="checkbox">
                    <label>
                        <input name="remember" type="checkbox" value="Remember Me">
                        Remember Me
                      </label>
                  </div>
                  <input class="btn btn-lg btn-primary btn-block" type="submit" value="Login">
                </fieldset>
              </form>
              <p class="m-b-0 m-t">Not signed up? <a href="register">Sign up here</a>.</p>
              <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Flexor
            -->
            <a href="https://bootstrapmade.com/">Free Bootstrap Templates</a> by BootstrapMade.com
          </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /row -->
    </div>
  </div>
  <!-- Required JavaScript Libraries -->
  <script src="resources/bootstrap_lib/jquery/jquery.min.js"></script>
  <script src="resources/bootstrap_lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/bootstrap_lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="resources/bootstrap_lib/stellar/stellar.min.js"></script>
  <script src="resources/bootstrap_lib/waypoints/waypoints.min.js"></script>
  <script src="resources/bootstrap_lib/counterup/counterup.min.js"></script>
  <script src="resources/js/contactform.js"></script>

  <!-- Template Specisifc Custom Javascript File -->
  <script src="resources/js/custom.js"></script>

  <!--Custom scripts demo background & colour switcher - OPTIONAL -->
  <script src="resources/js/color-switcher.js"></script>

  <!--Contactform script -->
  <script src="resources/js/contactform.js"></script>

</body>

</html>
