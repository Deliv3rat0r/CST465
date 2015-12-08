<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CST465.Products" %>

<%@ Register Src="~/FeaturedProducts.ascx" TagPrefix="UCP" TagName="FeaturedProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Products</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Products</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">

    <asp:SqlDataSource ID="uxAllProductsSql"
        ConnectionString="<%$ConnectionStrings:DB_CST465 %>"
        SelectCommandType="StoredProcedure"
        SelectCommand="Product_GetList"
        runat="server"></asp:SqlDataSource>

    <UCP:FeaturedProducts ID="uxFeaturedUserControl" runat="server" />

    <h2>All Products</h2>

    <asp:Repeater ID="uxFeaturedRepeater" DataSourceID="uxAllProductsSql" runat="server">
        <ItemTemplate>
            <div class="product">
                <h3><%# Eval("Name") %></h3>
                <p><%# Eval("Description") %></p>
                <span class="price"><%# Eval("Price", "{0:c}") %></span>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

