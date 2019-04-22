<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testShow.aspx.cs" Inherits="testShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtSearch" placeholder="Search Item" runat="server" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>        <br />
        <br />
           
        <br />
        <asp:DataList ID="DataList1" runat="server" BorderColor="White" BorderWidth="0px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="20">
                <ItemTemplate>
                    <table class="auto-style1" style="text-align: center" border="1">
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("fname") %>' Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="text-align: center"><strong>Recipe Name:</strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("RName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center"><strong>Time:</strong>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TTK") %>'></asp:Label>&nbsp;Minutes
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center"><strong>Ingredients:</strong>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ingre1") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
            </ItemTemplate>
                </asp:DataList>
        <br />

    </form>
</body>
</html>
