
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
	alert(h_val);
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
	            	 //alert('user inserted');
	            	window.location='order_revised.jsp';
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