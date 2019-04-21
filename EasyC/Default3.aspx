<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" DataKeyNames="User_Id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
            <asp:BoundField DataField="User_Num" HeaderText="User_Num" SortExpression="User_Num" />
            <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
            <asp:BoundField DataField="User_Pass" HeaderText="User_Pass" SortExpression="User_Pass" />
        </Columns>

              </asp:GridView>    

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SignUp] WHERE ([User_Email] = @User_Email)">
                <SelectParameters>
                    <asp:SessionParameter Name="User_Email" SessionField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
