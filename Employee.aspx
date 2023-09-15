<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EliteHangers.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="nav.css" rel="stylesheet" />
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
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 364px;
        }
        .auto-style8 {
            width: 404px;
        }
        .auto-style10 {
            width: 114px;
        }
        .auto-style11 {
            margin-left: 0px;
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
                <td colspan="3">&nbsp;</td>
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
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5" colspan="5"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Panel ID="Panel1" runat="server" GroupingText="INSERT">
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" ValidationGroup="insert"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter name" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Surname:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSurname" runat="server" ValidationGroup="insert"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Enter surname" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="insert"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="insert"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter email" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="insert"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter password" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label6" runat="server" Text="Role:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlInsert" runat="server" Height="25px" Width="164px">
                            <asp:ListItem Value="0">Clerk</asp:ListItem>
                            <asp:ListItem Value="1">Manager</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" Width="139px" ValidationGroup="insert" />
                        <br />
                        <asp:Label ID="lblErrorInsert" runat="server"></asp:Label>
                        <br />
                    </asp:Panel>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Panel ID="Panel2" runat="server" GroupingText="UPDATE">
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Employee ID:"></asp:Label>
                        <asp:DropDownList ID="ddlUpdate" runat="server" OnSelectedIndexChanged="ddlUpdate_SelectedIndexChanged">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />&nbsp;<asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNameUp" runat="server" ValidationGroup="up"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNameUp" ErrorMessage="Enter valid name" ForeColor="Red" ValidationGroup="up"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label8" runat="server" Text="Surname:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="txtSurnameUp" runat="server" ValidationGroup="up"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSurnameUp" ErrorMessage="Enter valid surname" ForeColor="Red" ValidationGroup="up"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmailUp" runat="server" ValidationGroup="up"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailUp" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="up"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter email" ControlToValidate="txtEmailUp" ForeColor="Red" ValidationGroup="up"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPasswordUp" runat="server" ValidationGroup="up"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPasswordUp" ErrorMessage="Enter password" ForeColor="Red" ValidationGroup="up"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;<asp:Label ID="Label11" runat="server" Text="Role:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <br />
                        <asp:DropDownList ID="ddlRoleUpdate" runat="server" Width="120px">
                            <asp:ListItem Value="0">Clerk</asp:ListItem>
                            <asp:ListItem Value="1">Manager</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="139px" ValidationGroup="up" />
                        <br />
                        <asp:Label ID="lblUdateError" runat="server"></asp:Label>
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
                        <asp:DropDownList ID="ddlDelete" runat="server" Width="138px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="139px" />
                        <br />
                        <asp:Label ID="lblDeleteError" runat="server"></asp:Label>
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
