<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>map2.jsp</title>
<style type="text/css">

	#map{
		width : 100%;
		height : 100%;
	}
	html, body{
		width : 100%;
		height : 100%;
	}
</style>
</head>

<body>
<button id="loc1">강남역</button>
<button id="loc2">이대역</button>
<button id="loc3">광화문</button>
<button id="loc4">우리집</button>
<div id="map">Google Map</div>
</body>
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">
	var latLng = {
			lat : 37.12345,
			lng : 127.12345
	};
	
	var options = {
		zoom : 12,
		center : latLng
	};
	
	var m = new google.maps.Map(map, options);
	
	m.setCenter({
		lat : 37.498384,
		lng : 127.027535
	});
	
	m.setZoom(18);
	
	var geoCoder = new google.maps.Geocoder();
	
	
	
	function moveMap(){
		alert(this.id + " click...");
		switch (this.id) {
		case "loc1":
			console.log("강남역으로...");
			
			geoCoder.geocode({address:'강남역'}, function(result,status){
				console.dir(result);
				console.dir(status);
				console.dir(geoCoder);
				
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				console.log("lat = "+ lat);
				console.log("lng = "+ lng);
				
				m.setCenter({
					lat : lat,
					lng : lng
				});
				m.setZoom(18);
			});
			break;
			
		case "loc2":
			console.log("이대역으로...");
			geoCoder.geocode({address:'이대역'}, function(result,status){
				console.dir(result);
				console.dir(status);
				console.dir(geoCoder);
				
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				console.log("lat = "+ lat);
				console.log("lng = "+ lng);
				
				m.setCenter({
					lat : lat,
					lng : lng
				});
				m.setZoom(18);
			});
			break;
		case "loc3":
			console.log("광화문역으로...");
			geoCoder.geocode({address:'광화문'}, function(result,status){
				console.dir(result);
				console.dir(status);
				console.dir(geoCoder);
				
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				console.log("lat = "+ lat);
				console.log("lng = "+ lng);
				
				m.setCenter({
					lat : lat,
					lng : lng
				});
				m.setZoom(18);
			});
			break;
		case "loc4":
			console.log("우리집으로...");
			geoCoder.geocode({address:'양지면 양지초등학교'}, function(result,status){
				console.dir(result);
				console.dir(status);
				console.dir(geoCoder);
				
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				console.log("lat = "+ lat);
				console.log("lng = "+ lng);
				
				m.setCenter({
					lat : lat,
					lng : lng
				});
				m.setZoom(18);
			});
			break;

		default:
			break;
		}
		
	}
	loc1.onclick = moveMap;
	loc2.onclick = moveMap;
	loc3.onclick = moveMap;
	loc4.onclick = moveMap;
	
	
</script>
</html>