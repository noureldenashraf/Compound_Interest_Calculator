<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compound Interest Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: indigo;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: wheat;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
         color: indigo;
        }
        h3{
            text-align: center;
            color: purple;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
            color: #555;
            font-size: 14px;
        }

        input[type="number"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Compound Interest Calculator</h1>
    <h1>${error}</h1>
    <form action="/main" method="POST">
        <label for="principal">Principal Amount (Starting Balance):</label>
        <input type="number" id="principal" name="principal" min="0" step="any" required>

        <label for="rate">Interest Rate (%):</label>
        <input type="number" id="rate" name="rate" min="0" step="any" required>

        <label for="time">Time (in years):</label>
        <input type="number" id="time" name="time" min="0" step="any" required>

        <label for="frequency">Number of times interest is compounded per year:</label>
        <input type="number" id="frequency" name="frequency" min="1" required>

        <input type="submit" value="Calculate">
    </form>
    <h3>Result is : ${result}</h3>
</div>

</body>
</html>

