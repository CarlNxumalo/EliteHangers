<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelBooking.aspx.cs" Inherits="EliteHangers.CancelBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" Height="160px" Width="407px"></asp:GridView>
        </div>
        
        <asp:Label ID="Label1" runat="server" Text="Select booking:"></asp:Label>
        <asp:DropDownList ID="ddlBookingID" runat="server" OnSelectedIndexChanged="ddlBookingID_SelectedIndexChanged" Height="34px" Width="145px"></asp:DropDownList>
        
        <br />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Booking" Height="34px" OnClick="btnCancel_Click" Width="143px" />
        <br />
        <asp:Label ID="lblError" runat="server" Text="lblError"></asp:Label>
       
    </form>
</body>
</html>
