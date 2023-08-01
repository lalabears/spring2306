<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d99aad64257f4c7b6af58515d60b1a79"></script>
<script>

	
	</script>






</head>
<body>


	<div id="map" style="width: 100%; height: 350px;"></div>




	<button onclick = "drawBtn(37.492052, 126.8848701)">버튼1</button><br>
	<button onclick = "drawBtn(37.4996715, 126.8664159)">버튼2</button><br>
	<button onclick = "drawBtn(37.4912147, 126.8404114 )">버튼3</button><br>
	
	
	<button onclick = "cktest()">버튼</button><br>
	<div id = "hosList">
	</div>
	
	
	
	
	
	

	<script type="text/javascript">
		var m = [ [ 37.492052, 126.8848701 ],[ 37.4996715, 126.8664159 ], [ 37.4912147, 126.8404114 ] ];
		
		drawMap(m, m[0][0],m[0][1]);
		function drawMap(m,x,y){
			
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
				center : new kakao.maps.LatLng(x, y), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			 
			// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
		
			var points = [
			    new kakao.maps.LatLng(m[0][0], m[0][1]),
			    new kakao.maps.LatLng(m[1][0], m[1][1]),
			    new kakao.maps.LatLng(m[2][0], m[2][1])
			];
			
			// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
			var bounds = new kakao.maps.LatLngBounds();    
			
			var i, marker;
			for (i = 0; i < points.length; i++) {
			    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
			    marker =     new kakao.maps.Marker({ position : points[i] });
			    marker.setMap(map);
			    
			    // LatLngBounds 객체에 좌표를 추가합니다
			    bounds.extend(points[i]);
			}
			map.setBounds(bounds);
			
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
			    // 클릭한 위도, 경도 정보를 가져옵니다 
			    var latlng = mouseEvent.latLng;
			    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			    message += '경도는 ' + latlng.getLng() + ' 입니다';
			    console.log(message)
			    redrawMap(m,latlng.getLat(),latlng.getLng())
			    
			});
		}// drawMap()
		
		function drawBtn(x,y){
			
			$.ajax({
				url:"/getPnt",
				type:"post",
				success:function(data){
									
					console.log(data)
					console.log(x)
					console.log(y)
					
					
					var a = [];
					for (var i=0; i<data.length; i++) {
						a.push([data[i].x, data[i].y]);
					}
			
					console.log(a);
					
				
					
					
					
					
					m.push[data[0].x, data[0].y]
					m.push[data[1].x, data[1].y]
					m.push[data[2].x, data[2].y]
					m.push[data[3].x, data[3].y]
					m.push[data[4].x, data[4].y]
					
					
					console.log(m)
					redrawMap(m,x,y)
					
				},
				error:function(){
					alert("실패");
					
				}
			});
			
			
			
			
		}
		
		
		function redrawMap(m,x,y){
	
			console.log(m.length)
			
			
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
				center : new kakao.maps.LatLng(x, y), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			var points = [];
			
			for(var i = 0 ; i <m.length ; i++){
				points.push(new kakao.maps.LatLng(m[i][0], m[i][1]));
			}
			
			
			
			
			// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
			var bounds = new kakao.maps.LatLngBounds();    
			
			var i, marker;
			for (i = 0; i < points.length; i++) {
			    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
			    marker =     new kakao.maps.Marker({ position : points[i] });
			    marker.setMap(map);
			    
			    // LatLngBounds 객체에 좌표를 추가합니다
			    bounds.extend(points[i]);
			}
			
			
			
		}	
		
		
	
		
		function cktest(){
			
			$.ajax({
				url:"/getPnt",
				type:"post",
				success:function(data){
			
					
					var list = [];
					
					for (var i=0; i<data.length; i++) {
						list.push([data[i].x,data[i].y])
					}
			
					console.log(list);
					console.log(list.length);
					clickHere(list)
					var fu = [[1,2],[2,3]]
					 
					for (var i=0; i<data.length; i++) {
						var name = data[i].name
						let htmlData = "";
						//htmlData += "<a onclick='clickHere("+name+","+a+")' style='color:orange; cursor:pointer'>"+data[i].name+"</a>";
						htmlData += "<a onclick='clickA( \""+name+"\"   )' style='color:orange; cursor:pointer'>"+data[i].name+"</a>";
						htmlData += "<br>"
						$("#hosList").append(htmlData);
					}
					
					
					
				},
				error:function(){
					alert("실패");
					
				}
			});
			
			
			
			
		}
		
		function clickA(name){
			
			$.ajax({
				url:"/getPnt",
				type:"post",
				success:function(data){
					
					var list = [];
					
					for (var i=0; i<data.length; i++) {
						list.push([data[i].x,data[i].y])
					}
					redrawMap(list, x,y)
					
				}
			
			
			
			
			
		}
		
		
	</script>
	

</body>
</html>
