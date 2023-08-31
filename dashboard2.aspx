<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard2.aspx.cs" Inherits="EliteHangers.dashboard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCity" runat="server" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <asp:DropDownList ID="ddlHangar" runat="server"></asp:DropDownList>
            <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
            <asp:Button ID="btnBook" runat="server" Text="Button"/>
            <br />

            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
