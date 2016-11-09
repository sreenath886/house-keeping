

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
	
<head>
<link rel="stylesheet" href="css/number-picker.css" media="screen" charset="utf-8">
 <link rel="stylesheet" href="css/jquery-ui.1.1.css">
<script src="js/jquery.min.js"></script>	
    <script src="js/static.js"></script>	
    <script src="js/jquery.numble.min.js" charset="utf-8"></script>
     <script src="js/signup.js"></script>	
      <script src="js/jquery-ui.1.1.js"></script>
        <script>
  $( function() {
	 var h_val='';
     $( "#datepicker" ).datepicker({
    	 showOtherMonths: true,
    	 selectOtherMonths: true,
    	 dateFormat:'d-m-yy',
    		
    })
    .on( "change", function() {
    	//alert(123);
    	var h_val=$('#datepicker').val();
    		//alert(date);
    	get_availabe_time(h_val)
     // to.datepicker( "option", "minDate", getDate( this ) );
    })
    
   
  } );
  
  
  </script>
<script> 

$(document).ready(function() {
	$('.header').load("header.jsp"); 
	$('.footer').load("footer.jsp"); 
	hk_services_get();
        index_book_divs();
        hk_servicescatalog_get();
      //  $('#book_div').hide();
// $('#book_div').show();
// $('#book_div3').show();
  // $('#book_div0').show();
  //
   $('#datepicker').val('Select Your Date');
   hk_localities_get();
  });

</script> 
<link rel="stylesheet" href="css/order.css">
<link rel="stylesheet" href="css/invoice.css">
</head>
<div class="header"></div>
    
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="height: 100px;" data-stellar-background-ratio="0.5"></div>
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
				
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		
		<div id="fh5co-contact">
		<div id="contcat_success" hidden="true" style="margin-left: 582px;"><center><h2>Your request submitted successfully</h2> </center></div>
			<div class="container">
			 <div id="book_div">
			<div id="login2"> <h1>Book Now</h1></div>
				<form action="#">
					<div class="row">
						<div class="col-md-6 animate-box">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" id="hk_name" class="form-control" placeholder="Name">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" id="hk_phone" class="form-control" placeholder="Phone">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="text" id="hk_email" class="form-control" placeholder="Email">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="button" id="book_button"   onclick="hk_signup_one_post();" value="Book" />
									</div>
								</div>
							</div>
						</div>
					
					</div>
				</form>
			</div>
			</div>
			
			
			
			
			
			<div class="container">
			 <div id="book_div0"  class="">
						<div id="login2"> <h1>Schedule Your Time</h1></div>
				<form action="#">
					<div class="row">
						<div class="col-md-6 animate-box">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<select name="dropdown" id="location" class="form-control" >
  										<option value="Developer">Select your Location</option>
  
		  								</select>
									</div>
								</div>
								
								<div class="col-md-6">
									<div class="form-group">
										 <select name="house_type" id="house_type" onChange="time_pick();" class="form-control" >
  <option value="0">House Type</option>
  <option value="1">1 BHK</option>
  <option value="2">2 BHK</option>
  <option value="3">3 BHK</option>
  <option value="4">Duplex Home</option>
		  </select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
									<textarea name="" class="form-control" id="address" cols="30" rows="2" placeholder="Address"></textarea>
									
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<div id='date-pk' ><div class="date-txt">Recomanded Hr's
    <input type='button' value='-' class='qtyminus' field='quantity' />
    <input type='text' id="time-pick" name='quantity' value='0' class='qty' />
    <input type='button' value='+' class='qtyplus' field='quantity' /></div>
</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										 <div id=''> <input type="text" class="form-control"  id="datepicker"></div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										  <select name="dropdown2" id="time_selector" class="form-control" >
  <option value="0">Select your Time</option>
 
		  </select>
									</div>
								</div>
								<div class="col-md-12">
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
			<div class="container" id="book_div3">
			 <div id="fhc6o-sub-menu"  class="fhc6o-sub-menu">
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
                                <label id="invoice_id">Invoice Number</label><br>
                               <label id="invoice_date"> invoice date</label><br>
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
                                <label>Billing address</label><br>
                                <label id="invoice_name"> address</label><br>
                               <label id="invoice_address"> address</label><br>
                               
                                
                            </td>
                            
                            <td>
                          
                               <label id="order_date"> Sree</label><br>
                              <label id="invoice_email"> email</label><br>
                                 <label id="invoice_phone"> phone</label><br>
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
                    COD #
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
                
                <td id ="hk_total">
                    $300.00
                </td>
            </tr>
            
            
            
            
            
            <tr class="total">
                <td>Grand Total</td>
                
                <td id ="hk_grand_total">
                    
                </td>
            </tr>
            
            
             <tr class="heading" id="">
                <td>
                    ADDITIONAL SERVICES
                </td>
                
                <td>
                    
                </td>
            </tr>
             </table>
            <table class="hk_servicecatalog" id="hk_servicecatalogs">
        </table>
      
        
        
        
					
    </div>
					
							
								<div class="col-md-16">
									<div class="form-group">
									<input type="hidden" id="hk_invoice_total" class="form-control" placeholder="Name">
									<input type="hidden" id="hk_invoice_ids" class="form-control" placeholder="Name">
										  <input type="button" class="book_but" id="book_button"  onclick="hk_invoice_update();"  value="Finish" />
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</form>
			</div>
			</div>
				
					
						
						
						
						
						
						
						
						
			</div>
		</div> 
			</div>
			
			
			
			
			</div>	
			
		</div>

    
    <div class="footer"></div>
    
	</body>
</html>


















