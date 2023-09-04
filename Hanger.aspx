<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hanger.aspx.cs" Inherits="EliteHangers.Hanger" %>

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
            width: 384px;
        }
        .auto-style4 {
            margin-right: 4px;
        }
        .auto-style8 {
            width: 842px;
        }
        .auto-style9 {
            width: 169%;
        }
        .auto-style11 {
            width: 16px;
        }
        .auto-style13 {
            width: 384px;
            height: 39px;
        }
        .auto-style14 {
            width: 842px;
            height: 39px;
        }
        .auto-style15 {
            height: 39px;
        }
        .auto-style17 {
            width: 1125px;
        }
        .auto-style18 {
            height: 26px;
            width: 48px;
        }
        .auto-style20 {
            width: 100%;
        }
        .auto-style25 {
            width: 48px;
        }
        .auto-style26 {
            width: 100%;
            height: 206px;
        }
        .auto-style27 {
            width: 1125px;
            height: 40px;
        }
        .auto-style28 {
            width: 16px;
            height: 40px;
        }
        .auto-style29 {
            width: 1053px;
            height: 39px;
        }
        .auto-style30 {
            height: 40px;
        }
        .auto-style31 {
            width: 1053px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Hangar"></asp:Label>
            </strong>
        </div>
        <p>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Admin.aspx">Home</asp:HyperLink>
                        </strong></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" Height="385px" Width="594px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <table class="auto-style26">
            <tr>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" GroupingText="INSERT" Width="551px">
                        <br />
                        <br />
                        &nbsp;&nbsp;<asp:Label ID="lblCity_id" runat="server" Text="City Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlCityName" runat="server" Height="34px" OnSelectedIndexChanged="ddlCityName_SelectedIndexChanged" Width="197px">
                        </asp:DropDownList>
                        &nbsp;
                        <asp:Label ID="lblErrorcity" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rqdFeildValidName" runat="server" ControlToValidate="txtName" ErrorMessage="Enter the correct name"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="rqdFeildValidPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price must be between 950 and 10000 " MaximumValue="10000" MinimumValue="950" Type="Currency"></asp:RangeValidator>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="130px" OnClick="btnInsert_Click" />
                    </asp:Panel>
                </td>
            </tr>
            </table>
        <table class="auto-style20">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
        <p>
        </p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style17">
                    <asp:Panel ID="Panel3" runat="server" GroupingText="UPDATE" Height="283px" Width="510px">
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Select hanger:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlUpdateHangername" runat="server" Height="23px" Width="136px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="City name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlUpdateCityName" runat="server" Height="19px" Width="152px">
                        </asp:DropDownList>
                        &nbsp; &nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="txtNameUp" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqdFeildValidNameup" runat="server" ControlToValidate="txtNameUp" ErrorMessage="Invalid name"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Price:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPriceUp" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="rngValidPriceUp" runat="server" ControlToValidate="txtPriceUp" ErrorMessage="Enter monetary value" MaximumValue="20000" MinimumValue="0" Type="Currency"></asp:RangeValidator>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="130px" OnClick="btnUpdate_Click" />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style29">
                    <asp:Panel ID="Panel2" runat="server" GroupingText="DELETE" Width="363px">
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Hanger ID:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtHanger" runat="server" OnTextChanged="txtCity0_TextChanged"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="130px" OnClick="btnDelete_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style30"></td>
                <td class="auto-style31"></td>
                <td class="auto-style30"></td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
