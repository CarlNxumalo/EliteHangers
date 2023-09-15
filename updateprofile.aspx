<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateprofile.aspx.cs" Inherits="EliteHangers.updateprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 330px;
        }
        .auto-style2 {
            width: 126px;
        }
        .auto-style3 {
            width: 215px;
            height: 41px;
        }
        .auto-style4 {
            height: 41px;
        }
        .auto-style5 {
            width: 100%;
            height: 109px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="header">
            <ul class="links">
                <h1>
                    Elite Hangars
                </h1>
                <li class="li_design"><asp:HyperLink class="link" ID="hlMakeBooking" runat="server" NavigateUrl="~/dashboard3.aspx">Make Booking</asp:HyperLink></li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlCancelBooking" runat="server" NavigateUrl="~/CancelBooking.aspx">Cancel Booking</asp:HyperLink></li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlUpdateProfile" runat="server" NavigateUrl="~/updateprofile.aspx">Profile</asp:HyperLink></li>
            </ul>
        </nav>
        <div>
            <h1>Update Profile</h1>
        </div>
        <div>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Surname: "></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Enter your surname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Email: "></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter the correct email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Password: "></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your password" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="Plane: "></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtPlaneNumber" runat="server"></asp:TextBox>
        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the name of the plane" ForeColor="Red" ControlToValidate="txtPlaneNumber"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style3">
        <asp:Button ID="btnUpdateInfo" runat="server" Text="Update Info" Height="46px" Width="118px" OnClick="btnAddCustomer_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
        <div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
