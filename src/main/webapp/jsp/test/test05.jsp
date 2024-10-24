<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h2>변환 결과</h2>
		
		<%
			int cm = Integer.parseInt(request.getParameter("cm"));
		
			// 인치, 야드, 피트, 미터
			// inch, yard, feet, meter
			String[] units = request.getParameterValues("unit");
			
			String result = "";
			for(int i = 0; i < units.length; i++) {
				String unit = units[i];
				
				if(unit.equals("inch")) {					
					double inch = cm * 0.39;
					result += inch + "in<br>\n";
				} else if(unit.equals("yard")) {
					double yard = cm * 0.010936133;
					result += yard + "yd<br>\n";
				} else if(unit.equals("feet")) {
					double feet = cm * 0.032808399;
					result += feet + "ft<br>\n";
				} else if(unit.equals("meter")) {
					double meter = cm / 100.0;
					result += meter + "m<br>\n";
				}
			}
			
		%>
		
		<h3><%= cm %>cm</h3>
		<hr>
		<h3><%= result %></h3>
	
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>