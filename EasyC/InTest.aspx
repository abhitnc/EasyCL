<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InTest.aspx.cs" Inherits="InTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:CheckBoxList ID="rblCountries" OnSelectedIndexChanged="Country_Selected" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [stock]"></asp:SqlDataSource>
        


        
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" BorderColor="White" BorderWidth="0px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="20">
                <ItemTemplate>
                    <table class="auto-style1" border="1">
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("fname") %>' Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Name:-<asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Category:-
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Price:-
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="addtocart" Text="Add to Cart" />
                            </td>
                        </tr>
                    </table>
            </ItemTemplate>
                </asp:DataList>
        
    </form>
</body>
</html>
