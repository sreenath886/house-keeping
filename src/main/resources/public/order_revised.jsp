
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
<link rel="stylesheet" href="css/invoice.css">



</head>
<div class="header"></div>
    
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="height: 100px;" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		<div id="fh5co-contact">
					<div class="container">
				<div class="container">
			 
				<form action="#">
					<div class="row">
						<div class="col-md-6 animate-box" style="margin-left: 250px;">
							<div class="row">
							<div id="login2"> <h1> Your Invoice Details</h1></div>
							    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="/images/logo.png" style="width:40%; max-width:60px;max-height:100px;"><h4>House keeping pvt Ltd</h4>
                            </td>
                            
                            <td>
                            <br>
                                Invoice #: 1238<br>
                                Created: January 1, 2017<br>
                                Due: February 1, 2017
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                Next Step Webs, Inc.<br>
                                12345 Sunny Road<br>
                                Sunnyville, TX 12345
                            </td>
                            
                            <td>
                                Vijay<br>
                                Sree<br>
                                house@example.com
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                    Payment Method
                </td>
                
                <td>
                    Check #
                </td>
            </tr>
            
            <tr class="details">
                <td>
                    Cash On Delivery
                </td>
                
                <td>
                    
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                    Item
                </td>
                
                <td>
                    Price
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    General House Keeping
                </td>
                
                <td>
                    $300.00
                </td>
            </tr>
            
            
            
            
            
            <tr class="total">
                <td></td>
                
                <td>
                   Total: $300.00
                </td>
            </tr>
            
            
             <tr class="heading">
                <td>
                    ADDITIONAL SERVICES
                </td>
                
                <td>
                    
                </td>
            </tr>
             
            <tr class="item">
                <td>
                   <input type="checkbox" value="100" id="ONE" name="check1" checked /> Kitchen Cleaning
                </td>
                
                <td>
                    $100.00
                </td>
            </tr>
             
            <tr class="item">
                <td>
                 <input type="checkbox" value="200" id="two" name="check2"  />   Floor Cleaning
                </td>
                
                <td>
                    $200.00
                </td>
            </tr>
             <tr class="item">
                <td>
                 <input type="checkbox" value="100" id="three" name="check3"  />   Bathroom Cleaning
                </td>
                
                <td>
                    $100.00
                </td>
            </tr>
             <tr class="item">
                <td>
                 <input type="checkbox" value="200" id="four" name="check4"  />   Bedroom Cleaning
                </td>
                
                <td>
                    $300.00
                </td>
            </tr>
        </table>
        
        
        
        
					
    </div>
					
							
								<div class="col-md-16">
									<div class="form-group">
										  <input type="button" id="book_button"  onclick="hk_signup_two_post();"  value="Finish" />
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</form>
			</div>
				
					
						
						
						
						
						
						
						
						
			</div>
		</div> 

    
    <div class="footer"></div>
    
	</body>
</html>

