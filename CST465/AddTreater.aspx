<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTreater.aspx.cs" Inherits="CST465.AddTreater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="dbCandyTable" 
                            ConnectionString="<%$ConnectionStrings:DB_CST465 %>" 
                            SelectCommandType="Text" 
                            SelectCommand="SELECT * FROM Candy" 
                            runat="server" /> 

        <asp:SqlDataSource ID="dbCostumeTable"
                            ConnectionString="<%$ConnectionStrings:DB_CST465 %>"
                            SelectCommandType="Text"
                            SelectCommand="SELECT * FROM Costumes"
                            runat="server" />

        <asp:SqlDataSource ID="dbTreaterAdd"
                            ConnectionString="<%$ConnectionStrings:DB_CST465 %>"
                            InsertCommandType="Text"
                            InsertCommand="INSERT INTO Treaters(Name, FavoriteCandyID, CostumeID) VALUES(@Name, @FavoriteCandyID, @CostumeID)"
                            runat="server" />

        <asp:FormView ID="uxTreaterAdd" DefaultMode="Insert" DataSourceID="dbTreaterAdd" runat="server">
            <InsertItemTemplate>
                <asp:Label ID="lblInsertName" AssociatedControlID="uxInsertName" runat="server">Name: </asp:Label>
                <asp:TextBox ID="uxInsertName" Text='<%#Bind("Name") %>' runat="server" />

                <br />

                <asp:Label ID="lblSelectCandy" AssociatedControlID="uxSelectCandy" runat="server">Favorite Candy: </asp:Label>
                <asp:DropDownList ID="uxSelectCandy" DataSourceID="dbCandyTable" DataTextField="ProductName" DataValueField="Id" SelectedValue='<%#Bind("FavoriteCandyID") %>' runat="server">

                </asp:DropDownList>

                <br />

                <asp:Label ID="lblSelectCostume" AssociatedControlID="uxSelectCostume" runat="server">Costume: </asp:Label>
                <asp:DropDownList ID="uxSelectCostume" DataSourceID="dbCostumeTable" DataTextField="Costume" DataValueField="Id" SelectedValue='<%#Bind("CostumeID") %>' runat="server">

                </asp:DropDownList>

                <asp:Button ID="uxInsertButton" Text="Add Treater" CommandName="Insert" runat="server" />

            </InsertItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
