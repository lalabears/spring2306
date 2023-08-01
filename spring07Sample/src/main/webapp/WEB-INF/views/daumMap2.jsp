<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d99aad64257f4c7b6af58515d60b1a79"></script>







</head>
<body>


	<div id="map" style="width: 100%; height: 350px;"></div>
	
	<em>클릭한 위치에 마커가 표시됩니다!</em>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = {
			center : new kakao.maps.LatLng(37.492052, 126.8848701), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
			// 클릭한 위치에 마커를 표시합니다 
			addMarker(mouseEvent.latLng);
		});

		// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
		var markers = [];
		var m = [ [ 37.492052, 126.8848701 ],[ 37.4996715, 126.8664159 ], [ 37.4912147, 126.8404114 ] ];

		// 마커 하나를 지도위에 표시합니다 
		for (var i = 0; i < 3; i++) {

			let x = m[i][0];
			let y = m[i][1];
			
			console.log(x,y)
			addMarker(new kakao.maps.LatLng(x, y));
		}

		// 마커를 생성하고 지도위에 표시하는 함수입니다
		function addMarker(position) {

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				position : position
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 생성된 마커를 배열에 추가합니다
			markers.push(marker);
			
			setMarkers(map)
		}

		// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
		function setMarkers(map) {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(map);
			}
		}

		
	</script>

</body>
</html>
