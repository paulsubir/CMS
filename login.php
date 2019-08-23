<?php
session_start();
if(isset($_SESSION['uid'])){
	header('location:admin/admindash.php');
}
?>

<!DOCTYPE HTML>
<html lang="en_US">
<head>
	<meta charset="UTF-8">
	<title>Admin Login</title>
	<a href="index.php"style="float:left; margin-right:30px; color:Black;font-size:20px">Back</a>
</head>
<body style="background-color:powderblue;">
<h1 align="center"><u>Admin Login</u></h1>
<form action="login.php" method="post">
<table align="center">
<tr>
<td align="center">Username</td><td><input type="text" name="uname" required></td>
</tr>   
<tr>
<td align="center">Password</td><td><input type="password" name="pass" required></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit"name="login" value="login"></td>
</tr>
</table>
</form>
</body>
</html>
<?php

include('dbcon.php');

if(isset($_POST['login'])){
	$username=$_POST['uname'];
	$password=$_POST['pass'];
	$qry="SELECT * FROM `admin` WHERE `username`='$username' and `password`='$password';";
	$run=mysqli_query($con,$qry);
	$row=mysqli_num_rows($run);
	if($row<1)
	{
		?>
		<script>
		alert('Username or password not matched!!');
		window.open('login.php','_self');
		</script>
		<?php
	}
	else{
		$data=mysqli_fetch_assoc($run);
		$id=$data['aid'];
		
		$_SESSION['uid']=$id;
		header('location:admin/admindash.php');
	}
}

?>