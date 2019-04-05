<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Recipe Name:-
        <asp:TextBox ID="TextBox1" TextMode="SingleLine" runat="server"></asp:TextBox>
        <br />
        <br />
        Token Id:-<asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine"></asp:TextBox>
        <br />
        <br />
        Category:-
        
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" >--Veg--</asp:ListItem>
            <asp:ListItem>Breakfast</asp:ListItem>
            <asp:ListItem>Lunch</asp:ListItem>
            <asp:ListItem>Dinner</asp:ListItem>
            <asp:ListItem>Snacks</asp:ListItem>
            <asp:ListItem>Beverage</asp:ListItem>
            <asp:ListItem>Dessert</asp:ListItem>
            <asp:ListItem>Baked</asp:ListItem>
            <asp:ListItem>--Non-veg---</asp:ListItem>
            <asp:ListItem>Breakfast</asp:ListItem>
            <asp:ListItem>Lunch</asp:ListItem>
            <asp:ListItem>Dinner</asp:ListItem>
            <asp:ListItem>Snacks</asp:ListItem>
        </asp:DropDownList>
        
        <br />
        <br />
        Price:-
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" min="0"></asp:TextBox>
        <br />
        <br />
        Upload images:-<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Recipe" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <div class="image">
            <div class="addimage">
                <asp:HyperLink ID="HyperLink1" runat="server" Visible="False">HyperLink</asp:HyperLink>
        </div>
            </div>
    </form>
</body>
</html>
