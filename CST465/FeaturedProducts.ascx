<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeaturedProducts.ascx.cs" Inherits="CST465.FeaturedProducts" %>

<%--DB Connection--%>
<asp:SqlDataSource ID="uxFeaturedSql"
    ConnectionString="<%$ConnectionStrings:DB_CST465 %>"
    SelectCommandType="StoredProcedure"
    SelectCommand="Product_GetFeatured"
    runat="server"></asp:SqlDataSource>

<h2>Featured Products</h2>

<asp:Repeater ID="uxFeaturedRepeater" DataSourceID="uxFeaturedSql" runat="server">
    <ItemTemplate>
        <div class="product">
            <h3><%# Eval("Name") %></h3>
            <p><%# Eval("Description") %></p>
            <span class="price"><%# Eval("Price", "{0:c}") %></span>
        </div>
    </ItemTemplate>
</asp:Repeater>
