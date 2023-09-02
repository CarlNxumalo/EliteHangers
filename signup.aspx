<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="EliteHangers.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up - Elite Hangers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        #container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        #logo {
            text-align: center;
            margin-bottom: 20px;
        }
        #logo img {
            max-width: 100px;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }
        .btn-container {
            text-align: center;
        }
        .btn-container button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="logo">
                <img src="path-to-your-logo.png" alt="Elite Hangers Logo" />
            </div>
            <div class="input-group">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtSurname">Surname:</label>
                <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtPlaneNumber">Plane:</label>
                <asp:TextBox ID="txtPlaneNumber" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="btn-container">
                <asp:Button ID="btnAddCustomer" runat="server" Text="Sign Up" CssClass="btn btn-primary" OnClick="btnAddCustomer_Click" />
            </div>
        </div>
    </form>
</body>
</html>
