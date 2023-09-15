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
            background-color: #0000ff; /* Blue color */
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
            <h1>
            Sign Up Page
        </h1>
            <div id="logo">
                <asp:Image ID="Image1" ImageUrl="~/WhatsApp Image 2023-09-04 at 15.22.26.jpeg" runat="server" Width="150px"/>
            </div>
            <div class="input-group">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName1" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
                <label for="txtSurname">Surname:</label>
                <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSurname" ErrorMessage="Enter surname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
            <div class="input-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
                <label for="txtPlaneNumber">Plane:</label>
                <asp:TextBox ID="txtPlaneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPlaneNumber" ErrorMessage="Enter plane number" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="btn-container">
                <asp:Button ID="btnAddCustomer" runat="server" Text="Sign Up" CssClass="btn btn-primary" OnClick="btnAddCustomer_Click" />
               
            </div>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>
