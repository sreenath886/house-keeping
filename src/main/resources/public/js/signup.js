
function time_pick()
{
	var h_val=$('#house_type').val();
	var x=0;
	if(h_val== 0)
		{
		x=0;
		}
	else if(h_val==1)
		{
		x=1;
		}
	else if(h_val== 2)
	{
			x=2;
	}
	else if(h_val== 3)
	{
	x=4;
	}
	else if(h_val== 4)
	{
	x=5;
	}
	
   $('#time-pick').val(x);
}


function hk_signup_one_post()
{
	//hide_divs();
	var x=1;
	if( $('#hk_name').val()==""||$('#hk_name').val()==null)
		{
		var x=0;		
		}
	else if($('#hk_phone').val()==""||$('#hk_phone').val()==null)
		{ var x=0;}
	else if($('#hk_email').val()==""||$('#hk_email').val()==null)
	{ var x=0;}
	
	//alert(x);
	var usertype = "1";
		 $.ajax({
	        dataType: "json",
	        type: "POST",
	        data: {
	        	hk_name: $('#hk_name').val(),
	        	hk_phone: $('#hk_phone').val(),
	        	hk_email: $('#hk_email').val(),
	        	hk_usertype:usertype
	        },
	        url: '/api/v1/user/create',
	        success: function(response) {
	        	var obj = response;
	            var status_value=obj['response'];
	            if(status_value== 0)
	         	   {
	            	 //alert('user inserted');
	            	hide_divs();
	             //window.location='dashboard.jsp';
	         	   }
	            else
	            	{
	            	 alert('Got Some Error.Please try with differant Email Id!! ');
	            	}
	           

	        }
	    });
	
	
	
}
function hk_signup_two_post()
{
	//window.location='order_revised.jsp';
	
	var x=1;
	if( $('#location').val()==""||$('#location').val()=="Select your Location")
		{
		var x=0;		
		}
	else if($('#hk_address').val()==""||$('#hk_address').val()==null)
		{ var x=0;}
	else if($('#house_type').val()==""||$('#house_type').val()=="House Type")
	{ var x=0;}
	else if($('#time-pick').val()==""||$('#time-pick').val()==null)
	{ var x=0;}
	else if($('#datepicker').val()==""||$('#datepicker').val()==null)
	{ var x=0;}
	else if($('#time_selector').val()==""||$('#time_selector').val()=="Select your Time")
	{ var x=0;}
	
	//alert(x);
	
	var usertype =$('#location').val();
	//alert(usertype);
	 time_date_insert();
	 $.ajax({
	        dataType: "json",
	        type: "POST",
	        data: {
	        	hk_user_id : 0,
	        	hk_locality: $('#location').val(),
	        	hk_address: $('#address').val(),
	        	hk_housetype: $('#house_type').val(),
	        	hk_numberhours: $('#time-pick').val(),
	        	//hk_datepicker: $('#datepicker').val(),
	        	//hk_time_selector:$('#time_selector').val()
	        },
	        url: '/api/v1/user/addressadd',
	        success: function(response) {
	           // alert('123');
	            var obj = response;
	            var status_value=obj['response'];
	            if(status_value== 0)
	         	   {
	            	
	            	// alert('user inserted');
	            	  time_date_insert();
	         	   }
	            else
	            	{
	            	 alert('Got Some Error ');
	            	}
	            
	            
	            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
	            //var jsonString = JSON.stringify(response);
	          

	        }
	    });
	
	
	hide_divs();
}

function time_date_insert()
{
	//alert('from time-date');
	
	var h_val= $('#datepicker').val();
	//alert(h_val);
	var y=1;
	if( h_val ==""||h_val==0)
		{
		var y=0;		
		}
	
	//alert(y);
	if(y=== 1)
		{
		//alert(h_val);
	 $.ajax({
	        dataType: "json",
	        type: "POST",
	        data: {
	        	hk_user_id : 0,
	        	hk_startdate: h_val,
	        	hk_firstcalltime: $('#time_selector').val(),
	        	hk_callId: 'no'
	        	//hk_datepicker: $('#datepicker').val(),
	        	//hk_time_selector:$('#time_selector').val()
	        },
	        url: '/api/v1/user/loginsert',
	        success: function(response) {
	             var obj = response;
	            var status_value=obj['response'];
	            if(status_value== 0)
	         	   {
	            	 $('#book_div').hide();
	                 $('#book_div0').hide();
	                 $('#book_div3').show();
	                 hk_invoice_bind()
	            	 //alert('user inserted');
	            	//window.location='order_revised.jsp';
	         	   }
	            else
	            	{
	            	 alert('Got Some Error ');
	            	}
	            
	            
	            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
	            //var jsonString = JSON.stringify(response);
	          

	        }
	    });
		}
	}

//get invoice service ids
function hk_check_invoice()
{

	 var notChecked = [], checked = [];
	    $(":checkbox").map(function() {
	        this.checked ? checked.push(this.id) : notChecked.push(this.id);
	    });
	    $('#hk_invoice_ids').val(checked);
	   // var $grouplist2 = $('.hk_selected_services');
	    
	 //   $('<tr class="item">' + '<td>' +' <input type="checkbox" onclick="hk_check_invoice();" value="200"  id='+obj[i].id +' name="check2" /> '+obj[i].hk_servicename + '</td>'+ '<td>'+ obj[i].hk_serviceprice + '</td>' + '</tr>').appendTo($grouplist);
        
	   // alert("checked: " + checked);
	  //  alert("not checked: " + notChecked);
}

function hk_invoice_bind()
{
	var o_date = $.datepicker.formatDate('mm/dd/yy', new Date());
	//var hk_locality= $('#location').val();
 	var hk_address= $('#address').val();
 	var hk_invoice_date=  $('#datepicker').val();
 	
 	//alert(hk_invoice_date);
 	//alert(hk_address);
	//jQuery("label[for='myalue']").html("asd");
	 $('#order_date').html('Order Date :' + o_date);
	 $('#invoice_id').html('Invoice Number :' + o_date + '123' );
	 $('#invoice_date').html('Invoice Date :' + hk_invoice_date  );
	 $('#invoice_name').html('Name :' +  $('#hk_name').val()  );
	 $('#invoice_address').html('Address :' + hk_address  );
	 $('#invoice_email').html('Email:' + $('#hk_email').val()  );
	 $('#invoice_phone').html('Phone:' + $('#hk_phone').val()  );
}

function hk_invoice_update()
{
	//alert(1);
	 $('.book_but').hide();
	// document.getElementById("hk_servicecatalogs").style.display = "none";
	// document.getElementById('hk_servicecatalogs').style.visibility="none";
	// $('#hk_servicecatalog').children().attr('disabled', 'disabled');
	 $('#hk_servicecatalogs').find('input, textarea, checkbox, button, select').attr('disabled','disabled');
}


//Servicescatalog Get
function hk_servicescatalog_get()
{
	//alert(123);
    $.ajax({
        dataType: "json",
        async: false,
        type: "GET",
        url: '/api/v1/servicescatalouge',
        success: function(response) {
  
            var obj = response;
           // alert(obj);
            var $grouplist = $('.hk_servicecatalog');
            /* 
             "obj" is evaluated at this point if server responded 
             with "application/json" or similar.
             */
        
                //alert(response.data[i].user_email);
            	for (var i = 0; i < obj.length; i++) {
            		
            		if(obj[i].is_main_service === 0 )
            			{
            			//alert(obj[i].id);
                     $('<tr class="item">' + '<td>' +' <input type="checkbox" onclick="hk_check_invoice();" value="200"  id='+obj[i].id +' name="check2" /> '+obj[i].hk_servicename + '</td>'+ '<td >'+ obj[i].hk_serviceprice + '</td>' + '</tr>').appendTo($grouplist);
                   //  alert(obj[i].hk_servicename);
            			}
                   //  $('#hk_servicecatalog').append( '<tr><td>' +  <input type="checkbox" value="200" id="two" name="check2"  /> +  i + '</td></tr>' );
                   if(obj[i].id===1)  
                     {
                	   $('#hk_total').html(obj[i].hk_serviceprice);
                	   $('#hk_grand_total').html('Total :'+ obj[i].hk_serviceprice);
                     }
                    // total
                     }
                 

        }
    });

}