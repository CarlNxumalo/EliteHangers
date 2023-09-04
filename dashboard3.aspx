<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard3.aspx.cs" Inherits="EliteHangers.dashboard3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 508px;
        }
    </style>
    <link href="nav.css" rel="stylesheet" />
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
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="116px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Calendar ID="CalendarStart" runat="server" OnDayRender="CalendarStart_DayRender" OnSelectionChanged="CalendarStart_SelectionChanged" ValidateRequestMode="Enabled"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Calendar ID="CalendarEnd" runat="server" OnDayRender="CalendarEnd_DayRender" OnSelectionChanged="CalendarEnd_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="label1" runat="server" Text="Start Date:"></asp:Label>
                    <asp:Label ID="lblStartDate" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="label2" runat="server" Text="Start End:"></asp:Label>
                    <asp:Label ID="lblEndDate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button ID="btnBook" runat="server" Height="41px" OnClick="btnBook_Click" Text="Book" Width="102px" />
            <br />
            <br />
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
