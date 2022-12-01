<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetotp.aspx.cs" Inherits="DivyanshuJethi.Forms.forgetotp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>otp</title>
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
					<img src="images/otp.jpg" alt="IMG">
				</div>
				
				

				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						OTP
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input type="text" id="emailadress" runat="server"  class="input100" placeholder="Enter Email Id"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input"  data-validate = "Password is required">
						<p style="padding-left:70px;color: green;"><%=X%></p>
						<p style="padding-left:70px;color: red;"><%=z%></p>
					</div>
					<div class="container-login100-form-btn">
						
						<asp:Button ID="Button4" runat="server" Text="GetOtp" class="login100-form-btn" OnClick="Button4_Click" />
					</div>
					<div class="text-center p-t-12">
						
						
						</a>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<asp:TextBox ID="otpnow" runat="server" type="password" class="input100" name="pass" placeholder="Enter Otp"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-key" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"  data-validate = "Password is required">
						<p style="padding-left:70px;color: red;"><%=Y%></p>
					</div>
					
					<div class="container-login100-form-btn">
						
						<asp:Button ID="Button1" runat="server" Text="Login" class="login100-form-btn" OnClick="Button1_Click" />
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
</body>
</html>
