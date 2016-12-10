POST	save msg	http://localhost:8181/api/v1/message/create?message=new test guys&email=vijay@gmail.com	@All
			
GET	List services	http://localhost:8181/api/v1/services	
			
GET	see list of all users	http://localhost:8181/api/v1/userslist	
			
POST	Add user	http://localhost:8181/api/v1/user/create?hk_name=UJAAY&hk_email=ujayS@gmail.com&hk_password=pass&hk_usertype=1&hk_phone=6767677	@Register
			
GET	get user id 	http://localhost:8181/api/v1/specificuserid?hk_phone=1111&hk_email=vijay@gmail.com	@Register
			
POST	Delete user	http://localhost:8181/api/v1/user/delete?id=11	@Admin
			
POST	Add User  address	http://localhost:8181/api/v1/user/addressadd?hk_user_id=26&hk_locality=2&hk_address=no12 ,sssssss,bomi&hk_housetype=2&hk_numberhours=3	@Register
			
POST	Add User Log	http://localhost:8181/api/v1/user/loginsert?hk_user_id=24&hk_startdate=06-02-2016&hk_firstcalltime=24	@Loggedin/@Register
			

GET	TIME LIST	http://localhost:8181/api/v1/empschedule?hk_date=25-10-2016&hk_zone=NE

			
			
POST	Authenticate a user	http://localhost:8181/api/v1/usersauth?hk_username=vijay@gmail.com&hk_pass=pass	@Login
			
GET	Locality	http://localhost:8181/api/v1/localities	@All

POST	BOOK time	http://localhost:8181/api/v1/updatetimepool?hk_date=25-10-2016&hk_starttime=11&hk_zone=NE&hk_callid=Wsd2@s&flag=3
		
POST	unbook	http://localhost:8181/api/v1/resettimepool?hk_pid=6

GET     Populate 2nd form using user id from session, have to login first to test it,same id must have
entery in address table
http://localhost:8181/api/v1/user/addressshow?hk_user_id=0

-- WORKS AFTER LOGIN AND LOG INSERT
POST   http://localhost:8181/api/v1/user/invoiceinsert?hk_logId=0&hk_userId=0&hk_invoiceDate=06-04-2010&hk_invoiceTime=12&hk_addOnServices=2&hk_addonAmount=200&hk_mainService=1&hk_mainAmount=300&hk_couponcode=22dhdbndjm@&hk_discount=20&hk_tax=16&hk_total=30000&hk_paymentType=hand




