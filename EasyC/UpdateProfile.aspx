<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><asp:TextBox ID="searchfield" Visible="false" runat="server"></asp:TextBox>
    <asp:Button ID="Bsearch" runat="server" Visible="false" Text="Validate Yourself" OnClick="Search" />
        
        <br />
        <br />
        <br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" DataKeyNames="User_Id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
            <asp:BoundField DataField="User_Num" HeaderText="User_Num" SortExpression="User_Num" />
            <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
        </Columns>

              </asp:GridView>    

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SignUp] WHERE ([User_Email] = @User_Email)">
                <SelectParameters>
                    <asp:SessionParameter Name="User_Email" SessionField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

    <br />
     Enter Name to Update:-
        <asp:TextBox ID="Sname" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        &nbsp;
        <asp:Label ID="valid" runat="server" ForeColor="#CC0000" Text="Enter Value to Continue*" Visible="False"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="ID:-" Visible="false"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Uid" runat="server" Text="Label" Visible="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Uname" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Phone No:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="uphone_no" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Email ID:-" Visible="false"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Uemail_id" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Visible="false" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" Visible="false" />
                </td>
            </tr>
        </table>
          
        </div>
    </form>
</body>
</html>
