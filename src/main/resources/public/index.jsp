<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
		
<link rel="stylesheet" href="css/number-picker.css" media="screen" charset="utf-8">
 <link rel="stylesheet" href="css/jquery-ui.1.1.css">
<script src="js/jquery.min.js"></script>	
    <script src="js/static.js"></script>	
    <script src="js/jquery.numble.min.js" charset="utf-8"></script>
     <script src="js/signup.js"></script>	
      <script src="js/jquery-ui.1.1.js"></script>
      <script>
  $( function() {
     $( "#datepicker" ).datepicker({
    	 showOtherMonths: true,
    	    selectOtherMonths: true
    		
    })
    .on( "change", function() {
    	//alert(123);
    	var h_val=$('#datepicker').val();
    	//alert(h_val);
     // to.datepicker( "option", "minDate", getDate( this ) );
    })
    
   
  } );
  
  
  </script>
<script> 

$(document).ready(function() {
	//$('.header').load("header.jsp"); 
	//$('.footer').load("footer.jsp"); 
	hk_services_get();
        index_book_divs();
      //  $('#book_div').hide();
 $('#book_div').show();
  // $('#book_div0').show();
   $('#datepicker').val('Select Your Date');
   hk_localities_get();
});

</script> 

</head>

			<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Fitness &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

 

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/signup-style.css" media="screen" type="text/css" />

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


<!-- jQuery -->


	<!-- <script src="js/jquery.min.js"></script> -->
	<head>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
	<!-- Main JS (Do not remove) -->
		
	<style>
@media screen and (mix-width: 360px) {
	#login{
  width:100px;
  margin:0 auto;
  margin-top:1px;
  margin-bottom:2%;
  transition:opacity 1s;
  -webkit-transition:opacity 1s;
}
#book_div
{
    margin-left: -423px;
    margin-top: 683px;
    color:red;
}
	.container1 {
 margin-left: -423px;
    margin-top: 83px;
}
}
</style>


	</head>
	<body>
	
		<div id="fh5co-wrapper">
		<div id="fh5co-page">	
		<div id="fh5co-header">
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<div style="margin-left: -50px;"><h1 id="fh5co-logo"><a href="index.jsp">MYHOUSE<span>GENIE</span></a></h1></div>
						<!-- START #fh5co-menu-wrap -->
						
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active">
									<a href="index.jsp">Home</a>
								</li>
								<li>
									<a href="services.jsp" class="fh5co-sub-ddown">Services</a>
									 <ul class="fh5co-sub-menu">
									 	<!--<li><a href="left-sidebar.jsp">Web Development</a></li>
									 	<li><a href="right-sidebar.jsp">Branding &amp; Identity</a></li>
										 <li>
											<a href="#" class="fh5co-sub-ddown">Free HTML5</a>
											<ul class="fh5co-sub-menu">
												<li><a href="http://freehtml5.co/preview/?item=build-free-html5-bootstrap-template" target="_blank">Build</a></li>
												<li><a href="http://freehtml5.co/preview/?item=work-free-html5-template-bootstrap" target="_blank">Work</a></li>
												<li><a href="http://freehtml5.co/preview/?item=light-free-html5-template-bootstrap" target="_blank">Light</a></li>
												<li><a href="http://freehtml5.co/preview/?item=relic-free-html5-template-using-bootstrap" target="_blank">Relic</a></li>
												<li><a href="http://freehtml5.co/preview/?item=display-free-html5-template-using-bootstrap" target="_blank">Display</a></li>
												<li><a href="http://freehtml5.co/preview/?item=sprint-free-html5-template-bootstrap" target="_blank">Sprint</a></li>
											</ul>
										</li>
										<li><a href="#">service1</a></li>
										<li><a href="#">service1</a></li>
										<li><a href="#">service1</a></li> -->
									</ul>
								</li>
								<li>
									<a href="about.jsp">How Its Work</a>
								</li>
								<li><a href="book.jsp">Shedule</a></li>
								<li><a href="people.jsp">House Keepers</a></li>
								<li><a href="ourplans.jsp">Our plans</a></li>
								<li><a href="review.jsp">Review</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="login.jsp" class="active">Login</a></li>
								
							</ul>
						</nav>
					</div>
				</div>
			</header>	
			</div>
<div class="header"></div>
		<!-- end:fh5co-header -->
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/home-image.jpg);">
				<div class="desc animate-box">
				   
              
            
            
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h2>HOUSEKEEPING <br>is a <b> Promise</b></h2>
								<p><span>WE KEEP<i class="icon-heart3"></i> <a href="" class="fh5co-site-name">WHILE YOU SAVE THE WORLD</a></span></p>
								<span><a class="btn btn-primary" href="book.jsp">Start Your Journey</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!--<div class="fh5co-parallax" style="" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">Our Services</h1>
							<p>Made with love by the fine Customers</p>
							<span><a class="btn btn-primary" href="#">Book Now</a></span>
						</div>
					</div>
				</div>
			</div>
		</div> end: fh5co-parallax -->
	<div id="fh5co-programs-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>Our Services</h2>
							<p>Dusting/ vacuuming of the mattress</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-dumbell.svg" alt="Cycling">
							<h3>BEDROOM</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Book Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-yoga.svg" alt="">
							<h3>BATHROOM</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Book Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-cycling.svg" alt="">
							<h3>KITCHEN</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Book Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-boxing.svg" alt="Cycling">
							<h3>GENARAL AREAS</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Book Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-swimming.svg" alt="">
							<h3>LIVING AREAS</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Book Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-massage.svg" alt="">
							<h3>ELSE WHERE</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Book Now</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="fh5co-parallax" style="background-image: url(images/home-image-2.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 fh5co-table">
						<div class="fh5co-intro fh5co-table-cell box-area">
							<div class="animate-box">
								<h1>OUR HOUSEKEEPING PLANS</h1>
								<p>Pay now and get 25% Discount</p>
								<a href="#" class="btn btn-primary">Become A Member</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<div id="fh5co-pricing-section" class="fh5co-pricing fh5co-lightgray-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>Pricing Plan</h2>
							<p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="pricing">
					<div class="col-md-3 animate-box">
						<div class="price-box animate-box">
							<h2 class="pricing-plan">Starter</h2>
							<div class="price"><sup class="currency">$</sup>9<small>/month</small></div>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
							<ul class="classes">
								<li>15 Cardio Classes</li>
								<li class="color">10 Swimming Lesson</li>
								<li>10 Yoga Classes</li>
								<li class="color">20 Aerobics</li>
								<li>10 Zumba Classes</li>
								<li class="color">5 Massage</li>
								<li>10 Body Building</li>
							</ul>
							<a href="#" class="btn btn-default">Select Plan</a>
						</div>
					</div>

					<div class="col-md-3 animate-box">
						<div class="price-box animate-box">
							<h2 class="pricing-plan">Basic</h2>
							<div class="price"><sup class="currency">$</sup>27<small>/month</small></div>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
							<ul class="classes">
								<li>15 Cardio Classes</li>
								<li class="color">10 Swimming Lesson</li>
								<li>10 Yoga Classes</li>
								<li class="color">20 Aerobics</li>
								<li>10 Zumba Classes</li>
								<li class="color">5 Massage</li>
								<li>10 Body Building</li>
							</ul>
							<a href="#" class="btn btn-default">Select Plan</a>
						</div>
					</div>

					<div class="col-md-3 animate-box">
						<div class="price-box animate-box popular">
							<h2 class="pricing-plan pricing-plan-offer">Pro <span>Best Offer</span></h2>
							<div class="price"><sup class="currency">$</sup>74<small>/month</small></div>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
							<ul class="classes">
								<li>15 Cardio Classes</li>
								<li class="color">10 Swimming Lesson</li>
								<li>10 Yoga Classes</li>
								<li class="color">20 Aerobics</li>
								<li>10 Zumba Classes</li>
								<li class="color">5 Massage</li>
								<li>10 Body Building</li>
							</ul>
							<a href="#" class="btn btn-select-plan btn-sm">Select Plan</a>
						</div>
					</div>

					<div class="col-md-3 animate-box">
						<div class="price-box animate-box">
							<h2 class="pricing-plan">Unlimited</h2>
							<div class="price"><sup class="currency">$</sup>140<small>/month</small></div>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
							<ul class="classes">
								<li>15 Cardio Classes</li>
								<li class="color">10 Swimming Lesson</li>
								<li>10 Yoga Classes</li>
								<li class="color">20 Aerobics</li>
								<li>10 Zumba Classes</li>
								<li class="color">5 Massage</li>
								<li>10 Body Building</li>
							</ul>
							<a href="#" class="btn btn-default">Select Plan</a>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
		
	
		<!-- fh5co-blog-section -->
		
	  <div class="footer"></div>
	

	</body>
</html>