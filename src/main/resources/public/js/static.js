		$(document).ready(function() {
			hk_services_get();
		
		});
		
		function hk_services_get()
		 {
			$.ajax({
		        dataType : "json",
		        type : "GET",
		        data : {
		            g_username : 'sree',
		            g_pwd : 'sree'
		        },
		       url : '/api/v1/services',

		        success : function(response) {
		        	//alert('123');
		        	//var json = [{"Id":"10","Name":"Matt"},{"Id":"1","Name":"Rock"}];
		        	//var jsonString = JSON.stringify(response);
		        	var obj = response;
		        	 var $grouplist = $('.fh5co-sub-menu');
      /* 
         "obj" is evaluated at this point if server responded 
         with "application/json" or similar.
       */
      for (var i = 0; i < obj.length; i++) {
    	  $('<li>' +'<h4>' + obj[i].sr_DESCRIPTION + '</h4>'+ '</li>').appendTo($grouplist);
    	  //alert(obj[i].sr_DESCRIPTION);
      }
		           					
		        }
		    });
			
		 }
		function hk_contact_post()
		 {
			alert(1);
			$.ajax({
		        dataType : "json",
		        type : "post",
		        data : {
		        	hk_message : $('#hk_message').val(),
		        	hk_email : $('#hk_email').val(),
		        	hk_name : $('#hk_name').val()
		        },
		       url : 'http://localhost:8181/api/v1/message/create',

		        success : function(response) {
		        	alert(1);
		        	var obj = response;
		        	alert(obj);
		        	var status = obj[1].status;
		        	alert(status);
     /* 
        "obj" is evaluated at this point if server responded 
        with "application/json" or similar.
      */
    
		           					
		        }
		    });
			
		 }

	