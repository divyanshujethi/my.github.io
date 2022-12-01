<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="DivyanshuJethi.Forms.reg" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" type="image/png" href="https://uu-img.s3.ap-south-1.amazonaws.com/2017/11/favicon-1.png"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="mycss/util.css">
	<link rel="stylesheet" type="text/css" href="mycss/main.css">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img3.jpg" alt="IMG">
				</div>
				

				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						Register Account
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<asp:TextBox ID="email" runat="server"  class="input100" name="email" placeholder="Email"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<asp:TextBox ID="name" runat="server"  class="input100"  placeholder="User Name"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
						<asp:TextBox ID="pass" runat="server" class="input100" type="password" name="pass" placeholder="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<asp:TextBox ID="cpass" runat="server" class="input100" type="password" name="pass" placeholder="confirm Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
						
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span id='message' style="padding-left:100px" ></span>
						
					</div>
					<div class="wrap-input100 validate-input"  data-validate = "Password is required">
						<p style="padding-left:70px;color: red;"><%=X%></p>
					</div>
					<div class="container-login100-form-btn">
						<asp:Button ID="Button1" runat="server" Text="Register" class="login100-form-btn" OnClick="Button1_Click" />
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="login.aspx">
							Already Have Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
        $('#pass, #cpass').on('keyup', function () {
            if ($('#pass').val() == $('#cpass').val()) {
                $('#message').html('Matching').css('color', 'green');
            } else
                $('#message').html('Not Matching').css('color', 'red');
        });
    </script>
	<script src="js/main.js"></script>

</body>
</html>
