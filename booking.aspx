<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="EliteHangers.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 395px;
        }
        .auto-style3 {
            height: 26px;
            width: 395px;
        }
        .auto-style4 {
            width: 506px;
        }
        .auto-style5 {
            height: 26px;
            width: 506px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Booking"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Select a city:"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="223px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="btnConfirm" runat="server" OnClick="Button1_Click" Text="Confirm Booking" />
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
