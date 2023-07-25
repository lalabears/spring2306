<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<script>
			function chartBtn(){
				let chart_labels = [];
				let chart_data = []; 
				
				$.ajax({
					url: "/chart_data",
					type: "post",
					dataType:"json",
					data:{"year":"2023"},
					success: function(data){
						alert("성공");
						console.log(data);
						
						//chart_labels = ['1월', '2월', '3월', '4월', '5월', '6월'];
						//chart_data = [12, 19, 3, 5, 2, 3];
						$.each(data, function(){
							chart_labels.push();
							chart_data.push();
							
							
						})
						
						createChart(chart_labels,chart_data);
						
						
					},error:function(){
						alert("실패");
					}
					
					
				});//ajax
		
				
				
			
			}
			
			
			function createChart(chart_labels,chart_data){
				
				//chart_labels = ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'];
				//chart_data = [12, 19, 3, 5, 2, 3];
				
				const ctx = document.getElementById('myChart');
				
				  new Chart(ctx, {
				    type: 'bar',
				    data: {
				      labels: chart_labels,
				      datasets: [{
				        label: '매출액 그래프',
				        data: chart_data,
				        borderWidth: 1,
				        backgroundColor: [
	                        'rgba(255, 99, 132, 0.2)',
	                        'rgba(54, 162, 235, 0.2)',
	                        'rgba(255, 206, 86, 0.2)',
	                        'rgba(75, 192, 192, 0.2)',
	                        'rgba(153, 102, 255, 0.2)',
	                        'rgba(255, 159, 64, 0.2)'
	                        ]
				      }]
				    },
				    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        }
				      }
				    }
				  });
				
			}
		</script>

		<style type="text/css">
		#main{width: 1000px; margin: 10px auto;}
		h3{width: 1000px; text-align: center;}
		#chartBody{width: 900px; height:700px; margin: 0 auto; border: 1px solid black;}
		
		
		
		
		
		</style>
	</head>
	<body>
	<button onclick="chartBtn()"> 차트데이터 불러오기 </button>
	<br>
	<div id="main">
		<h3>차트</h3>
		<div id="chartBody">
	  		<canvas id="myChart"></canvas>
		</div>
	</div>
	</body>
</html>