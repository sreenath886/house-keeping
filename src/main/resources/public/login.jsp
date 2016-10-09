


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	
<head><script src="js/jquery.min.js"></script>
	 <script src="js/static.js"></script>
<script> 
$(document).ready(function() {
	$('.header').load("header.jsp"); 
	$('.footer').load("footer.jsp"); 
	hk_services_get();
});

</script> 
</head>

<div class="header"></div>
    
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="height: 100px;" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		<div id="fh5co-contact">
			<div class="container">
				<form action="#">
					<div class="row">
						<div class="col-md-6 animate-box">
							<h3 class="section-title">Our Address</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							<ul class="contact-info">
								<li><i class="icon-location-pin"></i>198 West 21th Street, Suite 721 New York NY 10016</li>
								<li><i class="icon-phone2"></i>+ 1235 2355 98</li>
								<li><i class="icon-mail"></i><a href="#">info@yoursite.com</a></li>
								<li><i class="icon-globe2"></i><a href="#">www.yoursite.com</a></li>
							</ul>
						</div>
						<div class="col-md-6 animate-box">
							
							 <div class="containers">
                                <div id="book_divs">
       <div id="login">
  <div id="triangle"></div>
  <h1>Login</h1>
  <div id="signup_div">
      <input type="text" class="signup-text" id="hk_username" placeholder="Username" />
    <input type="password"  class="signup-text" id="hk_pass" placeholder="Password" />
    <input type="button" id="book_button" onclick="hk_login_post();"   value="Login" />
  </div>
            </div></div>
            </div> 
							
						</div>
					</div>
				</form>
			</div>
		</div>

    
    <div class="footer"></div>
    
	</body>
</html>

