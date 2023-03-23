<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<title>Inventory Page</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			font-size: 14px;
			line-height: 1.5;
			background-color: #f0f0f0;
		}

		.container {
			max-width: 800px;
			margin: 0 auto;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
		}

		h1 {
			font-size: 24px;
			font-weight: bold;
			margin-top: 0;
		}

		label {
			display: block;
			margin-bottom: 10px;
		}

		select, input[type="date"] {
			padding: 5px;
			border: 1px solid #ccc;
			border-radius: 3px;
			font-size: 14px;
			width: 100%;
			margin-bottom: 20px;
			box-sizing: border-box;
		}

		.tab {
			overflow: hidden;
			border: 1px solid #ccc;
			background-color: #f1f1f1;
			margin-bottom: 20px;
		}

		.tab button {
			background-color: inherit;
			float: left;
			border: none;
			outline: none;
			cursor: pointer;
			padding: 14px 16px;
			transition: 0.3s;
		}

		.tab button.active {
			background-color: #ccc;
		}

		.tabcontent {
			display: none;
			padding: 6px 12px;
			border: 1px solid #ccc;
			border-top: none;
		}

		button {
			background-color: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 3px;
			padding: 10px 20px;
			font-size: 14px;
			cursor: pointer;
			transition: 0.3s;
			margin-bottom: 20px;
		}

		button:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
  <!-- Navigation bar -->
  <nav class="navbar">
    <div class="navbar-right">
      <form id="logout" method="post" action="login.jsp">
        <button type="submit" class="btn btn-outline-light">Logout</button>
      </form>
    </div>
  </nav>
  <br>
	<div class="container">
		<h1>Inventory Page</h1>
		<label for="product-select">Select a Product:</label>
		<select id="product-select" onchange="displayShipOnWeekends()">
			<option value="product1">fugiat exercitation adipisicing</option>
			<option value="product2">mollit cupidatat Lorem</option>
			<option value="product3">non quis sint</option>
			<option value="product4">voluptate cupidatat non</option>
			<option value="product5",">anim amet occaecat</option>
			<option value="product6">cillum deserunt elit</option>
			<option value="product7">adipisicing reprehenderit et</option>
			<option value="product8">ex mollit laboris</option>
		</select>
		<div class="tab">
			<button class="tablinks active" onclick="openTab(event, 'shiponweekends-tab')">Ship on Weekends</button>
			<div id="shiponweekends-tab" class="tabcontent" style="display: block;">
				<p id="shiponweekends"></p>
			</div>
		</div>
		<label for="order-date">Order Date:</label>
		<input type="date" id="order-date" onchange="checkShippingDate()">
		<button onclick="checkShippingDate()">Check Shipping Date</button>
	</div>
	<script>
		function displayShipOnWeekends() {
			var productSelect = document.getElementById("product-select");
			var selectedOption = productSelect.options[productSelect.selectedIndex].value;
			var shipOnWeekends = document.getElementById("shiponweekends");
			if (selectedOption === "product1") {
				shipOnWeekends.innerHTML = "This product can be shipped on weekends.";
			} else if (selectedOption === "product2") {
				shipOnWeekends.innerHTML = "This product can be shipped on weekends.";
			} else if (selectedOption === "product3") {
				shipOnWeekends.innerHTML = "This product cannot be shipped on weekends for certain zip codes.";
			} else if (selectedOption === "product4") {
				shipOnWeekends.innerHTML = "This product cannot be shipped on weekends.";
			}else if (selectedOption === "product5") {
				shipOnWeekends.innerHTML = "This product can be shipped on weekends.";
			} else if (selectedOption === "product6") {
				shipOnWeekends.innerHTML = "This product cannot be shipped on weekends.";
			} else if (selectedOption === "product7") {
				shipOnWeekends.innerHTML = "This product cannot be shipped on weekends for certain zip codes.";
			}else if (selectedOption === "product8") {
				shipOnWeekends.innerHTML = "This product can be shipped on weekends.";
			}
		}

		function openTab(event, tabName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(" active", "");
			}
			document.getElementById(tabName).style.display = "block";
			event.currentTarget.className += " active";
		}

		function checkShippingDate() {
			var orderDate = new Date(document.getElementById("order-date").value);
			var shipOnWeekends = document.getElementById("shiponweekends").innerHTML;
			var maxDaysToShip = ;
			if (shipOnWeekends.indexOf("cannot be shipped on weekends.") >= 0) {
				maxDaysToShip = 15;
			} else if (shipOnWeekends.indexOf("can be shipped on weekends.") >= 0) {
				maxDaysToShip = 18;
			} else if (shipOnWeekends.indexOf("for certain zip codes.") >= 0) {
				maxDaysToShip = 19;
			}
			var shippingDate = new Date(orderDate.getTime() + (maxDaysToShip * 24 * 60 * 60 * 1000));
			alert("The estimated shipping date is " + shippingDate.toDateString());
		}
	</script>
</body>
</html>
		