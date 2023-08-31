<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EliteHangers.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home - Elite Hangers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light gray background for the entire page */
            margin: 0;
            padding: 0;
        }
        .dashboard-nav {
            display: flex;
            justify-content: center; /* Center the navigation links */
            margin-bottom: 20px;
            border-top: 2px solid #007bff; /* Blue top border as menu strip outline */
            border-bottom: 2px solid #007bff; /* Blue bottom border as menu strip outline */
            padding: 10px 0; /* Add padding for the menu strip */
            border-radius: 15px; /* Round the corners */
        }
        .dashboard-nav ul {
            list-style: none;
            padding: 0;
            display: flex;
        }
        .dashboard-nav li {
            margin-right: 20px;
        }
        .dashboard-nav a {
            text-decoration: none;
            color: #007bff; /* Blue text for the navigation links */
            font-weight: bold;
        }
        .dashboard-container {
            max-width: 800px;
            margin: 30px auto; /* Add some top margin for better spacing */
            padding: 20px;
            border-radius: 15px; /* Round the corners */
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
            background-color: #fff; /* White background for the dashboard */
            color: #000; /* Black text for the dashboard */
        }
        .dashboard-content {
            padding: 20px;
            border-radius: 15px; /* Round the corners */
            margin-top: 20px;
            background-color: #f9f9f9; /* Light gray background for content */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-nav">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Book a Hanger</a></li>
                <li><a href="#">History</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>
        <div class="dashboard-container">
            <div class="dashboard-content">
                Welcome to Elite Hangers .<!-- Your content goes here --></div>
        </div>
    </form>
</body>
</html>
