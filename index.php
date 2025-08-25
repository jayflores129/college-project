<?php

session_start();
include "includes/connect.php";

?>

<!DOCTYPE html>
<html>
<head>
	<title>Tugkaran Home Page</title>
	<?php include 'includes/links.php'; ?>
	<style>
	</style>
</head>
<body class="w3-light-grey">

<script>
	fetch('http://localhost:9000/graphql.php', {
		method: 'post',
		body: JSON.stringify({
			query: '{ echo(message: "Hello World", sound: "TestSound") }'
		}),
		headers: {
			'Content-Type': 'application/json',
		},
	})
	.then(res => res.json())
	.then(data => console.log(data))
</script>

<!-- <?php include 'includes/header.php'; ?>

<div class="container-fluid w3-light-grey w3-center" style="height:420px;padding:10px">
		<div class=" w3-padding-xxlarge">
			<h1>Welcome to <br> Tugkaran Restaurant</h1>
		</div>
</div>
<?php include 'includes/footer.php' ?> -->
</body>
</html>
