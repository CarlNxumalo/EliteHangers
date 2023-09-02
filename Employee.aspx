<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EliteHangers.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 231px;
        }
        .auto-style4 {
            height: 26px;
            width: 169px;
        }
        .auto-style5 {
            height: 26px;
            width: 364px;
        }
        .auto-style6 {
            width: 364px;
        }
        .auto-style7 {
            height: 26px;
            width: 404px;
        }
        .auto-style8 {
            width: 404px;
        }
        .auto-style9 {
            height: 26px;
            width: 114px;
        }
        .auto-style10 {
            width: 114px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            height: 26px;
            width: 187px;
        }
        .auto-style13 {
            width: 187px;
        }
        .auto-style14 {
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Employee"></asp:Label>
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
                    <asp:GridView ID="GridView1" runat="server" Height="264px" Width="854px">
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
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7"></td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Panel ID="Panel1" runat="server" GroupingText="INSERT">
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Surname:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label6" runat="server" Text="Role:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" Width="139px" />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Panel ID="Panel2" runat="server" GroupingText="UPDATE">
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Employee ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmployeeUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNameUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label8" runat="server" Text="Surname:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="txtSurnameUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmailUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPasswordUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label11" runat="server" Text="Role:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="txtRoleUp" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="139px" />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11" GroupingText="DELETE" Height="414px" Width="387px">
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label12" runat="server" Text="Employee ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="139px" />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
