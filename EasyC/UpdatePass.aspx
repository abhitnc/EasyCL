<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePass.aspx.cs" Inherits="UpdatePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>n
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="a1" runat="server" Font-Bold="true" Text="Name" ForeColor="Black"></asp:Label>
    <asp:Textbox CssClass="form-control" Width="200px" ID="name" runat="server" Enabled="false"></asp:Textbox>

               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:Textbox CssClass="form-control" Width="200px" ID="Textbox1" runat="server" Visible="False"></asp:Textbox>

               <br />
        <asp:Label ID="Label2" runat="server" Text="Email Id" Font-Bold="true" ForeColor="Black"></asp:Label>
        
        <asp:Textbox ID="email" CssClass="form-control" Width="200px" TextMode="Email"  runat="server" Enabled="false"></asp:Textbox>
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="172px"></asp:TextBox>
               <br />
        <asp:Label ID="Label3" Text="Phone no" runat="server" Font-Bold="true" ForeColor="Black"></asp:Label>

    <asp:Textbox ID="phone" Width="200px" runat="server" CssClass="form-control" TextMode="Number" Enabled="false"></asp:Textbox>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
        <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="190px"></asp:TextBox>
                <br />
                 <asp:Button ID="update" CssClass="btn btn-primary" runat="server" OnClick="update_Click" Text="update" />

                 <asp:Button ID="done" CssClass="btn btn-primary" runat="server" Text="Done" OnClick="done_Click" Visible="false" />
                <br /><br /><br /><br />
      
    </form>
</body>
</html>
