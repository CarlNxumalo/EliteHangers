<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard2.aspx.cs" Inherits="EliteHangers.dashboard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCity"  runat="server" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <asp:DropDownList ID="ddlHangar" runat="server" OnSelectedIndexChanged="ddlHangar_SelectedIndexChanged"></asp:DropDownList>
            <asp:Calendar ID="CalendarStart" runat="server"></asp:Calendar>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="lblStartDate" runat="server" Text="Start Date: "></asp:Label>

            <br />
            <asp:Label ID="lblEndDate" runat="server" Text="End Date: "></asp:Label>

            <br />
            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>

            <br />
            <asp:Button ID="btnBook" runat="server" Text="Button"/>
        </div>
    </form>
</body>
</html>
