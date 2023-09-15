<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="EliteHangers.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet"/>
</head>
<body>
    <nav class="header">
            <ul class="links">
                <h1>
                    Elite Hangars
                </h1>
                <li class="li_design"><asp:HyperLink class="link" ID="hlMakeBooking" runat="server" NavigateUrl="~/dashboard3.aspx">Make Booking</asp:HyperLink></li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlCancelBooking" runat="server" NavigateUrl="~/CancelBooking.aspx">Cancel Booking</asp:HyperLink>
                    
                </li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlUpdateProfile" runat="server" NavigateUrl="~/updateprofile.aspx">Profile</asp:HyperLink></li>
            </ul>
        </nav>
    <form id="form1" runat="server">
    
         <div class="header">
            <div class="Transaction">
                <h1 style="font-style: italic;">
                    Successfully booked
                </h1>
                <div class="item">
                
                    <p class="detail">
                        City Name:
                    </p>
                    <p class="value">
                        <asp:Label ID="lblCityName" runat="server"></asp:Label>
                    </p>
                </div>
                <div class="item">
                    <p class="detail">
                        Hangar Name:
                    </p>
                    <p class="value">
                        <asp:Label ID="lblHangarName" runat="server" Text=""></asp:Label>
                    </p>
                </div>
                <div class="item">
                    <p class="detail">
                        Start Date:
                    </p>
                    <p class="value">
                         <asp:Label ID="lblStartDate" runat="server"></asp:Label>
                    </p>
                </div>
                <div class="item">
                    <p class="detail">
                        End Date:
                    </p>
                    <p class="value">
                         <asp:Label ID="lblEndDate" runat="server"></asp:Label>
                    </p>
                </div>
                
                <div class="item">
                    <p class="detail">
                        Total Days:
                    </p>
                    <p class="value">
                        <asp:Label ID="lblDays" runat="server"></asp:Label>
                    </p>
                </div>
                 <asp:Button ID="Button1" class="button"  runat="server" Text="Okay" OnClick="Button1_Click" />
            </div>
    </div>
    </form>
</body>
</html>
