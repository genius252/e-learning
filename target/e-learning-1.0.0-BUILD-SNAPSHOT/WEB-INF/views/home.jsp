<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page session="false"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap 3, from LayoutIt!</title>

	<meta name="description" content="Source code generated using layoutit.com">
	<meta name="author" content="LayoutIt!">
	
	<style>
		<%@include file="css/bootstrap.min.css"%>
		<%@include file="css/style.css"%>
	</style>


</head>
<body>

	<div class="container-fluid">
		<div class="row" style="background-color:black;">
			<div class="col-md-2">
				<img alt="Bootstrap Image Preview" src="Google+ alt.png" height="50px">
			</div>
			<div class="col-md-8">
				<ul class="nav nav-pills" >
					<li class="active">
						<a href="#">Home</a>
					</li>
					<li>
						<a href="#">Profile</a>
					</li>
					<li class="disabled">
						<a href="#">Messages</a>
					</li>
					<li class="dropdown" >
						<select class="form-control" id="Language_Selector">
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
							<option value="4">Four</option>
							<option value="5">Five</option>
						</select>
					</li>
				</ul>
			</div>
			<div class="col-md-2">
				<img alt="Bootstrap Image Preview" src="Google+ alt.png" class="img-circle" height="50px">
			</div>
		</div>
		<div class="row">
			<div class="col-md-3" id="Topics">
					-- aici o sa intre topicurile formate
			</div>
			<p class="greeting-id"></p>
			<div class="col-md-9">
				<p id="Test">
					Lorem ipsum dolor sit amet, <strong>consectetur adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst. Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi commodo sodales nisi id sodales. Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus, id bibendum diam velit et dui.</em> Proin massa magna, vulputate nec bibendum nec, posuere nec lacus. <small>Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et feugiat ipsum consequat eu.</small>
				</p>
			</div>
		</div>
	</div>
	<script>
		$(".form-control").change(function() {
			var option = document.getElementById('Language_Selector').value;
			var AddTopic = document.getElementById('Topics');
			$.ajax({
				type:'GET',
				dataType: 'json',
				url: "technologies/"+ option+ "/topics"
			}).then(function(data)
			{
				for(i=0;i<data.content.length;i++)
				{
					var topic = document.createElement("button");
					var content= (Object.keys(data.content[i]));
					topic.innerHTML = content.content.name;
					AddTopic.appendChild(topic);
				}
			});
		});
	</script> 
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>