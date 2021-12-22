<%@ page pageEncoding="utf-8"%>


<body>
<div id="breadcrumbs">
	
		<div class="container">
			<ul>
				<li><a href="trang-chu">Home</a></li>
				<li>Login</li>
			</ul>
		</div>
		<!-- / container -->
	</div>
    <div id="logreg-forms">
        <form class="form-signin" action ="login.htm" method="post">
        
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng nhập</h1>
            <p class="text-danger">${mess }</p>
            <p class="text-success">${mess1 }</p>
            
            <div class="social-login">
                <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
            </div>
            <p style="text-align:center"> OR  </p>
            <input name="user" type="text" id="inputUser" class="form-control" placeholder="Tên đăng nhập" required="" autofocus="">
            <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required="">
            
            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Đăng nhập</button>
            <a href="#" id="forgot_pswd">Quên mật khẩu?</a>
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Đăng ký</button>
            </form>

            <form action="/reset/password/" class="form-reset">
                <input type="test" id="resetEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            
            <form action="signup.htm" class="form-signup" method="post" onsubmit='return checkValidate()'>
                <div class="social-login">
                    <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign up with Facebook</span> </button>
                </div>
                <div class="social-login">
                    <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </button>
                </div>
                
                <p style="text-align:center">OR</p>
				
				   
                          
                           <div>
                            <label for="last_name"><h4>Họ tên</h4></label>
                              <input type="text" class="form-control" name="Name" id="username1" placeholder="Họ và tên"  >
                              <small style="color: red; font: 50px; "></small>
                          </div> 
                      
				
              <!--   <input name= "Name" type="text" minlength="4" maxlength="50" size="50" id="username1" class="form-control" placeholder="Họ và tên"  autofocus=""> -->
                <small style="color: red; font: 50px; "></small>
                <input name= "Date" type="date" id="user-date" class="form-control" placeholder="Ngày sinh" required=""  autofocus="">
                
                <input name= "Address" type="text" id="user-address" class="form-control" placeholder="Địa chỉ" autofocus="" required="">
              <!--  	<div>
               	<input name="Number"  type="number" id="phone1" class="form-control" placeholder="Số điện thoại" maxlength="4" size="4"  autofocus="">
               	
               	 <small style="color: red; font: 50px; "></small>
               	</div> -->
               	
               	  <div>
                            
                              <input type="number" class="form-control" name="Number" id="phone1" placeholder="Số điện thoại"  >
                              <small style="color: red; font: 50px; "></small>
                          </div> 
               	
               	<!-- <input name= "userDK" type="text" id="tk" class="form-control" placeholder="Tên đăng nhập"  autofocus=""> -->
               	
				   	
               	  <div>
                            
                              <input type="text" class="form-control" name="userDK" id="tk" placeholder="Tên đăng nhập"  >
                              <small style="color: red; font: 50px; "></small>
                          </div>                	
               	
                <input name="passDK" type="password"  minlength="8" maxlength="32" size="50" id="user-pass" class="form-control" placeholder="Mật khẩu"  autofocus="" required="">
                <input name ="repass" type="password"  minlength="8" maxlength="32" size="50" id="user-repeatpass" class="form-control" placeholder="Nhập lại mật khẩu" autofocus="" required="">
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Đăng ký</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Quay về</a>
            </form>
            <br>
            
    </div>
<!--     <p style="text-align:center">
        <a href="http://bit.ly/2RjWFMfunction toggleResetPswd(e){
    e.preventDefault();	
    $('#logreg-forms .form-signin').toggle() // display:block or none
    $('#logreg-forms .form-reset').toggle() // display:block or none
}

function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-signup').toggle(); // display:block or none
}

$(()=>{
    // Login Register Form
    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
    $('#logreg-forms #btn-signup').click(toggleSignUp);
    $('#logreg-forms #cancel_signup').click(toggleSignUp);
})g" target="_blank" style="color:black">By Artin</a>


    </p> -->
    
 

	   <content tag="script">
	   <script>
 function toggleResetPswd(e){
	    e.preventDefault();
	    $('#logreg-forms .form-signin').toggle() // display:block or none
	    $('#logreg-forms .form-reset').toggle() // display:block or none
	}

	function toggleSignUp(e){
	    e.preventDefault();
	    $('#logreg-forms .form-signin').toggle(); // display:block or none
	    $('#logreg-forms .form-signup').toggle(); // display:block or none
	}

	$(()=>{
	    // Login Register Form
	    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
	    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
	    $('#logreg-forms #btn-signup').click(toggleSignUp);
	    $('#logreg-forms #cancel_signup').click(toggleSignUp);
	})
 </script> 
 </content>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
   	 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <script>
		//Truy cập vào các ô input

		const usernameEle1 = document.getElementById('username1');
		const tk1 = document.getElementById('tk');
		var phoneEle1 = "";
		phoneEle1 = document.getElementById('phone1');
			

		// Validate dữ liệu trong các ô input và highlight
		function checkValidate() {
			
			var usernameValue="";
			usernameValue = usernameEle1.value.trim(); 
			
			var tkValue="";
			tkValue = tk1.value.trim(); 
			
			//var emailValue ="";
			// emailValue = emailEle1.value.trim();
			 var phoneValue ="";
			phoneValue = phoneEle1.value.trim(); 
			
			let isCheck = true;
			
			// Kiểm tra trường username
			var regex = "";
			regex=/[a-zA-Z]+$/;
			
			if (usernameValue == '') {
				setError(usernameEle1, 'Họ tên không được để trống không được để trống');
				isCheck = false;
				return isCheck;
			}
			else if (!regex.test(usernameValue)) {
				
				setError(usernameEle1, 'Tên không được chứa các kí tự bất thường');
				isCheck = false;			
				return isCheck;
				
			} else{
				
				setSuccess(usernameEle1);
				
			}
			
			
		
			 if (!regex.test(tkValue)) {
				
				setError(tk1, 'Tên đăng nhập không được chứa các kí tự bất thường');
				isCheck = false;			
				return isCheck;
				
			} else{
				
				setSuccess(tk1);
				
			}

			// Kiểm tra trường email
		/*  	if (emailValue == '') {
				setError(emailEle, 'Email không được để trống');
				isCheck = false;
				return isCheck;
			} else if (!isEmail(emailValue)) {
				setError(emailEle, 'Email không đúng định dạng');
				isCheck = false;
				return isCheck;
			} else {
				setSuccess(emailEle);
			} */

			// Kiểm tra trường phone
			if (phoneValue == '') {
				setError(phoneEle1, 'Số điện thoại không được để trống');
				isCheck = false;
				return isCheck;
			} else if (!isPhone(phoneValue)) {
				setError(phoneEle1, 'Số điện thoại không đúng định dạng');
				isCheck = false;
			} else {
				setSuccess(phoneEle);
			} 
			
			return isCheck;
		}
		function setError(ele, message) {
			let parentEle = ele.parentNode;
			parentEle.classList.add('error');
			ele.style.color = "red";
			parentEle.querySelector('small').innerText = message;
		}
		function setSuccess(ele) {
			ele.parentNode.classList.add('success');
		}
	/* 	function isEmail(email) {
			return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
					.test(email);
		} */

		function isPhone(number) {
			return /(84|0[3|5|7|8|9])+([0-9]{8})\b/.test(number);
		}
	</script>
</body>
</html>