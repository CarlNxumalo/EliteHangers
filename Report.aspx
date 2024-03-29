﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="EliteHangers.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            width: 326px;
        }
        .auto-style4 {
            width: 301px;
        }
        .auto-style5 {
            width: 379px;
        }
    </style>
</head>
<body>
     <nav class="header">
        <ul class="links">
                <h1>
                    Elite Hangars
                </h1>
                <li class="li_design"><asp:HyperLink class="link" ID="hlMakeBooking" runat="server" NavigateUrl="~/Report.aspx">Report</asp:HyperLink></li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlCancelBooking" runat="server" NavigateUrl="~/City.aspx">Maintain City</asp:HyperLink></li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlUpdateProfile" runat="server" NavigateUrl="~/Hanger.aspx">Maintain Hangar</asp:HyperLink></li>
                <li class="li_design"><asp:HyperLink class="link" ID="hlEmpoyee" runat="server" NavigateUrl="~/Employee.aspx">Maintain Employee</asp:HyperLink></li>
            </ul>
        </nav>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Report"></asp:Label>
            </h1>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Height="361px" Width="569px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Top five highest customer"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnGroup" runat="server" Text="Top 5" Width="133px" OnClick="btnGroup_Click" />
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Number of bookings per month"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnTotal" runat="server" Text="Bookings" Width="133px" OnClick="btnTotal_Click" />
                    <br />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Revenue received per month"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnAverage" runat="server" Text="Revenue" Width="133px" OnClick="btnAverage_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
