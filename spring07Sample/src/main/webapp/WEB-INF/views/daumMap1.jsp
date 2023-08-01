<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>map</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<script type="text/javascript">
		
		
		
			function setXY(){
				
				var x = $("#pointX").val();
				var y = $("#pointY").val();
				
				
				
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			    mapOption = { 
			        center: new kakao.maps.LatLng(x, y), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
				
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(x, y); 

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				
				// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
				kakao.maps.event.addListener(map, 'center_changed', function() {
				
				    // 지도의  레벨을 얻어옵니다
				    var level = map.getLevel();
				
				    // 지도의 중심좌표를 얻어옵니다 
				    var latlng = map.getCenter(); 
				
				    var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
				    message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>';
				
				    var resultDiv = document.getElementById('result');
				    resultDiv.innerHTML = message;
				
				});
				
				
				
				
			}
		
			
			function changeXY(){
	
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
			    mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
	
				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
				// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
				kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
				    // 클릭한 위치에 마커를 표시합니다 
				    addMarker(mouseEvent.latLng);             
				});
		
				// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
				var markers = [[37.492052, 126.8848701],[37.4996715, 126.8664159],[37.4912147, 126.8404114]];
				
				// "고려대학교의과대학부속구로병원", "37.492052", "126.8848701"
				// "구로성심병원", "37.4996715", "126.8664159"
				// "삼성미래여성병원", "37.4912147", "126.8404114",
				
				
		
				// 마커 하나를 지도위에 표시합니다 
				addMarker(new kakao.maps.LatLng(33.450701, 126.570667));
			
		
			}

		// 마커를 생성하고 지도위에 표시하는 함수입니다
		function addMarker(position) {
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        position: position
		    });

		    // 마커가 지도 위에 표시되도록 설정합니다
		    marker.setMap(map);
		    
		    // 생성된 마커를 배열에 추가합니다
		    markers.push(marker);
		}
		
		

		// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
		function setMarkers(map) {
		    for (var i = 0; i < markers.length; i++) {
		        markers[i].setMap(map);
		    }            
		}

		// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
		function showMarkers() {
		    setMarkers(map)    
		}

		// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
		function hideMarkers() {
		    setMarkers(null);    
		}
		
			
			
			
			
		</script>
		
		
		
	
		
	</head>
	<body>
	
		<div id="map" style="width:500px;height:350px;"></div>
		
		
		<input type = "text" name="pointX" id="pointX" >
		<input type = "text" name="pointY" id ="pointY">
		<button onclick = "setXY()">버튼</button><br>
		37.485328, 126.981981 이수 <br>
37.476530, 126.981621 사당<br>
37.537018, 126.978372 용산<br>
35.167599, 129.056755 부산시민공원<br>
37.569921, 127.020936 청계천쪽<br>
37.551771, 126.920681 마포<br>
35.182968, 129.044441 부산어린이대공원<br>
35.098161, 129.036753 부산광복점<br>
35.100512, 129.032877 부산용두산공원<br>
37.614473, 126.960473 북한산국립공원<br>
35.170125, 129.173731 부산해운대 장산역<br>
35.774659, 129.300025 경주국립공원<br>
35.865254, 128.593486 대구중구<br>
37.495860, 127.064535 강남대치역<br>
37.550081, 126.914335 합정역<br>
36.376953, 127.384597 대전엑스포<br>
		
		<button onclick = "changeXY()">버튼</button><br>
		
	<p><em>지도 중심좌표가 변경되면 지도 정보가 표출됩니다</em></p>
	<p id="result"></p>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d99aad64257f4c7b6af58515d60b1a79"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	</script>
	
	
	


	</body>
</html>
	