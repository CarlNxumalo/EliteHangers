<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clerk.aspx.cs" Inherits="EliteHangers.Clerk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <nav class="header">
            <ul class="links">
                <h1>
                    Elite Clerks
                </h1>
                <li class="li_design"><asp:HyperLink class="link" ID="hlMakeBooking" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink></li>
            </ul>
        </nav>
        <div class="hero">
            <div class="split1">
                <h1>Check In Section</h1>
                <asp:Label ID="lblCustomer" runat="server" Text="Seach for customer:"></asp:Label>
                <asp:TextBox ID="txtCustomer" runat="server" OnTextChanged="txtCustomer_TextChanged" AutoPostBack="True" ValidationGroup="checkin"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustomer" ErrorMessage="Search for customer" ValidationGroup="checkin"></asp:RequiredFieldValidator>
                
                <br />
                <asp:GridView ID="dgvBookings" runat="server"></asp:GridView>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Select booking:"></asp:Label>
                <asp:DropDownList ID="ddlBookingID" runat="server" Width="145px" OnSelectedIndexChanged="ddlBookingID_SelectedIndexChanged">
                </asp:DropDownList>
                
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <br />
                <asp:Button ID="btnCheckIn" runat="server" OnClick="btnCheckIn_Click" Text="Check In" />
                <br /> 
            </div>
            <div class="split2">
                <h1>Check out Section</h1>
                <asp:Label ID="Label2" runat="server" Text="Search for customer:"></asp:Label>
                <asp:TextBox ID="txtCustomerOut" runat="server" AutoPostBack="True" OnTextChanged="txtCustomerOut_TextChanged" ValidationGroup="checkout"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Search for customer" ControlToValidate="txtCustomerOut" ValidationGroup="checkout"></asp:RequiredFieldValidator>
       
                <asp:GridView ID="dgvOut" runat="server">
                </asp:GridView>
                 <br />
                <asp:Label ID="Label3" runat="server" Text="Select booking:"></asp:Label>
                <asp:DropDownList ID="ddlCheckout" runat="server" Width="141px" OnSelectedIndexChanged="ddlCheckout_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="lblErrorOut" runat="server"></asp:Label>
                <br />
                <asp:Button ID="btnCHeckOut" runat="server" OnClick="btnCHeckOut_Click1" Text="Button" Width="98px" />
            </div>
        </div>
        
    </form>
</body>
</html>
