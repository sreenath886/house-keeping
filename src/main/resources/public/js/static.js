
function hide_divs()
{
     $('#book_div').hide();
        $('#book_div0').show();
        $('#book_div3').hide();
    
}
function service_book_divs()
{
   var hide_val=0;
    if (hide_val == 1)
    {
        $('#book_div1').hide();
        $('#book_div2').show();
    }
    else
    {
        $('#book_div1').show();
        $('#book_div2').hide();
    }

}
function index_book_divs()
{
   var hide_val=0;
    if (hide_val == 1)
    {
        $('#book_div').hide();
        $('#book_div0').show();
        $('#book_div3').hide();
    }
    else
    {
        $('#book_div').show();
        $('#book_div0').hide();
        $('#book_div3').hide();
    }

}
//login 

function hk_login_post()
{
	//alert(123);
	$('#contcat_success').show();
    $.ajax({
        dataType: "json",
        type: "POST",
        data: {
        	hk_username: $('#hk_username').val(),
        	hk_pass: $('#hk_pass').val()
        },
        url: '/api/v1/usersauth',
        success: function(response) {
        	//alert(12);
        	var obj = response;
        	var status_value=obj['response'];
           if(status_value== 0)
        	   {
           // window.location='dashboard.jsp';
        	   }
           else
        	   {
        	 //  window.location='login.jsp';
        	   }
            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
            //var jsonString = JSON.stringify(response);
          

        }
    });

}

//Services Get
function hk_services_get()
{
	//alert(123);
    $.ajax({
        dataType: "json",
        async: false,
        type: "GET",
        url: '/api/v1/services',
        success: function(response) {
            //alert('1');
            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
            //var jsonString = JSON.stringify(response);
            var obj = response;
            var $grouplist = $('.fh5co-sub-menu');
            /* 
             "obj" is evaluated at this point if server responded 
             with "application/json" or similar.
             */
            for (var i = 0; i < obj.length; i++) {
                $('<li>' + '<a>' + obj[i].sr_DESCRIPTION + '</a>' + '</li>').appendTo($grouplist);
              //  alert(obj[i].sr_DESCRIPTION);
            }

        }
    });

}
//for locality
//function hk_localities_get()
function hk_localities_get()
{
    // // alert(123)
    // // var id="null";
    $.ajax({
    	 dataType: "json",
         async: false,
         type: "GET",
         url: '/api/v1/localities',
        success: function(response) {
        	var obj = response;

          
                for (var i = 0; i < obj.length; i++) {
                    //alert(response.data[i].user_email);
                	var x=obj[i].hk_ZONE;
                	//alert(x);
                    $('#location').append(
                    		
                            $('<option id='+obj[i].hk_ZONE +' ></option>').val(obj[i].hk_LOCALITY_ID).html(obj[i].hk_LOCALITY));

                }
           
            
            
            
        }
    });
}

//For contact us post
function hk_contactus_post()
{
    //alert(1234);
	 $('#contcat_success').show();
    $.ajax({
        dataType: "json",
        type: "post",
        data: {
            hk_message: $('#hk_message').val(),
            hk_email: $('#hk_email').val(),
            hk_name: $('#hk_name').val()
        },
        url: 'http://localhost:8181/api/v1/message/create',
        success: function(response) {
           //alert(123);
        	 $('#contcat_success').show();
           // var obj = response;
          //  alert(obj);
           // var status = obj[1].status;
           // alert(status);
            /* 
             "obj" is evaluated at this point if server responded 
             with "application/json" or similar.
             */


        }
    });

}

//Services Get
function hk_location_get()
{
	//alert(123);
    $.ajax({
        dataType: "json",
        async: false,
        type: "GET",
        url: '/api/v1/localities',
        success: function(response) {
            //alert('1');
            //var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
            //var jsonString = JSON.stringify(response);
            var obj = response;
            alert(obj);
            //var $grouplist = $('.fh5co-sub-menu');
            /* 
             "obj" is evaluated at this point if server responded 
             with "application/json" or similar.
             */
            for (var i = 0; i < obj.length; i++) {
               // $('<li>' + '<a>' + obj[i].sr_DESCRIPTION + '</a>' + '</li>').appendTo($grouplist);
               // alert(obj[i].hk_LOCALITY);
            }

        }
    });

}






