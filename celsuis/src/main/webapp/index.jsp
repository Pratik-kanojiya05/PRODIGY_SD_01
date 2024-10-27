<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h1 {
            font-size: 28px;
        }

        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Temperature Converter</h1>

        <form action="TemperatureConverterServlet" method="post">
            <div class="input-section">
                <label for="temperature">Enter Temperature:</label>
                <input type="number" id="temperature" name="temperature" placeholder="Enter value" required>

                <label for="unit">Select Unit:</label>
                <select id="unit" name="unit" required>
                    <option value="celsius">Celsius</option>
                    <option value="fahrenheit">Fahrenheit</option>
                    <option value="kelvin">Kelvin</option>
                </select>

                <button type="submit">Convert</button>
            </div>
        </form>

        <%-- If the servlet sets any conversion results, display them here --%>
        <div class="result-section">
            <h2>Converted Temperatures:</h2>
            <p id="celsiusResult">Celsius: <%= request.getAttribute("celsiusResult") != null ? request.getAttribute("celsiusResult") : "" %></p>
            <p id="fahrenheitResult">Fahrenheit: <%= request.getAttribute("fahrenheitResult") != null ? request.getAttribute("fahrenheitResult") : "" %></p>
            <p id="kelvinResult">Kelvin: <%= request.getAttribute("kelvinResult") != null ? request.getAttribute("kelvinResult") : "" %></p>
        </div>
    </div>
</body>
</html>