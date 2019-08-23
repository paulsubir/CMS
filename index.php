<!DOCTYPE HTML>
<html lang="en_US">
<head>
	<meta charset="UTF-8">
	<title> Health Plus Clinic Center </title>
</head>
<body bgcolor="#E6E6FA">
<h3 align="right" style="margin-right:20px;"><a href="login.php">Admin Login</a></h3>
<h1 align="center"><a href=index.php>Welcome to Health Plus Clinic</a></h1>

<form method="post" action="index.php">
<table style="Width:50%;" align="center" border="1">
	<tr>
		<td colspan="2" align="center">Patient Information</td>
	</tr>
	<tr>
		<td align="left">Enter your appointment number</td>
        <td><input type="text" name="ano" placeholder="appointment number" required></td>
	</tr>
	<tr>
		<td align="left">Enter your name</td>
		<td><input type="text" name="pname" placeholder="Enter your first name" required></td>
	</tr>
	<tr>
		<td colspan="2"align="center"><input type="submit" name="submit" value="Show info"></td>
	</tr>
	
</table>
</form>
</body>
</html>
<?php
if(isset($_POST['submit'])){
	$appid=$_POST['ano'];
	$name=$_POST['pname'];
	include('dbcon.php');
	include('info.php');
	showdetails($appid,$name);
}
?>