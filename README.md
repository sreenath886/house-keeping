POST	save msg	http://localhost:8181/api/v1/message/create?message=new test guys&email=vijay@gmail.com	@All
			
GET	List services	http://localhost:8181/api/v1/services	
			
GET	see list of all users	http://localhost:8181/api/v1/userslist	
			
POST	Add user	http://localhost:8181/api/v1/user/create?hk_name=UJAAY&hk_email=ujayS@gmail.com&hk_password=pass&hk_usertype=1&hk_phone=6767677	@Register
			
GET	get user id 	http://localhost:8181/api/v1/specificuserid?hk_phone=1111&hk_email=vijay@gmail.com	@Register
			
POST	Delete user	http://localhost:8181/api/v1/user/delete?id=11	@Admin
			
POST	Add User  address	http://localhost:8181/api/v1/user/addressadd?hk_user_id=26&hk_locality=2&hk_address=no12 ,sssssss,bomi&hk_housetype=2&hk_numberhours=3	@Register
			
POST	Add User Log	http://localhost:8181/api/v1/user/log1?hk_user_id=24&hk_startdate=06-02-2016&hk_firstcalltime=24	@Loggedin/@Register
			
			
			
POST	Authenticate a user	http://localhost:8181/api/v1/usersauth?hk_username=vijay@gmail.com&hk_pass=pass	@Login
			
GET	Locality	http://localhost:8181/api/v1/localities	@All
