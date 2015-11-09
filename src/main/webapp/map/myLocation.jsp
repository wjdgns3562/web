<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>myLocation.jsp</title>

<c:url var="bootstrap"
	value="/node_modules/bootstrap/dist/css/bootstrap.css" />
<c:url var="jquery" value="/node_modules/jquery/dist/jquery.js" />
<!-- /web/node_modules/bootstrap/dist/css/bootstrap.css -->
<!-- /web/node_modules/jquery/dist/jquery.js -->
<link rel="stylesheet" href="${bootstrap }">
<script type="text/javascript" src="${jquery }">
	
</script>
<script src="https://maps.googleapis.com/maps/api/js"></script>
<style type="text/css">
html, body, #map {
	height: 100%;
	width: 100%;
}
</style>
<script type="text/javascript">
	//준비 핸들러
	$(document).ready(function() {
		var options = {
			zoom : 16,
			center : {
				lat : 0,
				lng : 0
			}
		};
		var m = new google.maps.Map(map, options);

		$('button').click(function() {
			console.log("button click...");
			navigator.geolocation.getCurrentPosition(function(position) {
				console.dir(position);
				console.log("latitude =" + position.coords.latitude);
				console.log("longitude =" + position.coords.longitude);
				m.setCenter({
					lat : position.coords.latitude,
					lng : position.coords.longitude
				})

			}, function(position) {
				console.dir(error);
			});

		});

	});
</script>
</head>

<body>
	<button class="btn btn-primary">My Location</button>
	<div id="map">Google Map</div>
</body>
</html>