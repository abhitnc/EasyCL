<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addRecipe.aspx.cs" Inherits="addRecipe" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Recipe Name:-
        <asp:TextBox ID="TextBox1" TextMode="SingleLine" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="Recipe" runat="server" ControlToValidate="Textbox1" Display="Dynamic" ErrorMessage="Enter Recipe Name" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Ingridient:-
        <asp:TextBox TextMode="MultiLine" runat="server" ID="Ingre"></asp:TextBox>
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
        <asp:RequiredFieldValidator Display="Dynamic" InitialValue="--Veg--" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select the Category" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
        <br />
        <br />
        Desciption:-
        <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" min="0"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="DescVal" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" ErrorMessage="Enter Description"></asp:RequiredFieldValidator>
        <br />
        <br />
        
        Time to cook(In minutes):-
        <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Columns="10" Rows="5" min="0"></asp:TextBox>
        <asp:RequiredFieldValidator ID="TTKval" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter minutes" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Upload images:-<asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Upload the image of product" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
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
