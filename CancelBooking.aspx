<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelBooking.aspx.cs" Inherits="EliteHangers.CancelBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet" />
</head>
<body>
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
    <form id="form1" runat="server">
        <h1>Cancel your bookings</h1>
        <div>
            <asp:GridView ID="dgvBookings" runat="server" Height="160px" Width="407px"></asp:GridView>
        </div>
        
        <asp:Label ID="Label1" runat="server" Text="Select booking:"></asp:Label>
        <asp:DropDownList ID="ddlBookingID" runat="server" OnSelectedIndexChanged="ddlBookingID_SelectedIndexChanged" Height="34px" Width="145px"></asp:DropDownList>
        
        <br />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Booking" Height="34px" OnClick="btnCancel_Click" Width="143px" />
        <br />
        <asp:Label ID="lblError" runat="server"></asp:Label>
       
    </form>
</body>
</html>
