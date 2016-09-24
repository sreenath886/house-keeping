
function time_pick()
{
	var h_val=$('#house_type').val();
	var x='0';
	if(h_val== 0)
		{
		x='0';
		}
	else if(h_val==1)
		{
		x='1 hr';
		}
	else if(h_val== 2)
	{
			x='2 hr';
	}
	else if(h_val== 3)
	{
	x='4 hr';
	}
	else if(h_val== 4)
	{
	x='5 hr';
	}
	
   $('#time-pick').val(x);
}


function hk_signup_one_post()
{
	var x=1;
	if( $('#hk_name').val()==""||$('#hk_name').val()==null)
		{
		var x=0;		
		}
	else if($('#hk_phone').val()==""||$('#hk_phone').val()==null)
		{ var x=0;}
	else if($('#hk_email').val()==""||$('#hk_email').val()==null)
	{ var x=0;}
	
	alert(x);
	var usertype = "1";
	 $.ajax({
	        dataType: "json",
	        type: "POST",
	        data: {
	        	hk_name: $('#hk_name').val(),
	        	hk_phone: $('#hk_phone').val(),
	        	hk_email: $('#hk_email').val(),
	        	hk_password:"1234",
	        	hk_usertype:usertype
	        },
	        url: '/api/v1/users/create',
	        success: function(response) {
	            alert('user inserted');
	            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
	            //var jsonString = JSON.stringify(response);
	          

	        }
	    });
	
	
	hide_divs();
}
function hk_signup_two_post()
{
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
	
	alert(x);
	
	var usertype =$('#location').val();
	alert(usertype);
	 $.ajax({
	        dataType: "json",
	        type: "POST",
	        data: {
	        	//hk_location: $('#location').val(),
	        	//hk_address: $('#hk_address').val(),
	        	//hk_house_type: $('#house_type').val(),
	        	//hk_time-pick: $('#time-pick').val(),
	        	//hk_datepicker: $('#datepicker').val(),
	        	//hk_time_selector:$('#time_selector').val()
	        },
	        url: '/api/v1/users/create2',
	        success: function(response) {
	            alert('123');
	            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
	            //var jsonString = JSON.stringify(response);
	          

	        }
	    });
	
	
	hide_divs();
}