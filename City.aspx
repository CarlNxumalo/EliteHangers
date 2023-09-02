<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="EliteHangers.City" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 432px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 349px;
        }
        .auto-style7 {
            width: 349px;
        }
        .auto-style8 {
            width: 349px;
            height: 74px;
        }
        .auto-style10 {
            height: 26px;
            width: 135px;
        }
        .auto-style11 {
            width: 135px;
            height: 74px;
        }
        .auto-style12 {
            width: 135px;
        }
        .auto-style13 {
            height: 26px;
            width: 152px;
        }
        .auto-style14 {
            width: 152px;
            height: 74px;
        }
        .auto-style15 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="City"></asp:Label>
            </strong>
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
                    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style4" Height="358px" Width="477px">
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
                <td class="auto-style6"></td>
                <td class="auto-style10"></td>
                <td class="auto-style5"></td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel1" runat="server" GroupingText="INSERT">
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" Width="119px" />
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style8">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel2" runat="server" GroupingText="DELETE">
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="City ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="134px" />
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style8">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel3" runat="server" GroupingText="UPDATE">
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="City ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCityUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNameUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnDelete0_Click" Text="Update" Width="134px" />
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
