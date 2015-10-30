<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTreaters.aspx.cs" Inherits="CST465.ViewTreaters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="dbViewTreaters" 
                            ConnectionString="<%$ConnectionStrings:DB_CST465 %>" 
                            SelectCommandType="Text" 
                            SelectCommand="SELECT Name, ProductName, Costume FROM Treaters JOIN Candy ON Treaters.FavoriteCandyID=Candy.Id JOIN Costumes ON Treaters.CostumeID=Costumes.ID" 
                            runat="server" />

        <asp:Repeater ID="uxViewTreaters" DataSourceID="dbViewTreaters" runat="server">
            <ItemTemplate>
                Name: <%# Eval("Name") %> 
                <br />
                Favorite Candy: <%# Eval("ProductName") %> 
                <br />
                Costume: <%# Eval("Costume") %> 
                <br />
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
