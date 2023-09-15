<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="EliteHangers.City" %>

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
            width: 567px;
        }
        .auto-style8 {
            width: 349px;
            height: 74px;
        }
        .auto-style10 {
            height: 26px;
            width: 60px;
        }
        .auto-style11 {
            width: 60px;
            height: 74px;
        }
        .auto-style12 {
            width: 60px;
        }
        .auto-style13 {
            height: 26px;
            width: 57px;
        }
        .auto-style14 {
            width: 57px;
            height: 74px;
        }
        .auto-style15 {
            width: 57px;
        }
        .auto-style16 {
            width: 567px;
            height: 74px;
        }
        .auto-style17 {
            width: 567px;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            height: 26px;
            width: 2252px;
        }
        .auto-style20 {
            width: 2252px;
            height: 74px;
        }
        .auto-style21 {
            width: 2252px;
        }
        .auto-style22 {
            margin-right: 0px;
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
        <table class="auto-style18">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style10"></td>
                <td class="auto-style5"></td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel1" runat="server" GroupingText="INSERT" Width="509px">
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" ValidationGroup="InsertGroup"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Enter city name" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" Width="119px" ValidationGroup="InsertGroup" />
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style8">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel2" runat="server" GroupingText="DELETE" Width="492px">
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="City ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlDel" runat="server" Width="142px">
                        </asp:DropDownList>
&nbsp;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="134px" ValidationGroup="Delete" />
                        <asp:Label ID="lblDelete" runat="server"></asp:Label>
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style20">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel3" runat="server" GroupingText="UPDATE" CssClass="auto-style22" Width="518px">
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="City ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlUp" runat="server" Width="164px">
                        </asp:DropDownList>
                        &nbsp;&nbsp; &nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNameUp" runat="server" ValidationGroup="Update"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNameUp" ErrorMessage="Enter correct name" ValidationGroup="Update"></asp:RequiredFieldValidator>
&nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnDelete0_Click" Text="Update" Width="134px" ValidationGroup="Update" />
                        <asp:Label ID="lblUpdate" runat="server"></asp:Label>
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
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
