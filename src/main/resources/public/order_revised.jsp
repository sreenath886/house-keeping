
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
	// $('.footer').load("footer.jsp"); 
	hk_services_get();
});

</script> 
<link rel="stylesheet" href="css/order.css">
</head>
<div class="header"></div>
    
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="height: 100px;" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		<div id="fh5co-contact">
			<div class="container">
				
					<div class="row">
						<div class="col-md-6 animate-box">
							<h3 class="section-title">Additional Services</h3>
							
						</div>
					
					</div>
					<div class="fh5co-parallax" style="height: 100px;" data-stellar-background-ratio="0.5">
					
					 <section title=".roundedOne">
    <!-- .roundedOne -->
    <div class="roundedOne">
      <input type="checkbox" value="None" id="roundedOne" name="check" checked />
      <label for="roundedOne">Room Services</label>
      <input type="checkbox" value="None" id="roundedOne" name="check" checked />
      <label for="roundedOne">Floor Service</label>
      <input type="checkbox" value="None" id="roundedOne" name="check" checked />
      <label for="roundedOne">Cleaning Services</label>
       <input type="checkbox" value="None" id="roundedOne" name="check" checked />
      <label for="roundedOne">Free Services</label>
    </div>
    
    <!-- end .roundedOne -->
  </section>
					  </div>
				<div class="row"style="margin-top:2%;">
						<div class="col-md-6 animate-box">
							<h3 class="section-title">Order Details</h3>
							
						</div>
					
					</div>	  
				<div class="col-md-4 animate-box">
							<div><form class="contact-form">
								<div class="form-group">
									<label for="name" >Name::  </label><label for="name" >Sreenath</label>
									
								</div>
								<div class="form-group">
									<label for="name" >Email::  </label><label for="name" >Sreenath@gmail.com</label>
								</div>
								<div class="form-group">
								<label for="name" >Email::  </label><label for="name" >Sreenath@gmail.com</label>
									</div>
								
								</div>
							</form>
						</div>
						
						<div class="col-md-4 animate-box">
							
							<div><form class="contact-form">
								<div class="form-group">
									<label for="name" >Order Id::  </label><label for="name" >1234321</label>
									
								</div>
								<div class="form-group">
									<label for="name" >Location::  </label><label for="name" >Madiwala</label>
								</div>
								<div class="form-group">
								<label for="name" >Date And Time::  </label><label for="name" >12-01-2017</label>
									</div>
								<div class="form-group">
									<input type="submit" id="btn-submit" onclick="hk_contact_postsd();" class="btn btn-send-message btn-md" value="Finish">
								</div>
								</div>
							</form>
						</div>
						
						<div class="col-md-4 animate-box">
							
							<div><form class="contact-form">
								<div class="form-group">
									<label for="name" >Service::  </label><label for="name" >cleanning</label>
									
								</div>
								<div class="form-group">
									<label for="name" >Time estimatted::  </label><label for="name" >2h</label>
								</div>
								<div class="form-group">
								<label for="name" >phone  </label><label for="name" >22987543323</label>
									</div>
								
								</div>
							</form>
						</div>
			</div>
		</div>

    
    <div class="footer"></div>
    
	</body>
</html>
