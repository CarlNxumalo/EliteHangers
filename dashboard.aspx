<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Elite Hangers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light gray background for the entire page */
            margin: 0;
            padding: 0;
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
        .dashboard-content {
            padding: 20px;
            border-radius: 15px; /* Round the corners */
            margin-top: 20px;
            background-color: #f9f9f9; /* Light gray background for content */
        }
        .dashboard-labels {
            margin-bottom: 15px; /* Increase spacing between labels */
        }
        .dashboard-labels label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        .dashboard-inputs {
            margin-top: 5px; /* Add spacing between labels and inputs */
        }
        .dashboard-button {
            text-align: center;
            margin-top: 20px;
        }
        .dashboard-button button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff; /* Blue button background color */
            color: #fff; /* White button text color */
            border: none;
            border-radius: 15px; /* Round the button corners */
            cursor: pointer;
        }
    </style>
</head>
<body style="height: 1158px">
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <div class="dashboard-nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Book a Hanger</a></li>
                    <li><a href="#">History</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="dashboard-content">
                <div class="dashboard-labels">
                    <label for="DropDownList1">Hanger Location:</label>
                    <div class="dashboard-inputs">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="251px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
                <div class="dashboard-labels">
                    <label for="DropDownList2">Hanger:</label>
                    <div class="dashboard-inputs">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="251px"></asp:DropDownList>
                    </div>
                </div>
                <div class="dashboard-labels">
                    <label for="Calendar1">Date of Arrival:</label>
                    <div class="dashboard-inputs">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </div>
                </div>
                <div class="dashboard-labels">
                    <label for="TextBox1">Duration of Stay:</label>
                    <div class="dashboard-inputs">
                        <asp:TextBox ID="TextBox1" runat="server" Width="90px"></asp:TextBox>
                    </div>
                </div>
                <div class="dashboard-button">
                    <button type="button">Book</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
